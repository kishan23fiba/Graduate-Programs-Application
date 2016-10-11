package springmvc.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="additionalinfo")
public class AdditionalInfo {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@ManyToOne
	private Department department;
	
	private String name;
	private String type;
	private boolean required;
	
	public AdditionalInfo() {
		super();
	}
	
	
		
	public AdditionalInfo(Integer id, Department department, String name,
			String type, boolean required) {
		super();
		this.id = id;
		this.department = department;
		this.name = name;
		this.type = type;
		this.required = required;
	}



	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public boolean isRequired() {
		return required;
	}
	public void setRequired(boolean required) {
		this.required = required;
	}		
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
}
