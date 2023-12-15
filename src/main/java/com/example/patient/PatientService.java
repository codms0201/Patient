package com.example.patient;

import java.util.List;

public interface PatientService {
    public  int insertPatient(PatientVO vo);
    public  int deletePatient(int id);
    public  int updateBoard(PatientVO vo);
    public  PatientVO getPatient(int seq);
    public List<PatientVO> getPatientList();
}
