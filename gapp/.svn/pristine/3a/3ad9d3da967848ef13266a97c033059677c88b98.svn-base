package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import springmvc.model.dao.AccountingApplicationDao;
import springmvc.model.Application;
import springmvc.model.Programs;
@Repository
public class AccountingApplicationDaoImpl implements AccountingApplicationDao{

	@PersistenceContext
    private EntityManager entityManager;
	
	@Override
	public List<Application> getApplications()
	{
		//return entityManager.createQuery("from Application a join a.prog p,p join p.department d where term='Fall 2016' and d.dname='Accounting'").getResultList();
		return entityManager.createQuery("from Application a join a.prog p where p.department=(select dno from Department where dname='Accounting') and  term='Fall 2016'").getResultList();
	}
}
