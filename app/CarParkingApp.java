package parkingProject.app;

import static utils.KeyboardUtil.readInt;
import static utils.KeyboardUtil.readString;

import java.sql.SQLException;
import java.util.List;

import parkingProject.dao.CarParkingDAO;
import parkingProject.exception.ParkingException;
import parkingProject.service.CarParkingService;
import parkingProject.service.CarParkingServiceImpl;
import parkingProject.vo.Parking;
import parkingProject.vo.User;

public class CarParkingApp {

	private static CarParkingService carparking = new CarParkingServiceImpl();	

	public void menuNo() {
		try {
			User user = new User();
			boolean islogin = false;
		System.out.println("-----------------------------------");
		System.out.println("1. 회원가입 2.로그인 3. 구경하기 0. 종료");
		System.out.println("메뉴 선택 : ");
		int menuNo = readInt();
		System.out.println("-----------------------------------");
		
		if(menuNo == 1) {
			System.out.println("[회원가입]");
			joinMembership();
			
		} else if (menuNo == 2) {
			System.out.println("[로그인]");
			user= login();
			boolean findLogin = carparking.isLoging(user);
			islogin = findLogin;
			while(islogin) {
			System.out.println("----------------------");
			System.out.print("1.로그인 주소로 검색하기 " + "\t");
			System.out.print("2.다른 지역구 검색하기 " + "\t");
			System.out.print("3.정보 수정하기  " + "\t");
			System.out.print("4. 탈퇴하기 " + "\t");
			System.out.println("0. 로그아웃 ");
			System.out.println("----------------------");
			int inMenuNo = readInt();
			if(inMenuNo == 1) {
				System.out.println("[로그인 주소로 검색하기]");
				loginAdress(user);
				
			} else if(inMenuNo == 2) {
				System.out.println("[다른 지역구 검색하기]");
				searchAdress();
				
			} else if(inMenuNo == 3) {
				System.out.println("[주소 수정하기]");
				correctUser(user);
				
			} else if(inMenuNo == 4) {
				System.out.println("[탈퇴하기]");
				removeUser(user);
				islogin = false;
				
			} else if(inMenuNo == 0) {
				System.out.println("[로그아웃]");
				islogin = false;
				
				System.out.println("### 로그아웃이 완료되었습니다.");
			}
			}
		} else if (menuNo == 3) {
			System.out.println("[구경하기]");
			view();
		}
		else if (menuNo == 0) {
			System.out.println("[시스템 종료]");
			System.exit(0);
		} 
		} catch (SQLException ex) {
			System.out.println("###[오류] 시스템상의 오류입니다.");
			ex.printStackTrace();
		} catch (ParkingException ex) {
			System.out.println("###[오류] 입력 오류입니다.");
			ex.printStackTrace();
		}
		menuNo();
	}


	private static void view() throws SQLException {
		List<Parking> parks = carparking.getAllParking();
		replayListParking(parks);
		System.out.println();
	}


	private static void replayListParking(List<Parking> parks) {
		for(Parking park : parks) {
			System.out.print("주차장 번호 : " + park.getNo() + "\t");
			System.out.print("주차장 이름 : " + park.getName() + "\t");
			System.out.print("주차장 주소 : " + park.getAdress() + "\t");
			System.out.print("주차장 종류 : " + park.getKinds() + "\t");
			System.out.print("주차장 구별 : " + park.getDivision() + "\t");
			System.out.println("주차장 전화번호 : " + park.getTelNumber());
			System.out.print("주차장 유,무료 : " + park.getPay() + "\t");
			System.out.print("주차장 저녁 개방여부 : " + park.getNightOpen() + "\t");
			System.out.print("주차장 토요일 비용 : " + park.getSatPay() + "\t");
			System.out.println("주차장 일요일 비용 : " + park.getSunPay());
			System.out.print("주차장 기본 금액 : 분 당 " + park.getBasicPrice()+ "\t");
			System.out.print("주차장 기본 시간(분) : " + park.getBasicTime() + "분"+ "\t");
			System.out.print("주차장 추가 금액 : 분 당 " + park.getAddPrice()+ "\t");
			System.out.println("주차장 추가 시간(분) : " + park.getAddTime() + "분");
			System.out.println("----------------------------------------------------------");
		}
	}
	private static void joinMembership() throws SQLException{
		System.out.print("아이디 : ");
		String id = readString();
		
		System.out.print("비밀번호 : ");
		String password = readString();

		System.out.print("이름 : ");
		String name = readString();
		
		System.out.println("서울시 **구 **동");
		System.out.print("조회할 주소 : ");
		String adress = readString();
		
		System.out.print("이메일 주소 : ");
		String emailAdress = readString();

		User user = new User();
		user.setId(id);
		user.setPassword(password);
		user.setName(name);
		user.setAdress(adress);
		user.setEmailAdress(emailAdress);
		carparking.userAdd(user);
		System.out.println("회원가입이 완료되었습니다.");
		
	
	}

	private static User login() throws SQLException {
		User user = null;
		System.out.println("아이디 : ");
		String id = readString();
		System.out.println("비밀번호 : ");
		String password = readString();
		user = carparking.selectUser(id, password);		
		return user;
		
	}

	private static void loginAdress(User user) throws SQLException {
		User findUser = new User();
		
		System.out.println("[회원가입시 작성된 주소로 검색됩니다.]");
		findUser = user;
		List<Parking> parks = carparking.getUserAdressPaking(findUser);
		replayListParking(parks);
		System.out.println("조회가 완료되었습니다.");		
	}
	private static void searchAdress() throws SQLException{
		System.out.println("서울시 **구 **동");
		System.out.print("주소 검색 : ");
		String adress = readString();
		List<Parking> parks = carparking.getSearchParking(adress);
		replayListParking(parks);
		System.out.println("조회가 완료되었습니다. ");
	}
	private static void removeUser(User user) throws SQLException {
		User findUser = new User();
		findUser.setId(user.getId());
		findUser.setPassword(user.getPassword());
		System.out.println("[탈퇴하기]");
		carparking.removeUser(findUser);
		System.out.println("[탈퇴가 완료되었습니다.]");
	}
	private static void correctUser(User user) throws SQLException {
		System.out.println("[정보수정하기]");
		System.out.println("서울시 **구 **동");
		System.out.print("변경할 주소를 입력하세요 : ");
		String newAdress = readString();
		user.setAdress(newAdress);
		carparking.reviseUser(user);
		System.out.println("수정이 완료되었습니다. ");
	}
	
	public static void main(String[] args) {
		new CarParkingApp().menuNo();
	}
	
	
}
