package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Student;
import springmvc.model.Users;
import springmvc.model.dao.StudentDao;

@Repository
public class StudentDaoImpl implements StudentDao {
	
	@PersistenceContext
    private EntityManager entityManager;
	

	@Override
	public List<Student> getStudentsforApplication(Integer uid)
	{
		return entityManager.createQuery("from Student where users="+uid).getResultList();
	}
	
	@Override
	public Student getStudent(Integer id)
	{
		return entityManager.find(Student.class, id);
	}
	
	@Override
	@Transactional
	public Student saveStudent(Student student)
	{
		return entityManager.merge(student);
	}
	
	@Override
	public Integer getLastID()
	{
		return (Integer) entityManager.createQuery("select MAX(id) from Student").getSingleResult();
	}
}
