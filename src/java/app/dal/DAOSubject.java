/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app.dal;

import app.dal.DBContext;
import app.entity.Subject;
import app.entity.SubjectCategory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class DAOSubject extends DBContext {

    public Vector<SubjectCategory> getFilterList() {
        Vector<SubjectCategory> vec = new Vector<>();
        try {
            Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            //change query due to database script's change
            ResultSet rs
                    = statement.executeQuery("""
                    with CategoryHierarchy as (
                        select  SubjectCategoryId, SubjectCategoryName,
                                    SubjectParentCategory from SubjectCategory 
                                    where SubjectParentCategory = 0 
                        union all
                        select  sc.SubjectCategoryId,
                                        sc.SubjectCategoryName,
                                        sc.SubjectParentCategory from SubjectCategory sc
                                        inner join CategoryHierarchy ch 
                                        on ch.SubjectCategoryId = sc.SubjectParentCategory
                    )
                    select * from CategoryHierarchy""");
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int categoryParent = rs.getInt(3);
                SubjectCategory cat = new SubjectCategory(id, name, categoryParent);
                vec.add(cat);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOSubject.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vec;
    }
    
    //Hard-coded ids
    static int[] ListOfFeaturedSubjectId = {1, 2, 3, 4, 5};
    
    public List<Subject> getEnoughToDisplay(int ammoutOfSubjects) {
        List<Subject> Out = new ArrayList<>();
        String sql = "SELECT TOP (?) s.SubjectId, s.SubjectTitle, s.SubjectTagLine, s.SubjectThumbnail FROM Subject s WHERE s.SubjectId in (";
        for (int i: ListOfFeaturedSubjectId) sql += i + ", ";
        sql = sql.substring(0, sql.length() - 2);
        sql += ")";
        
        PreparedStatement pre;
        try {
            pre = connection.prepareStatement(sql);
            pre.setInt(1, ammoutOfSubjects);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Subject a = new Subject();
                a.setSubjectId(rs.getInt(1));
                a.setSubjectName(rs.getString(2));
                a.setTagLine(rs.getString(3));
                a.setThumbnail(rs.getString(4));
                Out.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Out;
    }
    
    
    public static void main(String[] args) {
        DAOSubject test = new DAOSubject();
        System.out.println(test.getAllSubjectTitle());
    }
    
    /**
     *
     * @author Hoapmhe173343
     */
    public List<String> getAllSubjectTitle(){
        List<String> listSubjectTitle = new ArrayList();
        String sql = "SELECT [SubjectTitle]\n" +
                    "  FROM [dbo].[Subject]";
        
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                listSubjectTitle.add(rs.getString("SubjectTitle"));
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return listSubjectTitle;
    }
    
    public int countQuestion() {
        String sql = "SELECT COUNT(*) FROM Subject";
        int totalItem = 0;

        try (PreparedStatement ps = connection.prepareStatement(sql); 
                ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                totalItem = rs.getInt(1);
            }
        } catch (SQLException e) {
        }

        return totalItem;
    }
}
