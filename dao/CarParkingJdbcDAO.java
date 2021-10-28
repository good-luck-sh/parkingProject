package parkingProject.dao;

import static parkingProject.util.ConnectionUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import parkingProject.vo.Parking;

public class CarParkingJdbcDAO implements CarParkingDAO {

	@Override
	public List<Parking> getAllparking() throws SQLException {
		List<Parking> parks = new ArrayList<>();
		String sql = "select distinct parking_no, parking_name, parking_adress, praking_kinds, praking_division, parking_tell_number, "
				+"parking_pay, parking_night_open, parking_sat_pay, parking_sun_pay, parking_basic_price, "
				+"parking_basic_time, parking_add_price, parking_add_time "
				+"from tb_parking_cars ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ResultSet rs = ptmt.executeQuery();
		repeatGetParking(parks, rs);
		
		rs.close();
		ptmt.close();
		connection.close();
		return parks;
	}

	private void repeatGetParking(List<Parking> parks, ResultSet rs) throws SQLException {
		while (rs.next()) {
			Parking park = new Parking();
			park.setNo(rs.getInt("parking_no"));
			park.setName(rs.getString("parking_name"));
			park.setAdress(rs.getString("parking_adress"));
			park.setKinds(rs.getString("praking_kinds"));
			park.setDivision(rs.getString("praking_division"));
			park.setTelNumber(rs.getString("parking_tell_number"));
			park.setPay(rs.getString("parking_pay"));
			park.setNightOpen(rs.getString("parking_night_open"));
			park.setSatPay(rs.getString("parking_sat_pay"));
			park.setSunPay(rs.getString("parking_sun_pay"));
			park.setBasicPrice(rs.getInt("parking_basic_price"));
			park.setBasicTime(rs.getInt("parking_basic_time"));
			park.setAddPrice(rs.getInt("parking_add_price"));
			park.setAddTime(rs.getInt("parking_add_time"));
			parks.add(park);

		}
		
	}

	@Override
	public List<Parking> getDetailParkingByAdress(String adress) throws SQLException {
		List<Parking> parks = new ArrayList<>();
		String sql = "select distinct parking_no, parking_name, parking_adress, praking_kinds, praking_division, parking_tell_number, "
				+"parking_pay, parking_night_open, parking_sat_pay, parking_sun_pay, parking_basic_price, "
				+"parking_basic_time, parking_add_price, parking_add_time "
				+"from tb_parking_cars "
				+ "where parking_adress like '%' || ? || '%' ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, adress);
		ResultSet rs = ptmt.executeQuery();
		repeatGetParking(parks, rs);
		rs.close();
		ptmt.close();
		connection.close();
		return parks;
	}

	@Override
	public List<Parking> getDetailParkingByName(String name) throws SQLException {
		List<Parking> parks = new ArrayList<>();
		String sql = "select distinct parking_no, parking_name, parking_adress, praking_kinds, praking_division, parking_tell_number, "
				+"parking_pay, parking_night_open, parking_sat_pay, parking_sun_pay, parking_basic_price, "
				+"parking_basic_time, parking_add_price, parking_add_time "
				+"from tb_parking_cars "
				+ "where parking_name like '%' || ? || '%' ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, name);
		ResultSet rs = ptmt.executeQuery();
		repeatGetParking(parks, rs);
		rs.close();
		ptmt.close();
		connection.close();
		return parks;
		//나중에 추가 화면시 구현할 부분 이름검색주차장
	}

	@Override
	public List<Parking> getDetailParkingBydivision(String division) throws SQLException {
		List<Parking> parks = new ArrayList<>();
		String sql = "select distinct parking_no, parking_name, parking_adress, praking_kinds, praking_division, parking_tell_number, "
				+"parking_pay, parking_night_open, parking_sat_pay, parking_sun_pay, parking_basic_price, "
				+"parking_basic_time, parking_add_price, parking_add_time "
				+"from tb_parking_cars "
				+ "where parking_division  = ? ";
		Connection connection = getConnection();
		PreparedStatement ptmt = connection.prepareStatement(sql);
		ptmt.setString(1,division);
		ResultSet rs = ptmt.executeQuery();
		repeatGetParking(parks, rs);
		rs.close();
		ptmt.close();
		connection.close();
		return parks;
		//나중에 추가 화면시 구현할 부분 유/무료검색 주차장
	}

}
