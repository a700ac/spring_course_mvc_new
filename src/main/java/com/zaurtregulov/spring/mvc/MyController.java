package com.zaurtregulov.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){

        return "first-view";
    }
    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }
//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(){
//        return "show-emp-detail-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//        return "show-emp-details-view";
//    }
@RequestMapping("/showDetails")
public String showEmpDetails(@ModelAttribute("employee") Employee emp){
    String name = emp.getName();
    name = "Mr." + name;
    emp.setName(name);

    return "show-emp-details-view";
}
}

