package springmvc.model;
import javax.persistence.Entity;
import springmvc.model.Student;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;
@Entity
@Table(name="educationalbackground")
public class EducationalBackground {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@ManyToOne
	Student student;
	
	private String collegeName;
	private Integer timePeriod;
	private String degree;
	private String major;
	
	public EducationalBackground() {
		super();
	}
	public EducationalBackground(Integer id, String collegeName,
			Integer timePeriod, String degree, String major, Student student) {
		super();
		this.id = id;
		this.collegeName = collegeName;
		this.timePeriod = timePeriod;
		this.degree = degree;
		this.major = major;
		this.student=student;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public Integer getTimePeriod() {
		return timePeriod;
	}
	public void setTimePeriod(Integer timePeriod) {
		this.timePeriod = timePeriod;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}	
	
}
