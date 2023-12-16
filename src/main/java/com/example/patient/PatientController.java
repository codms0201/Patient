package com.example.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PatientController {
    @Autowired
    PatientService patientService;
    @RequestMapping(value ="/")
    public String home(){
        return "index";
    }
    @RequestMapping(value = "/patient/list", method = RequestMethod.GET)
    public String patientlist(Model model){
        model.addAttribute("list", patientService.getPatientList());
        return "list";
    }
    @RequestMapping(value="/patient/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostfrom";
    }

    @RequestMapping(value = "/patient/addok", method =RequestMethod.POST)
    public String addPostOK(PatientVO vo){
        if(patientService.insertPatient(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/patient/view/{id}",method = RequestMethod.GET)
    public String viewPost(@PathVariable("id")int id, Model model){
        PatientVO patientVO = patientService.getPatient(id);
        model.addAttribute("u", patientVO);
        return "view";
    }
    @RequestMapping(value = "/patient/edit/{id}",method = RequestMethod.GET)
    public String editPost(@PathVariable("id")int id, Model model){
        PatientVO patientVO = patientService.getPatient(id);
        model.addAttribute("u", patientVO);
        return "editpatient";
    }
    @RequestMapping(value = "/patient/editok", method = RequestMethod.POST)
    public String editPostOK(PatientVO vo){
        int i = patientService.updatePatient(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value = "/patient/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id){
        int i = patientService.deletePatient(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }

}
