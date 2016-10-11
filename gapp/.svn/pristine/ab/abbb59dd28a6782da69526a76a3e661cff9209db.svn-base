package springmvc.model.dao.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.AcademicRecords;
import springmvc.model.dao.AcademicRecordsDao;

@Repository
public class AcademicRecordsDaoImpl implements AcademicRecordsDao {

	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public AcademicRecords getAcademicRecord(Integer sid)
	{
		return (AcademicRecords) entityManager.createQuery("from AcademicRecords where student="+sid).getSingleResult();
	}
	
	@Override
	@Transactional
	public AcademicRecords saveAcademicRecord(AcademicRecords academicRecords)
	{
		return entityManager.merge(academicRecords);
	}
}
