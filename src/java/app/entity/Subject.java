/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app.entity;

/**
 *
 * @author admin
 */
public class Subject {

    private int subjectId;
    private String subjectName;
    private String tagLine;
    private String thumbnail;
    private String lowestPackageName;
    private float packageListPrice;
    private float packageSalePrice;

    public Subject() {
    }

    public Subject(int subjectId, String subjectName, String tagLine, String thumbnail, String lowestPackageName, float packageListPrice, float packageSalePrice) {
        this.subjectId = subjectId;
        this.subjectName = subjectName;
        this.tagLine = tagLine;
        this.thumbnail = thumbnail;
        this.lowestPackageName = lowestPackageName;
        this.packageListPrice = packageListPrice;
        this.packageSalePrice = packageSalePrice;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public String getTagLine() {
        return tagLine;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public String getLowestPackageName() {
        return lowestPackageName;
    }

    public float getPackageListPrice() {
        return packageListPrice;
    }

    public float getPackageSalePrice() {
        return packageSalePrice;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public void setTagLine(String tagLine) {
        this.tagLine = tagLine;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public void setLowestPackageName(String lowestPackageName) {
        this.lowestPackageName = lowestPackageName;
    }

    public void setPackageListPrice(float packageListPrice) {
        this.packageListPrice = packageListPrice;
    }

    public void setPackageSalePrice(float packageSalePrice) {
        this.packageSalePrice = packageSalePrice;
    }

}
