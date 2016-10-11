package springmvc.model.dao;

import java.util.List;

import springmvc.model.EducationalBackground;
import springmvc.model.Programs;

public interface EducationalBackgroundDao {
	List<EducationalBackground> getEducationalBackground(Integer sid);
	EducationalBackground saveEdu(EducationalBackground e);
	void delEdu(EducationalBackground edu);
	EducationalBackground getEdu(Integer id);
}
