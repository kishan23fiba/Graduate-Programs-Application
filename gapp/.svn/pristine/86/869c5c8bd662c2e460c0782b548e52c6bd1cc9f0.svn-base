package springmvc.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

@Entity
@Table(name="academicrecords")
public class AcademicRecords {
	@Id
	@GeneratedValue
	private Integer id;
	
	private Double gpa;
	private String transcript;
	
	@ManyToOne
	private Student student;
	
	public AcademicRecords() {
		super();
	}

	public AcademicRecords(Integer id, Double gpa, String transcript, Student student) {
		super();
		this.id = id;
		this.gpa = gpa;
		this.transcript = transcript;
		this.student=student;
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getGpa() {
		return gpa;
	}
	public void setGpa(Double gpa) {
		this.gpa = gpa;
	}
	public String getTranscript() {
		return transcript;
	}
	public void setTranscript(String transcript) {
		this.transcript = transcript;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
}
