package com.example.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientServicelmpl implements PatientService{
    @Autowired
    PatientDAO patientDAO;
//리턴 타입 일괄적으로 설정을 해주어야 한다
    @Override
    public int insertPatient(PatientVO vo) {
        return 0;
    }

    @Override
    public int deletePatient(int id) {
        return 0;
    }

    @Override
    public int updateBoard(PatientVO vo) {
        return 0;
    }

    @Override
    public PatientVO getPatient(int seq) {
        return null;
    }

    @Override
    public List<PatientVO> getPatientList() {
        return null;
    }
}
