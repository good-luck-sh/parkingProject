package parkingProject.service;

import java.sql.SQLException;
import java.util.List;

import parkingProject.dao.CarParkingDAO;
import parkingProject.dao.CarParkingJdbcDAO;
import parkingProject.dao.UserDAO;
import parkingProject.dao.UserJdbcDAO;
import parkingProject.exception.ParkingException;
import parkingProject.vo.Parking;
import parkingProject.vo.User;

public class CarParkingServiceImpl implements CarParkingService {
	
		private CarParkingDAO carparking = new CarParkingJdbcDAO();
		private UserDAO userdao = new UserJdbcDAO();
		

	@Override
	public List<Parking> getAllParking() throws SQLException {
		List<Parking> parks  = carparking.getAllparking();
		return parks;
	}

	@Override
	public List<Parking> getUserAdressPaking(User user) throws SQLException {
		List<Parking> parks = carparking.getDetailParkingByAdress(user.getAdress());
		return parks;
	}

	@Override
	public List<Parking> getSearchParking(String adress) throws SQLException {
		List<Parking> parks = carparking.getDetailParkingByAdress(adress);
		return parks;
	}

	@Override
	public User selectUser(String id, String password) throws SQLException {
		User user = null;
		user = userdao.getUserAdress(id, password);
		if(user == null) {
			throw new ParkingException("## 오류: 입력하신 정보가 없습니다.");
		}
		return user;
	}

	@Override
	public void userAdd(User user) throws SQLException {
		if(user == null) {
			throw new ParkingException("## 오류: 입력한 정보가 중복됩니다.");
		}
		userdao.insertUser(user);
	}

	@Override
	public void reviseUser(User user) throws SQLException {
		System.out.println(user.getAdress());
		userdao.updateUser(user);
		
	}

	@Override
	public void removeUser(User user) throws SQLException {
		userdao.removeUser(user.getId(), user.getPassword());
		
	}

	@Override
	public boolean isLoging(User user) throws SQLException {
		boolean isLogin = false;
		if(user != null) {
			isLogin = true;
		} 
		return isLogin;
	}

	@Override
	public User getLogin(User user) throws SQLException {
		User finduser = null;
		finduser = selectUser(user.getId(), user.getPassword());
		return finduser;
	}
}
