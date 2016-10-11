package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Users;
import springmvc.model.dao.UsersDao;

@Repository
public class UsersDaoImpl implements UsersDao{
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<Users> getUsers()
	{
		return entityManager.createQuery("from Users").getResultList();
	}
	
	@Override
	@Transactional
	public Users saveUser(Users user)
	{
		return entityManager.merge(user);
	}
	
	@Override
	public Users getUser(Integer id)
	{
		return entityManager.find(Users.class, id);
	}
	
}
