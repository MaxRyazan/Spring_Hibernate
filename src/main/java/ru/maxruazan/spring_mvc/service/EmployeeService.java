package ru.maxruazan.spring_mvc.service;

import ru.maxruazan.spring_mvc.entity.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    Employee getEmployee(int id);

    public void deleteEmployee(int id);
}
