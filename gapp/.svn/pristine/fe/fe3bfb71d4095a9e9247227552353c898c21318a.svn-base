package springmvc.web.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import springmvc.model.AdditionalInfo;
import springmvc.model.Department;
import springmvc.model.Programs;
import springmvc.model.dao.AdditionalInfoDao;
import springmvc.model.dao.DepartmentDao;
import springmvc.model.dao.ProgramsDao;


@Controller
@SessionAttributes({"department","program","additionalinfo"})
public class DepartmentController {

	@Autowired
	private DepartmentDao departmentDao;
	
	@Autowired
	private ProgramsDao programsDao;
	
	@Autowired
	private AdditionalInfoDao additionalInfoDao;
	
	
	@RequestMapping(value="/departmentlist.html")
	public String users(ModelMap models)
	{
		List<Department> departments=departmentDao.getDepartments();
		List<Integer> counts=new ArrayList<Integer>();
		for(Department dept:departments)
		{
			int count=programsDao.getPrograms(dept.getDno()).size();
			//System.out.println(count);
			counts.add(count);
		}
		models.put("departments", departmentDao.getDepartments());
		models.put("programCount", counts);
		return "departments";
	}
	
	@RequestMapping(value="departmentlist/add.html", method=RequestMethod.GET)
	public String getDeptAdd()
	{
		return "departmentlist/add";
	}
		
	
	@RequestMapping(value="departmentlist/add.html", method=RequestMethod.POST)
	public String postDeptAdd(@RequestParam String dname)
	{
		Department department=new Department();
		department.setDname(dname);
		department=departmentDao.saveDepartment(department);
		return "redirect:../departmentlist.html";
	}
	
	@RequestMapping(value="departmentlist/view.html")
	public String getDetails(@RequestParam Integer id, ModelMap models)
	{
		models.put("department", departmentDao.getDepartment(id));
		List<Programs> programs=programsDao.getPrograms(id);
		List<AdditionalInfo> additionalinfo=additionalInfoDao.getAdditionalInfo(id);
		models.put("programs",programs);
		models.put("additionalinfo", additionalinfo);
		return "departmentlist/view";
	}
	
	@RequestMapping(value="departmentlist/edit.html",method=RequestMethod.GET)
	public String editDeptget(@RequestParam Integer id, ModelMap models)
	{
		models.put("department",departmentDao.getDepartment(id));
		return "departmentlist/edit";
	}
	
	@RequestMapping(value="departmentlist/edit.html",method=RequestMethod.POST)
	public String editDeptpost(@ModelAttribute Department department)
	{
		department=departmentDao.saveDepartment(department);
		return "redirect:../departmentlist.html";
	}
//Programs
	
	//add
	@RequestMapping(value="programs/add.html", method=RequestMethod.GET)
	public String getProgAdd(@RequestParam Integer id, ModelMap models)
	{
		models.put("dno", departmentDao.getDepartment(id));
		return "programs/add";
	}
	
	@RequestMapping(value="programs/add.html", method=RequestMethod.POST)
	public String postProgAdd(@RequestParam String pname,@ModelAttribute Department department)
	{		
		Programs program=new Programs();
		program.setPname(pname);
		program.setDepartment(department);
		program=programsDao.saveProgram(program);		
		return "redirect:../departmentlist/view.html?id="+department.getDno();
	}
	
	//edit
	@RequestMapping(value="programs/edit.html", method=RequestMethod.GET)
	public String getProgedit(@RequestParam Integer id, ModelMap models)
	{
		models.put("program", programsDao.getProgram(id));
		return "programs/edit";
	}
	
	@RequestMapping(value="programs/edit.html", method=RequestMethod.POST)
	public String postProgedit(@RequestParam String pname,@ModelAttribute Programs program, @ModelAttribute Department department)
	{
		//programsDao.saveProgram(program.);
		program.setPname(pname);
		program.setDepartment(department);
		program=programsDao.saveProgram(program);
		return "redirect:../departmentlist/view.html?id="+department.getDno();
	}
	
	//delete
	@RequestMapping(value="programs/delete.html", method=RequestMethod.GET)
	public String getProgdelete(@RequestParam Integer id, @ModelAttribute Department department)
	{
		Programs program=programsDao.getProgram(id);
		System.out.println(id);
		programsDao.delProgram(program);
		return "redirect:../departmentlist/view.html?id="+department.getDno();
	}

//Additional info
	
	//add
	@RequestMapping(value="additionalinfo/add.html", method=RequestMethod.GET)
	public String getAddinfo(@RequestParam Integer id, ModelMap models)
	{
		models.put("dno", departmentDao.getDepartment(id));
		return "additionalinfo/add";		
	}
	@RequestMapping(value="additionalinfo/add.html", method=RequestMethod.POST)
	public String postAddinfo(@RequestParam String name,@RequestParam  String type, 
							   @ModelAttribute Department department)			
	{		
		AdditionalInfo additionalinfo=new AdditionalInfo();
		additionalinfo.setName(name);
		additionalinfo.setType(type);
		additionalinfo.setRequired(true);
		additionalinfo.setDepartment(department);
		additionalinfo=additionalInfoDao.saveInfo(additionalinfo);
		return "redirect:../departmentlist/view.html?id="+department.getDno();
	}	
	
	//edit
	@RequestMapping(value="additionalinfo/edit.html", method=RequestMethod.GET)
	public String getInfoedit(@RequestParam Integer id, ModelMap models)
	{
		models.put("additionalinfo", additionalInfoDao.getInfo(id));
		return "additionalinfo/edit";
	}
	
	@RequestMapping(value="additionalinfo/edit.html", method=RequestMethod.POST)
	public String postInfoedit(@RequestParam String name,@RequestParam String type,@ModelAttribute AdditionalInfo additionalinfo, @ModelAttribute Department department)
	{
		//programsDao.saveProgram(program.);
		additionalinfo.setName(name);
		additionalinfo.setType(type);
		additionalinfo.setRequired(true);
		additionalinfo.setDepartment(department);
		additionalinfo=additionalInfoDao.saveInfo(additionalinfo);
		return "redirect:../departmentlist/view.html?id="+department.getDno();
	}
	
	
	//delete
	@RequestMapping(value="additionalinfo/delete.html", method=RequestMethod.GET)
	public String getDelInfo(@ModelAttribute Department department,@RequestParam Integer id)
	{
		AdditionalInfo info=additionalInfoDao.getInfo(id);
		additionalInfoDao.delInfo(info);
		return "redirect:../departmentlist/view.html?id="+department.getDno();
	}
}
