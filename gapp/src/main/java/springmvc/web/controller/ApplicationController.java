package springmvc.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.DateFormatter;

import org.postgresql.core.SetupQueryRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.ModelMap;

import springmvc.model.AcademicRecords;
import springmvc.model.Application;
import springmvc.model.Department;
import springmvc.model.EducationalBackground;
import springmvc.model.Programs;
import springmvc.model.Student;
import springmvc.model.Users;
import springmvc.model.dao.AcademicRecordsDao;
import springmvc.model.dao.ApplicationDao;
import springmvc.model.dao.DepartmentDao;
import springmvc.model.dao.EducationalBackgroundDao;
import springmvc.model.dao.ProgramsDao;
import springmvc.model.dao.StudentDao;
import springmvc.model.dao.UsersDao;

@Controller
@SessionAttributes({"applications","application"})
public class ApplicationController {

	@Autowired
	private ApplicationDao applicationDao;
	
	@Autowired
	private StudentDao studentDao;
	
	@Autowired
	private DepartmentDao departmentDao;
	
	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private ProgramsDao programsDao;
	
	@Autowired
	private EducationalBackgroundDao eduDao;
	
	@Autowired
	private AcademicRecordsDao acadDao;
	
	@Autowired
	private ServletContext context;
	
	
	@RequestMapping(value="/gapphomestudent/applicationlist.html")
	public String getApplicationsfromStudent(@RequestParam Integer uid,ModelMap models)
	{
		models.put("user_id", uid);
		List<Student> studentsWhoApplied=studentDao.getStudentsforApplication(uid);
		List<Application> applications=new ArrayList<Application>();
		for(Student student:studentsWhoApplied)
		{
			applications.add(applicationDao.getStudentApplication(student.getId()));
		}
		
		List<String> deptname=new ArrayList<String>();
		List<String> progname=new ArrayList<String>();
		for(Application app:applications)
		{
			deptname.add(app.getDepartment().getDname());
			progname.add(app.getProg().getPname());
		}
		models.put("deptname", deptname);
		models.put("progname", progname);
		models.put("applications", applications);
		return "studentapplications";
	}
	
	@RequestMapping(value="/gapphomestudent/applicationlist/view.html")
	public String getApplicationDetails(@RequestParam Integer id, ModelMap models, HttpSession session)
	{
		Application application=applicationDao.getApplication(id);
		Department department=departmentDao.getDepartment(application.getDepartment().getDno());
		Programs program=programsDao.getProgram(application.getProg().getId());
		Student student=studentDao.getStudent(application.getStudent().getId());
		List<EducationalBackground> educationalBackground=eduDao.getEducationalBackground(application.getStudent().getId());
		AcademicRecords academicRecord=acadDao.getAcademicRecord(application.getStudent().getId());
		models.put("academicRecord", academicRecord);
		models.put("program", program);
		models.put("department", department);
		models.put("application", application);
		models.put("student", student);
		models.put("educationalBackground", educationalBackground);
		
		return "application/view";
	}
	
	@RequestMapping(value="/gapphomestudent/applicationlist/view1.html")
	public String downloadFile(@RequestParam String filename, /*@ModelAttribute Application application,*/ 
			HttpServletRequest request, HttpServletResponse response) throws IOException
	{	
		//response.setContentType( "image/jpg" );
		System.out.println("filename: "+filename);
        response.setHeader( "Content-Disposition",
            "attachment; filename="+filename);
        FileInputStream in = new FileInputStream(new File(getFileDirectory(),filename));
        OutputStream out = response.getOutputStream();

        byte buffer[] = new byte[2048];
        int bytesRead;
        while( (bytesRead = in.read( buffer )) > 0 )
            out.write( buffer, 0, bytesRead );

        in.close();
		
		
		//return "redirect:../applicationlist/view.html?id="+application.getId();
        return null;
	}
	
	private File getFileDirectory()
	{
		String path=context.getRealPath("/WEB-INF/files");
		return new File(path);
	}
	
	@RequestMapping(value="/gapphomestudent/add.html", method=RequestMethod.GET)
	public String addApplicationGet(ModelMap models,@RequestParam Integer uid)
	{
		List<Department> department=departmentDao.getDepartments();
		List<Programs> proglist=programsDao.getAllPrograms();
		models.put("proglist", proglist);
		models.put("department",department);
		models.put("uid", uid);
		return "application/add";
	}
	
	@RequestMapping(value="getProg.html", method=RequestMethod.POST)
	public  void getProg(@RequestParam Integer dno, HttpServletResponse response) throws IOException
	{
		System.out.println("hereeeee");
		//change made
		System.out.println("dno="+dno);
		//change end
		List<Programs> programs=programsDao.getPrograms(dno);
		for(int i=0;i<programs.size();i++)
		{
			response.getWriter().write("<option value="
					+programs.get(i).getId()
					+ ">"
					+programs.get(i).getPname()
					+ "</option>");
		}
	}
	
	@RequestMapping(value="/gapphomestudent/add.html", method=RequestMethod.POST)
	public String addApplicationPost(@RequestParam Integer uid, /*@RequestParam Integer dno,@RequestParam Integer pno, ModelMap models, 
									 @RequestParam String term,*/@RequestParam String fname,@RequestParam String lname,
									 @RequestParam String email,@RequestParam String dob,
									 @RequestParam String cin,@RequestParam String gender,
									 @RequestParam String citizenship, @RequestParam String phone,ModelMap models) throws ParseException
	{
		System.out.println("here");
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		System.out.println("date: "+format.parse(dob));
		
		/*Application application=new Application();
		application.setProg(programsDao.getProgram(pno));
		application.setDepartment(departmentDao.getDepartment(dno));
		application.setTerm(term);
		application.setDateSubmitted(new Date());
		application.setStatus("Not Submitted");
		applicationDao.saveApplication(application);*/
		
		Student student=new Student();
		student.setCin(cin);
		student.setCitizenship(citizenship);
		student.setDob(format.parse(dob));
		student.setEmail(email);
		student.setFname(fname);
		student.setLname(lname);
		student.setGender(gender);
		student.setPhone(phone);
		student.setUsers(usersDao.getUser(uid));
		studentDao.saveStudent(student);
		return "redirect:../gapphomestudent/add_dp.html";
	}
	
	@RequestMapping(value="/gapphomestudent/add_dp.html",method=RequestMethod.GET)
	public String addDeptGet(ModelMap models)
	{
		List<Department> department=departmentDao.getDepartments();
		List<Programs> proglist=programsDao.getAllPrograms();
		models.put("proglist", proglist);
		models.put("department",department);
		return "application/add_dp";
	}
	
	@RequestMapping(value="/gapphomestudent/edu_view.html",method=RequestMethod.GET)
	public String ViewDegreeGet(@RequestParam Integer id, ModelMap models)
	{
		models.put("educationalbackground", eduDao.getEducationalBackground(id));
		return "application/edu_view";
	}
	
	@RequestMapping(value="/gapphomestudent/add_dp.html", method=RequestMethod.POST)
	public String addDeptPost(@RequestParam Integer dno,@RequestParam Integer pno, ModelMap models,@RequestParam String term)
	{
	
		int id=studentDao.getLastID();
		System.out.println("student id recieved: "+ id);
		Application application=new Application();
		application.setDateSubmitted(new Date());
		application.setDepartment(departmentDao.getDepartment(dno));
		application.setProg(programsDao.getProgram(pno));
		application.setTerm(term);
		application.setStatus("Not Submitted");
		application.setStudent(studentDao.getStudent(id));
		applicationDao.saveApplication(application);
		return "redirect:../gapphomestudent/edu_view.html?id="+application.getStudent().getId();
		
	}
	
	
	@RequestMapping(value="/gapphomestudent/edu_view.html",method=RequestMethod.POST)
	public String ViewDegreePost()
	{
		return "application/add_acad";
	}
	
	@RequestMapping(value="/gapphomestudent/add_edu.html",method=RequestMethod.GET)
	public String addDegreeGet(ModelMap models)
	{
		models.put("edubckgrounds", eduDao.getEducationalBackground(studentDao.getLastID()));
		return "application/add_edu";
	}
	
	@RequestMapping(value="/gapphomestudent/add_edu.html",method=RequestMethod.POST)
	public String addDegreePost(@RequestParam String clgname,@RequestParam String degree,
			@RequestParam String timeperiod,@RequestParam String major)
	{
		Student student=studentDao.getStudent(studentDao.getLastID());
		EducationalBackground edu=new EducationalBackground();
		edu.setCollegeName(clgname);
		edu.setDegree(degree);
		edu.setMajor(major);
		edu.setTimePeriod(Integer.parseInt(timeperiod));
		edu.setStudent(student);
		eduDao.saveEdu(edu);
		return "redirect:../gapphomestudent/edu_view.html?id="+studentDao.getLastID();
	}
	
	@RequestMapping(value="/gapphomestudent/add_acad.html", method=RequestMethod.GET)
	public String addAcadGet()
	{
		return "application/add_acad";
	}
	
	@RequestMapping(value="/gapphomestudent/add_acad.html", method=RequestMethod.POST)
	public String addAcadPost(@RequestParam MultipartFile file,@RequestParam String gpa, ModelMap models) throws IllegalStateException, IOException
	{
		int id=applicationDao.getLastID();
		String filename=id+"-"+file.getOriginalFilename();
		System.out.println(filename);
		file.transferTo(new File(getFileDirectory(),filename));
		AcademicRecords academicRecords =new AcademicRecords();
		academicRecords.setGpa(Double.parseDouble(gpa));
		academicRecords.setTranscript(filename);
		academicRecords.setStudent(studentDao.getStudent(studentDao.getLastID()));
		acadDao.saveAcademicRecord(academicRecords);
		models.put("student",studentDao.getStudent(studentDao.getLastID()));
		models.put("app", applicationDao.getStudentApplication(studentDao.getLastID()));
		models.put("dept", applicationDao.getApplication(applicationDao.getLastID()).getDepartment().getDname());
		models.put("prog", applicationDao.getApplication(applicationDao.getLastID()).getProg().getPname());
		return "application/review";	
	}
	
	@RequestMapping(value="/gapphomestudent/review.html",method=RequestMethod.POST)
	public String SaveSubmitApplication(HttpServletRequest request)
	{
		Application app=applicationDao.getApplication(applicationDao.getLastID());
		if(request.getParameter("save")!=null)
		{
			System.out.println("save was clicked");
			//Application app=applicationDao.getApplication(applicationDao.getLastID());
			app.setDateSubmitted(new Date());
			applicationDao.saveApplication(app);
		}
		if(request.getParameter("submit")!=null)
		{
			System.out.println("submit was clicked");
			
			app.setDateSubmitted(new Date());
			app.setStatus("Submitted");
			applicationDao.saveApplication(app);
		}
		Student s=app.getStudent();
		Users u=s.getUsers();
		return "redirect:/gapphomestudent/applicationlist.html?uid="+u.getId();
	}
	
	//edit application
	@RequestMapping(value="/gapphomestudent/edit.html",method=RequestMethod.GET)
	public String editAppGet(@RequestParam Integer id,ModelMap models)
	{
		Application application=applicationDao.getApplication(id);
		Student student=studentDao.getStudent(application.getStudent().getId());
		Date d=student.getDob();
		DateFormat format=new SimpleDateFormat("yyyy-mm-dd hh:mm:ss:s");
		System.out.println(student.getDob());
		models.put("dob", format.format(student.getDob()));
		
		//System.out.println(format.format(student.getDob()));
		models.put("application", application);
		models.put("student", student);
		models.put("proglist", programsDao.getPrograms(application.getDepartment().getDno()));
		models.put("pro", application.getProg().getId());
		return "application/edit";
	}
	@RequestMapping(value="/gapphomestudent/edit.html",method=RequestMethod.POST)
	public String editAppPost(@RequestParam Integer id,ModelMap models, @RequestParam String fname,@RequestParam String lname,
			 @RequestParam String email,@RequestParam String dob,
			 @RequestParam String cin,@RequestParam String gender,
			 @RequestParam String citizenship, @RequestParam String phone,@RequestParam Integer pno,@RequestParam String term) throws ParseException
	{
		Application application=applicationDao.getApplication(id);
		application.setTerm(term);
		application.setProg(programsDao.getProgram(pno));
		application=applicationDao.saveApplication(application);
		
		Student student=studentDao.getStudent(application.getStudent().getId());
		student.setFname(fname);
		student.setLname(lname);
		student.setCin(cin);
		student.setCitizenship(citizenship);
		student.setEmail(email);
		student.setPhone(phone);
		student.setGender(gender);
		if(dob.equals("")==false)
		{
			DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
			student.setDob(format.parse(dob));
		}
		student=studentDao.saveStudent(student);
		return "redirect:../gapphomestudent/edit_edu.html?id="+application.getId()+"&sid="+student.getId();
	}
	
	@RequestMapping(value="/gapphomestudent/edit_edu.html",method=RequestMethod.GET)
	public String editEduGet(@RequestParam Integer sid, ModelMap models)
	{
		List<EducationalBackground> studentEdu=eduDao.getEducationalBackground(sid);
		models.put("sid", sid);
		models.put("studentEdu", studentEdu); 
		return "application/edit_edu";
	}
	
	@RequestMapping(value="/gapphomestudent/edit_edu.html",method=RequestMethod.POST)
	public String editEduPost(@RequestParam Integer sid, ModelMap models)
	{
		//fetch student acad details and post to edit_acad
		models.put("sid",sid);
		return "redirect:../gapphomestudent/edit_acad.html?sid="+sid;
	}
	
	@RequestMapping(value="/gapphomestudent/edit_add_edu.html",method=RequestMethod.GET)
	public String editAddEduGet(@RequestParam Integer sid, ModelMap models)
	{
		models.put("sid", sid);
		return "application/edit_add_edu";
	}
	
	@RequestMapping(value="/gapphomestudent/edit_add_edu.html",method=RequestMethod.POST)
	public String editAddEduPost(@RequestParam Integer sid, ModelMap models, @RequestParam String clgname, @RequestParam String degree,
			@RequestParam String timeperiod,@RequestParam String major)
	{
		EducationalBackground e=new EducationalBackground();
		e.setCollegeName(clgname);
		e.setDegree(degree);
		e.setMajor(major);
		e.setTimePeriod(Integer.parseInt(timeperiod));
		e.setStudent(studentDao.getStudent(sid));
		eduDao.saveEdu(e);
		return "redirect:../gapphomestudent/edit_edu.html?sid="+studentDao.getStudent(sid).getId();
	}
	
	@RequestMapping(value="/gapphomestudent/edudelete.html")
	public String eduDelete(@RequestParam Integer eid)
	{
		int sid=eduDao.getEdu(eid).getStudent().getId();
		eduDao.delEdu(eduDao.getEdu(eid));
		return "redirect:../gapphomestudent/edit_edu.html?sid="+sid;
	}
	
	@RequestMapping(value="/gapphomestudent/edit_acad.html", method=RequestMethod.GET)
	public String editacadGet(@RequestParam Integer sid, ModelMap models)
	{
		models.put("sid", sid);
		AcademicRecords acad=acadDao.getAcademicRecord(sid);
		Application app=applicationDao.getStudentApplication(sid);
		models.put("app", app);
		models.put("acad", acad);
		return "application/edit_acad";
	}
	
	@RequestMapping(value="/gapphomestudent/edit_acad.html", method=RequestMethod.POST)
	public String editacadPost(@RequestParam Integer sid, ModelMap models,@RequestParam MultipartFile file, @RequestParam String gpa) throws IllegalStateException, IOException
	{
		AcademicRecords acad=acadDao.getAcademicRecord(sid);
		acad.setGpa(Double.parseDouble(gpa));
		Application app=applicationDao.getStudentApplication(sid);
		if(file.getSize()!=0)
		{
		String filename=app.getId()+"-"+file.getOriginalFilename();
		System.out.println(filename);
		file.transferTo(new File(getFileDirectory(),filename));
		acad.setTranscript(filename);
		}
		acadDao.saveAcademicRecord(acad);
		return "redirect:../gapphomestudent/edit_review.html?id="+app.getId();
	}
	
	@RequestMapping(value="/gapphomestudent/edit_review.html",method=RequestMethod.GET)
	public String editReviewGet(@RequestParam Integer id, ModelMap models)
	{
		models.put("id", id);
		return "application/edit_review";
	}
	
	@RequestMapping(value="/gapphomestudent/edit_review.html",method=RequestMethod.POST)
	public String editReviewPost(@RequestParam Integer id,HttpServletRequest request)
	{
		Application app=applicationDao.getApplication(id);
		if(request.getParameter("save")!=null)
		{
			System.out.println("save was clicked");
			//Application app=applicationDao.getApplication(applicationDao.getLastID());
			app.setDateSubmitted(new Date());
			applicationDao.saveApplication(app);
		}
		if(request.getParameter("submit")!=null)
		{
			System.out.println("submit was clicked");
			app.setDateSubmitted(new Date());
			app.setStatus("Submitted");
			applicationDao.saveApplication(app);
		}
		Student s=app.getStudent();
		Users u=s.getUsers();
		return "redirect:/gapphomestudent/applicationlist.html?uid="+u.getId();
	}
	
	@RequestMapping("/gapphomestudent/logout.html")
    public String Logout(HttpSession session)
    {
    	session.invalidate();
    	return "redirect:/login.html";
    }
}
