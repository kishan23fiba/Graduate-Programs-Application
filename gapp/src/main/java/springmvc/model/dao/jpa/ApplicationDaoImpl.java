package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Application;
import springmvc.model.Department;
import springmvc.model.dao.ApplicationDao;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	/*@Override
	public List<Application> getStudApplications(Integer id)
	{	
		return entityManager.createQuery("from Application where student="+id).getResultList();
	}*/
	
	@Override
	public Application getStudentApplication(Integer sid)
	{
		return (Application) entityManager.createQuery("from Application where student="+sid).getSingleResult();
	}
	
	@Override
	public Application getApplication(Integer id)
	{
		return entityManager.find(Application.class, id);
	}
	
	@Override
	@Transactional
    public Application saveApplication(Application application)
    {
        return entityManager.merge(application);
    }
	
	@Override
	public Integer getLastID()
	{
		return (Integer) entityManager.createQuery("select MAX(id) from Application").getSingleResult();
	}
}
