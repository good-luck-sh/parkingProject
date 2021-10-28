package parkingProject.service;

import java.sql.SQLException;
import java.util.List;

import parkingProject.dao.CarParkingDAO;
import parkingProject.dao.CarParkingJdbcDAO;
import parkingProject.dao.UserDAO;
import parkingProject.dao.UserJdbcDAO;
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
		User findUser = userdao.getUserAdress(user.getId(), user.getPassword());
		List<Parking> parks = carparking.getDetailParkingByAdress(findUser.getAdress());
		return parks;
	}

	@Override
	public List<Parking> getSearchParking(String adress) throws SQLException {
		List<Parking> parks = carparking.getDetailParkingByAdress(adress);
		return parks;
	}

	@Override
	public User selectUser(String id, String password) throws SQLException {
		User user = userdao.getUserAdress(id, password);
		return user;
	}

	@Override
	public void userAdd(User user) throws SQLException {
		userdao.insertUser(user);
		
	}

	@Override
	public void reviseUser(User user) throws SQLException {
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
}
