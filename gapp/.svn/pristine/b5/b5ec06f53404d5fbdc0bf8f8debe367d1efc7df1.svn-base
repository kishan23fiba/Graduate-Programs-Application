package springmvc.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.EducationalBackground;
import springmvc.model.dao.EducationalBackgroundDao;

@Repository
public class EducationalBackgroundDaoImpl implements EducationalBackgroundDao {
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public List<EducationalBackground> getEducationalBackground(Integer sid)
	{
		return entityManager.createQuery("from EducationalBackground where student="+sid).getResultList();
	}
	
	@Override
	@Transactional
	public EducationalBackground saveEdu(EducationalBackground e)
	{
		return entityManager.merge(e);
	}
	
	@Override
	@Transactional
	public void delEdu(EducationalBackground e)
	{
		entityManager.remove(e);
	}
	
	@Override
	public EducationalBackground getEdu(Integer id)
	{
		return entityManager.find(EducationalBackground.class, id);
	}
}
