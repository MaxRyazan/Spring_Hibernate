package ru.maxruazan.spring_mvc.DAO;

import ru.maxruazan.spring_mvc.entity.Employee;
import java.util.List;

public interface EmployeeDAO {

     List<Employee> getAllEmployees();

    void saveEmployee(Employee employee);

    Employee getEmployee(int id);

    void deleteEmployee(int id);
}
