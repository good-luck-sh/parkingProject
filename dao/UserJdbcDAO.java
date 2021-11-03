package parkingProject.dao;

import static parkingProject.util.ConnectionUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import parkingProject.vo.User;
public class UserJdbcDAO implements UserDAO{

	@Override
	public User getUserAdress(String id, String password) throws SQLException {
		User user = null;
		String sql = "select parking_cars_user_adress "
				+"from tb_parking_cars_users "
				+"where parking_cars_user_id = ? "
				+"and parking_cars_user_password = ? ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, id);
		ptmt.setString(2, password);
		ResultSet rs = ptmt.executeQuery();
		if(rs.next()) {
		user = new User();
		user.setAdress(rs.getString("parking_cars_user_adress"));
		}
		rs.close();
		ptmt.close();
		connection.close();
		return user;
	}

	@Override
	public void updateUser(User user) throws SQLException {
		
		String sql = "update tb_parking_cars_users "
				+"set "
				+"parking_cars_user_name = ?, "
				+"parking_cars_user_adress = ?, "
				+"parking_cars_user_email_adress = ? "
				+" where "
				+ " parking_cars_user_id = ? ";
			
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, user.getName());
		ptmt.setString(2, user.getAdress());
		ptmt.setString(3, user.getEmailAdress());
		ptmt.setString(4, user.getId());

		
		ptmt.executeUpdate();
		
		ptmt.close();
		connection.close();
	}

	@Override
	public void removeUser(String id, String password) throws SQLException {
		
		String sql = "delete from tb_parking_cars_users "
				+" where parking_cars_user_id = ? "
				+ "and parking_cars_user_password = ? ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, id);
		ptmt.setString(2, password);
		
		ptmt.executeUpdate();
		
		ptmt.close();
		connection.close();
	}

	@Override
	public void insertUser(User user) throws SQLException {
		
		String sql = "insert into tb_parking_cars_users (parking_cars_user_id,parking_cars_user_password,parking_cars_user_name, parking_cars_user_adress, parking_cars_user_email_adress) "
				+"values (?, ?, ?, ?, ? ) ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		
		ptmt.setString(1, user.getId());
		ptmt.setString(2, user.getPassword());
		ptmt.setString(3, user.getName());
		ptmt.setString(4, user.getAdress());
		ptmt.setString(5, user.getEmailAdress());
		
		ptmt.executeUpdate();
		
		ptmt.close();
		connection.close();
	}

	@Override
	public User getAllUser(String id) throws SQLException {
		User user = null;
		String sql = "select parking_cars_user_id, parking_cars_user_name ,parking_cars_user_adress "
				+"from tb_parking_cars_users "
				+"where PARKING_CARS_USER_ID = ? ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, id);
		ResultSet rs = ptmt.executeQuery();
		if(rs.next()) {
			user = new User();
			user.setId(rs.getString("parking_cars_user_id"));
			user.setName(rs.getString("parking_cars_user_name"));
			user.setAdress(rs.getString("parking_cars_user_adress"));
			
		} 
		rs.close();
		ptmt.close();
		connection.close();
		return user;
	}
	
}
