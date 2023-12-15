package com.example.patient;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientRowMapper implements RowMapper<PatientVO> {
    public PatientVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        PatientVO vo = new PatientVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setName(rs.getString("name"));
        vo.setGender(rs.getString("gender"));
        vo.setPhone(rs.getString("phone"));
        vo.setAddress(rs.getString("address"));
        vo.setSick(rs.getString("sick"));
        vo.setHeal(rs.getString("heal"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}
