package parkingProject.dao;

import java.sql.SQLException;

import parkingProject.vo.User;

public interface UserDAO {

	/**
	 * User의 객체를 아이디와 패스워드를 통해 획득할 수 있다. 
	 * @param id  user의 아이디
	 * @param password user의 패스워드
	 * @return 해당하는 User 객체 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	User getUserAdress(String id, String password) throws SQLException;
	/**
	 * user의 객체를 받아서 정보를 수정하는 작업이다. 
	 * @param user 수정할 객체 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	void updateUser(User user) throws SQLException;
	/**
	 * id와 password에 해당하는 객체를 입력받아 삭제하는 작업이다. 
	 * @param id 삭제할 user의 id
	 * @param password 삭제할 user의 password
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	void removeUser(String id, String password) throws SQLException;
	
	/**
	 * User의 객체를 입력받아 데이터에 저장하는 작업이다. 
	 * @param user 저장할 객체 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	void insertUser(User user) throws SQLException;
	
	/**
	 * 중복되는 아이디를 확인하는 객체이다. 
	 * @param id 가입 아이디
	 * @return 해당하는 user객체 
	 * @throws SQLException DB Access 오류시 예외가 발생한다.
	 */
	User getAllUser(String id)  throws SQLException;
	
	
}
