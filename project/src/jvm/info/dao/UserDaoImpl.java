package jvm.info.dao;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import jvm.info.domain.User;
import jvm.info.jdbc.UserRowMapper;

public class UserDaoImpl implements UserDao {

	@Autowired
	DataSource dataSource;

	public void insertData(User user) {

		String sql = "INSERT INTO user "
				+ "(first_name,last_name, gender, city,email,password,mobile) VALUES (?, ?, ?,?,?,?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { user.getFirstName(), user.getLastName(),
						user.getGender(), user.getCity(),user.getEmail(),user.getPassword(),user.getMobile() });

	}

	public List<User> getUserList() {
		List userList = new ArrayList();

		String sql = "select * from user";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		userList = jdbcTemplate.query(sql, new UserRowMapper());
		return userList;
	}

	@Override
	public void deleteData(String id) {
		String sql = "delete from user where user_id=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}

	@Override
	public void updateData(User user) {

		String sql = "UPDATE user set first_name = ?,last_name = ?, gender = ?, city = ? where user_id = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] { user.getFirstName(), user.getLastName(),
						user.getGender(), user.getCity(), user.getUserId() });

	}

	@Override
	public User getUser(String id) {
		List<User> userList = new ArrayList<User>();
		String sql = "select * from user where user_id= " + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		userList = jdbcTemplate.query(sql, new UserRowMapper());
		return userList.get(0);
	}
public void userLogin(User user){
	String sql = "select * from user where email=? and password=?";
	JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

	jdbcTemplate.update(
			sql,
			new Object[] { user.getEmail(), user.getPassword()
					 });
}

}
