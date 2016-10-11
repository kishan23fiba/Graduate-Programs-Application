package springmvc.model.dao.jpa;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.AdditionalInfo;
import springmvc.model.Department;
import springmvc.model.dao.AdditionalInfoDao;

@Repository
public class AdditionalInfoDaoImpl implements AdditionalInfoDao {
	
	@PersistenceContext
    private EntityManager entityManager;
	
	
	@Override
	public List<AdditionalInfo> getAdditionalInfo(Integer id)
	{
		return entityManager.createQuery("from AdditionalInfo where department="+id).getResultList();
	}
	
	@Override
	@Transactional
	public AdditionalInfo saveInfo(AdditionalInfo additionalInfo)
	{
		return entityManager.merge(additionalInfo);
	}
	
	@Override
	@Transactional
	public void delInfo(AdditionalInfo additionalinfo)
	{
		entityManager.remove(additionalinfo);
	}
	
	@Override
	public AdditionalInfo getInfo(Integer id)
	{
		return entityManager.find(AdditionalInfo.class, id);
	}
}

