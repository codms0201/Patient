package com.example.patient;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PatientDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertPatient(PatientVO vo) {
        int result = sqlSession.insert("Patient.insertPatient", vo);
        return result;
    }

    public PatientVO getPatient(int seq) {
        PatientVO one = sqlSession.selectOne("Patient.getPatient", seq);
        return one;
    }

    public List<PatientVO> getPatientList() {
        List<PatientVO> list = sqlSession.selectList("Patient.getPatientList");
        return list;
    }

    public int updatePatient(PatientVO vo) {
        int result = sqlSession.update("Patient.updatePatient", vo);
        return result;
    }

    public int deletePatient(int seq) {
        int result = sqlSession.delete("Patient.deletePatient", seq);
        return result;
    }
}

