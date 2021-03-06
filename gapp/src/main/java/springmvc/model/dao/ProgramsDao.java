package springmvc.model.dao;

import java.util.List;

import springmvc.model.Programs;
import springmvc.model.Users;

public interface ProgramsDao {

	List<Programs> getPrograms(Integer id);
	Programs saveProgram(Programs program);
	Programs getProgram(Integer id);
	void delProgram(Programs program);
	List<Programs> getAllPrograms();
}
