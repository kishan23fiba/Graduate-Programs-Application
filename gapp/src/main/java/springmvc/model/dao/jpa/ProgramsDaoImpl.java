package springmvc.model.dao.jpa;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Department;
import springmvc.model.Programs;
import springmvc.model.dao.DepartmentDao;
import springmvc.model.dao.ProgramsDao;

@Repository
public class ProgramsDaoImpl implements ProgramsDao{

	@PersistenceContext
    private EntityManager entityManager;
	
	@Override
    public List<Programs> getPrograms(Integer id)
    {
        return entityManager.createQuery( "from Programs where department ="+id).getResultList();
    }
	
	@Override
	public List<Programs> getAllPrograms()
	{
		return entityManager.createQuery("from Programs").getResultList();
	}
	
	@Override
	@Transactional
	public Programs saveProgram(Programs program)
	{
		return entityManager.merge(program);
	}
	
	@Override
	public Programs getProgram(Integer id)
	{
		return entityManager.find(Programs.class, id);
	}
	
	@Override
	@Transactional
	public void delProgram(Programs program)
	{
		entityManager.remove(program);
	}
	
}
