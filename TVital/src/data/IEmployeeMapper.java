package data;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Param;

import models.Employee;
import models.EmployeeTester;

public interface IEmployeeMapper {

	/*@Insert("INSERT INTO Testdb (fName, lName, )"
			+ "VALUES (fname=#{fname}, lname=#{lname})")
	void setNames(@Param ("fname") String fname, @Param("lname") String lname);
	*/
	
	
	@Select("SELECT fname, lname FROM Testdb")
	List<EmployeeTester> getEmployeeTest ();
	
	@Select("SELECT fname as firstName, lname as lastName, FROM Employee")
	List<Employee> getEmployees();
}
