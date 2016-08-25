package data;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import models.EmployeeTester;

public interface IEmployeeMapper {

	//@Insert("INSERT INTO Testdb VALUES (1, fname=#{fname}, lname=#{lname})")
	//void setNames(@Param ("fname") String fname, @Param("lname") String lname);
	
	
	@Select("SELECT fname, lname FROM Testdb")
	List<EmployeeTester> getEmployeeTest ();
}
