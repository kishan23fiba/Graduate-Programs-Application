package springmvc.model.dao.jpa;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import springmvc.model.Application;
import springmvc.model.Student;
import springmvc.model.dao.Student1Dao;
@Repository
public class Student1DaoImpl implements Student1Dao {
	@PersistenceContext
    private EntityManager entityManager;
	
	public List<Application> getApplications()
	{
		return entityManager.createQuery("from Application ",Application.class).getResultList();
		//return entityManager.createQuery("from Application a  join Student s ,Student s join Users u where a.student=s.id and s.users=u.id and  u.fname='Kishan'").getResultList();
	}
}

