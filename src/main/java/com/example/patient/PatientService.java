package com.example.patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    @Autowired
    PatientDAO patientDAO;
    public int insertPatient(PatientVO vo) {
        return patientDAO.insertPatient(vo);
    }
    public int deletePatient(int seq) {
        return patientDAO.deletePatient(seq);
    }
    public int updatePatient(PatientVO vo) {
        return patientDAO.updatePatient(vo);
    }
    public PatientVO getPatient(int seq) {
        return patientDAO.getPatient(seq);
    }
    public List<PatientVO> getPatientList() {
        return patientDAO.getPatientList();
    }
}
