package ru.maxruazan.spring_mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.maxruazan.spring_mvc.entity.Employee;
import ru.maxruazan.spring_mvc.service.EmployeeService;

import java.util.List;

@Controller
public class MyController {

    private final EmployeeService employeeService;

    @Autowired
    public MyController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @RequestMapping("/")
    public String showAllEmployees(Model model) {
    List<Employee> allEmployees = employeeService.getAllEmployees();
    model.addAttribute("allEmps", allEmployees);
        return "all-employees";
    }

    @RequestMapping("/addNewEmployee")
    public  String addNewEmployee(Model model) {
    Employee employee = new Employee();
    model.addAttribute("employee", employee);
        return "employee-info";
    }

    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee){
    employeeService.saveEmployee(employee);
        return "redirect:/";
    }

    @RequestMapping("/updateInfo")
    public String updateEmployee(@RequestParam("empId") int id, Model model) {
      Employee employee = employeeService.getEmployee(id);
      model.addAttribute("employee", employee); //стринг из вью employee-info :  modelAttribute="employee">
        return "employee-info";
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("empId") int id) {
    employeeService.deleteEmployee(id);
    return "redirect:/";
    }
}
