package com.project.service;

import java.sql.SQLException;

import java.util.List;

import com.project.vo.*;

public interface CarParkingService {

	/**
	 * 첫 home화면으로 출력할 공영주차장의 정보를 전체 출력한다. 
	 * @return 공영주차장의 전체 정보
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getAllParking() throws SQLException;
	
	/**
	 * loginAdress화면으로 출력할 User Adress로 검색한 공영주차장의 정보를 출력한다. 
	 * @param user의 정보를 입력한다.
	 * @return user가 살고있는 구의 공영주차장
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getUserAdressPaking(User user) throws SQLException; 
	
	/**
	 * anotherAdress화면으로 출력할 서울시 다른 지역의 Adress로 검색한 공영주차장의 정보를 출력한다. 
	 * @param adress user가 찾고 싶은 지역의 이름
	 * @return user가 검색한 지역의 공영주차장
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	List<Parking> getSearchParking(String adress) throws SQLException;
	/**
	 * 아이디와 비밀번호를 입력하고 찾아서 User객체를 출력한다. 
	 * @param id 사용자의 아이디를 입력한다.
	 * @param password 사용자의 비밀번호를 입력한다. 
	 * @return User 객체를 출력한다. 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	User selectUser(String id, String password) throws SQLException;
	/**
	 * 회원가입을 위해 작성된 User객체를 저장한다. 
	 * @param user 회원가입을 위해 적은 user객체를 입력하고 sql에 저장한다. 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	void userAdd(User user) throws SQLException;
	/**
	 * 입력한 User객체로 수정한다. 
	 * @param user 수정할 객체
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	void reviseUser(User user) throws SQLException;
	/**
	 * 입력한 User객체로 삭제한다. 
	 * @param user 삭제할 객체
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	void removeUser(User user) throws SQLException;
	/**
	 * User객체를 받아 login 유무를 출력한다.
	 * @param user 로그인 객체
	 * @return 로그인 유무 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	boolean isLoging(User user) throws SQLException;
	
	User getLogin(User user) throws SQLException;
}
