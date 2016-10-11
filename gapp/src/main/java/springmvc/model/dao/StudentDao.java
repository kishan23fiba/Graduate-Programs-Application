package springmvc.model.dao;

import java.util.List;

import springmvc.model.Student;


public interface StudentDao {
	List<Student> getStudentsforApplication(Integer uid);
	Student getStudent(Integer id);
	Student saveStudent(Student student);
	Integer getLastID();
}
