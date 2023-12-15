package com.example.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PatientController {
    @Autowired
    PatientService patientService;
    @RequestMapping("/")
    public String home(){
        return "index";
    }
    @RequestMapping(value = "/patient/list", method = RequestMethod.GET)
    public String patientlist(Model model){
        model.addAttribute("list", patientService.getPatientList());
        return "post";
    }
    @RequestMapping(value="/patient/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostfrom";
    }

}
