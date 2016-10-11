package springmvc.model;
import java.util.Date;
import java.util.List;

import springmvc.model.Student;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import springmvc.model.Department;
import springmvc.model.Programs;
import springmvc.model.Status;

@Entity
@Table(name="application")
public class Application {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@ManyToOne
	private Student student;
	
	private String term;
	
	@ManyToOne
	private Programs prog;
	
	private String status;
	private Date dateSubmitted;
	
	@ManyToOne
	private Department department;
		
	
	public Application() {
		super();
	}
	
	
	public Application(Integer id, Student student, String term, Programs prog,
			String status, Department department, Date dateSubmitted) {
		super();
		this.id = id;
		this.student = student;
		this.term = term;
		this.prog = prog;
		this.status = status;
		this.department=department;
		this.dateSubmitted=dateSubmitted;
	}


	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	
	public Programs getProg() {
		return prog;
	}
	public void setProg(Programs prog) {
		this.prog = prog;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Department getDepartment() {
		return department;
	}


	public void setDepartment(Department department) {
		this.department = department;
	}


	public Date getDateSubmitted() {
		return dateSubmitted;
	}


	public void setDateSubmitted(Date dateSubmitted) {
		this.dateSubmitted = dateSubmitted;
	}
	
}
