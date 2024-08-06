package com.starprotectvehicle.dao;

import com.starprotectvehicle.model.UnderWriter;
import com.starprotectvehicle.model.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UnderWriterDAO {
    public boolean registerUnderWriter(UnderWriter underWriter) {
        String sql = "INSERT INTO UnderWriter (underwriterId, name, dob, joiningDate, password) VALUES (?, ?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, underWriter.getUnderwriterId());
            ps.setString(2, underWriter.getName());
            ps.setString(3, underWriter.getDob());
            ps.setString(4, underWriter.getJoiningDate());
            ps.setString(5, underWriter.getPassword());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean validateUnderWriter(String username, String password) {
        String sql = "SELECT * FROM UnderWriter WHERE name = ? AND password = ?";
        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getUnderWriterId(String username) {
        String sql = "SELECT underwriterId FROM UnderWriter WHERE name = ?";
        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("underwriterId");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
}
