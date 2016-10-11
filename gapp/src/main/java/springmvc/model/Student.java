package springmvc.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import springmvc.model.Users;
import springmvc.model.EducationalBackground;
@Entity
@Table(name="student")
public class Student {
	@Id
	@GeneratedValue
	private Integer id;
	
	private String fname;
	private String lname;
	private String cin;
	private String phone;
	private String email;
	private String gender;
	private Date dob;
	private String citizenship;
	
	@ManyToOne
	private Users users;
	
	@OneToMany(mappedBy="student")
	private List<EducationalBackground> edubgr;
	
	@OneToMany(mappedBy="student")
	private List<Application> app;
	
	@OneToMany(mappedBy="student")
	private List<AcademicRecords> academicrecords;
	
	public Student() {
		super();
	}
	
	public Student(Integer id, String fname, String lname, String cin,
			String phone, String email, String gender, Date dob,
			String citizenship, Users users, List<EducationalBackground> edubgr,List<AcademicRecords> academicrecords) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.cin = cin;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.dob = dob;
		this.citizenship = citizenship;
		this.users = users;
		this.edubgr = edubgr;
		this.academicrecords=academicrecords;
	}
	
	public List<EducationalBackground> getEdubgr() {
		return edubgr;
	}

	public void setEdubgr(List<EducationalBackground> edubgr) {
		this.edubgr = edubgr;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getCitizenship() {
		return citizenship;
	}
	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}

	public List<AcademicRecords> getAcademicrecords() {
		return academicrecords;
	}

	public void setAcademicrecords(List<AcademicRecords> academicrecords) {
		this.academicrecords = academicrecords;
	}
	
}
