/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import entity.Customer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author Administrator
 */
public class DAOCustomer extends DBConnect {

    public Vector<Customer> getAll(String sql) {
        Vector<Customer> vector = new Vector<Customer>();

        try {
            Statement state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int cid = rs.getInt(1);
                String email = rs.getString(2);
                String pass = rs.getString(3);
                String role = rs.getString(4);
                String fname = rs.getString(5);
                String gender = rs.getString(6);
                String mobile = rs.getString(7);
                boolean isactive = rs.getBoolean(8);
                Customer cus = new Customer(cid, email, pass, role, fname, gender, mobile, isactive);
                vector.add(cus);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public Vector<Customer> sortby(String sql) {
        Vector<Customer> vector = new Vector<Customer>();
        try {
            Statement state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int cid = rs.getInt(1);
                String email = rs.getString(2);
                String pass = rs.getString(3);
                String role = rs.getString(4);
                String fname = rs.getString(5);
                String gender = rs.getString(6);
                String mobile = rs.getString(7);
                boolean isactive = rs.getBoolean(8);
                Customer cus = new Customer(cid, email, pass, role, fname, gender, mobile, isactive);
                vector.add(cus);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public Vector<Customer> searchbyName(String fullName) {
        Vector<Customer> vector = new Vector<Customer>();
        String sql = "select * from [User] where FullName like '%" + fullName + "%'";
        try {
            Statement state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int uid = rs.getInt(1);
                String email = rs.getString(2);
                String pass = rs.getString(3);
                String role = rs.getString(4);
                String fname = rs.getString(5);
                String gender = rs.getString(6);
                String mobile = rs.getString(7);
                boolean isactive = rs.getBoolean(8);
                Customer cus = new Customer(uid, email, pass, role, fname, gender, mobile, isactive);
                vector.add(cus);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public Vector<Customer> searchbyEmail(String inputemail) {
        Vector<Customer> vector = new Vector<Customer>();
        String sql = "select * from [User] where Email like '%" + inputemail + "%'";
        try {
            Statement state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int uid = rs.getInt(1);
                String email = rs.getString(2);
                String pass = rs.getString(3);
                String role = rs.getString(4);
                String fname = rs.getString(5);
                String gender = rs.getString(6);
                String mobile = rs.getString(7);
                boolean isactive = rs.getBoolean(8);
                Customer cus = new Customer(uid, email, pass, role, fname, gender, mobile, isactive);
                vector.add(cus);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public Vector<Customer> searchbyMobile(String mb) {
        Vector<Customer> vector = new Vector<Customer>();
        String sql = "select * from [User] where Mobile like '%" + mb + "%'";
        try {
            Statement state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) {
                int uid = rs.getInt(1);
                String email = rs.getString(2);
                String pass = rs.getString(3);
                String role = rs.getString(4);
                String fname = rs.getString(5);
                String gender = rs.getString(6);
                String mobile = rs.getString(7);
                boolean isactive = rs.getBoolean(8);
                Customer cus = new Customer(uid, email, pass, role, fname, gender, mobile, isactive);
                vector.add(cus);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public int addCustomers(Customer cus) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[User]\n" +
"           ([UserId]\n" +
"           ,[Email]\n" +
"           ,[Password]\n" +
"           ,[Role]\n" +
"           ,[FullName]\n" +
"           ,[Gender]\n" +
"           ,[Mobile]\n" +
"           ,[IsActive])\n" +
"     VALUES\n" +
"           (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, cus.getUserID());
            pre.setString(2, cus.getEmail());
            pre.setString(3, cus.getPassword());
            pre.setString(4, cus.getRole());
            pre.setString(5, cus.getFullName());
            pre.setString(6, cus.getGender());
            pre.setString(7, cus.getMobile());
            pre.setBoolean(8, cus.isIsActive());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return n;
    }

    public int updateUser(Customer cus) {
        int n = 0;
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [ID] = ?\n "
                + "      ,[Email] = ?\n"
                + "      ,[Password] = ?\n"
                + "      ,[Role] = ?\n"
                + "      ,[FullName] = ?\n"
                + "      ,[Gender] = ?\n"
                + "      ,[Mobile] = ?\n"
                + "      ,[isActive])\n"
                + " WHERE ID=?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, cus.getUserID());
            pre.setString(2, cus.getEmail());
            pre.setString(3, cus.getPassword());
            pre.setString(4, cus.getRole());
            pre.setString(5, cus.getFullName());
            pre.setString(6, cus.getGender());
            pre.setString(7, cus.getMobile());
            pre.setBoolean(8, cus.isIsActive());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public static void main(String[] args) {
        DAOCustomer dao = new DAOCustomer();
        Vector<Customer> vector = dao.getAll("select * from [User] where FullName like 'lehungdung'");
        for (Customer cus : vector) {
            System.out.println(cus);
        }
    }
}
