package com.project.dao;

import java.sql.SQLException;
import java.util.List;

import com.project.vo.Parking;

public interface CarParkingDAO {

	
	/**
	 * 주차장을 전체 출력한다. 
	 * @return 주차장 정보 전체 출력
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getAllparking() throws SQLException;
	/**
	 * 주소로 검색한 주차장을 출력한다. 
	 * @param adress 주차장 주소
	 * @return 주차장 정보
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getDetailParkingByAdress(String adress) throws SQLException;
	
	/**
	 * 이름으로 검색한 주차장을 출력한다 
	 * @param name 주차장 이름
	 * @return 주차장 정보
 	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getDetailParkingByName(String name) throws SQLException;
	/**
	 * 거주자 우선 주차장과 시간제 주차장을 출력한다. 
	 * @param division 주차장의 종류
	 * @return 주차장 정보
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getDetailParkingBydivision(String division) throws SQLException;
}
