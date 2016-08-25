package data;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import models.Department;
import models.Employee;
import models.EmployeeTester;

public interface IEmployeeMapper {

	/*@Insert("INSERT INTO Testdb (fName, lName, )"
			+ "VALUES (fname=#{fname}, lname=#{lname})")
	void setNames(@Param ("fname") String fname, @Param("lname") String lname);
	*/
	
	
	@Select("SELECT fname, lname FROM Testdb")
	List<EmployeeTester> getEmployeeTest ();
	
	@Select("SELECT fname as firstName, lname as lastName, nin as NINumber, "+
	" dep_id as department_ID, iban as IBAN, bic as BIC, salary as Salary, "+
			"city as City, country as Country, postcode as Postcode, address As address FROM Employee")
	List<Employee> getEmployees();
	
	@Select("SELECT dep_id as department_ID, name as deptName, description FROM Departments")
	List<Department> getDepartments();
}
