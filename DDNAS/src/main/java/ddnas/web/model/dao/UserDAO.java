package ddnas.web.model.dao;

import java.util.List;

import ddnas.web.model.dto.UserDTO;

/**
 * 
 * @project  : DDNAS
 * @package  : ddnas.web.model.dao
 * @filename : UserDAO.java
 * @author   : ���ּ�
 * @since    : 2016. 11. 7.
 * @version  : 1.0
 */
public interface UserDAO {

	/**
	 * 
	 * @author  : ���ּ�
	 * @method  : login
	 * @disc    : �α��� ���
	 * @date    : 2016. 11. 7.
	 * @param   : @param userDTO
	 * @param   : @return
	 */
	public String login(UserDTO userDTO);

	/**
	 * 
	 * @author  : ���ּ�
	 * @method  : selectWorkerInfo
	 * @disc    : �뵿�� ���� ��������
	 * @date    : 2016. 11. 28.
	 * @param   : @return
	 */
	public List<UserDTO> selectWorkerInfo();
}