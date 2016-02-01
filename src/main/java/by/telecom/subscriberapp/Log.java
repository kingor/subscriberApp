/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp;

import by.telecom.subscriberapp.Subscriber;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author ASUP8
 * @param id Уникальный номер лога
 * @param user Пользователь 
 */
public class Log implements Serializable {
    private Long id;
    private User user;
    private Date date;
    private String type;
    private String comment;
    
    public Long getId(){
        return id;
    }
    
    public void setId(Long aId){
        id = aId;
    }  
 
    public User getUser(){
        return user;
    }
    
    public void setUser(User aUser){
        user = aUser;
    }
    
    public Date getDate(){
        return date;
    }
    
    public void setDate(Date aDate){
        date = aDate;
    }
    
    public String getType(){
        return type;
    }
    
    public void setType(String aType){
        type = aType;
    }
    
    public String getComment(){
        return comment;
    }
    
    public void setComment(String aComment){
        comment = aComment;
    }
    
    public Log updateSubscriber(User user, String aName, 
            String aNameNew, String aAddress, String aAddressNew) {
        return this.logSubscriber(user, aName, aNameNew, aAddress, 
                aAddressNew, "Update");
    }
    
    public  Log updatePhone(User user, Subscriber subscriber, 
            String aNumber, String aNumberNew, 
            String aBand, String aBandNew,
            String aSecurity, String aSecurityNew,
            String aAdsl, String aAdslNew) {
        return this.logPhone(user, subscriber, aNumber, aNumberNew, 
                aBand, aBandNew, aSecurity, aSecurityNew, aAdsl, 
                aAdslNew, "Update");
    }
       
    public Log updateUser(User user, 
            String aLogin, String aLoginNew, 
            String aPassword, String aPasswordNew,
            String aName, String aNameNew,
            Integer aCategory, Integer aCategoryNew) {
        return this.logUser(user, aLogin, aLoginNew, 
                aPassword, aPasswordNew, aName, aNameNew, 
                aCategory, aCategoryNew, "Update");
    }

    public Log logSubscriber(User user, String aName, 
            String aNameNew, String aAddress, String aAddressNew,
            String logType) {
        this.createLog(user, logType);
        comment = commentConcat(comment, "ФИО: ", aName, aNameNew);
        comment = commentConcat(comment, "Адрес: ", aAddress, aAddressNew);
        return this;
    }
    
    public  Log logPhone(User user, Subscriber subscriber, 
            String aNumber, String aNumberNew, 
            String aBand, String aBandNew,
            String aSecurity, String aSecurityNew,
            String aAdsl, String aAdslNew,
            String logType) {
        this.createLog(user, logType);
        comment = comment.concat(subscriber.getName());
        comment = commentConcat(comment, " Номер: ", aNumber, aNumberNew);
        comment = commentConcat(comment, " Громполоса: ", aBand, aBandNew);
        comment = commentConcat(comment, " Защита: ", aSecurity, aSecurityNew);
        comment = commentConcat(comment, " ADSL: ", aAdsl, aAdslNew);
        return this;
    }    
    
    public Log logUser(User user, 
            String aLogin, String aLoginNew, 
            String aPassword, String aPasswordNew,
            String aName, String aNameNew,
            Integer aCategory, Integer aCategoryNew,
            String logType) {
        this.createLog(user, logType);
        comment = commentConcat(comment, "Логин: ", aLogin, aLoginNew);
        comment = commentConcat(comment, "Пароль: ", aPassword, aPasswordNew);
        comment = commentConcat(comment, "Имя: ", aName, aNameNew);
        comment = commentConcat(comment, "Категория: ", aCategory.toString(), 
                aCategoryNew.toString());
        return this;
    }
    
    public Log createSubscriber(User user, String aName,
            String aAddress) {     
        return this.logSubscriber(user, aName, "   ", aAddress, "   ", "Create");
    } 
    
    public  Log createUser(User user, String aLogin, 
            String aName, Integer aCategory) {
        return this.logUser(user, aLogin, "   ", aName, "   ", "", "", -1, 
                aCategory, "Create");
    }
    
    public  Log createPhone(User user, Subscriber subscriber, String aNumber, 
            String aBand, String aSecurity, String aAdsl) {
        return this.logPhone(user, subscriber, aNumber, "   ", 
                aBand, "   ", aSecurity, "   ", aAdsl, "   ", "Create");
    }
    
    public Log deleteSubscriber(User user, String aName, String aAddress) {       
        return this.logSubscriber(user, aName, "   ", aAddress, "   ", "Delete");
    }
    
    public Log deletePhone(User user, Subscriber subscriber, String aNumber, 
            String aBand, String aSecurity, String aAdsl) {
        
        return this.logPhone(user, subscriber, aNumber, "   ", 
                aBand, "   ", aSecurity, "   ", aAdsl, "   ", "Delete");
    }
    
    public Log deleteUser(User user, String aLogin, 
                                String aName, Integer aCategory) {
        
        return this.logUser(user, aLogin, "   ", aName, "   ", "", "", -1, 
                aCategory, "Delete");
    }
    
    public Log login(User user, 
            String remoteAddr) {
        this.createLog(user, "Login");
        comment = commentConcat(comment, "Ip адрес: ", remoteAddr, "   "); 
        return this;
    }
    
    public Log logout(User user, 
            String remoteAddr) {
        this.createLog(user, "Logout");
        comment = commentConcat(comment, "Ip адрес: ", remoteAddr, "   "); 
        return this;
    }
    
    public Log loginError(User user, 
            String remoteAddr) {
        this.createLog(user, "Login Error");
        comment = commentConcat(comment, "Ip адрес: ", remoteAddr, "   "); 
        return this;
    }
    
    private static String commentConcat(String aComment, String aType, 
            String aName, String aNameNew){
        if (!aName.equals(aNameNew)) {
            aComment = aComment.concat(aType)
                    .concat(aName)
                    .concat("--->")
                    .concat(aNameNew)
                    .concat("   ");
        }
        return aComment;
    }
    
    public Log createLog( User aUser, String aType){
        user = aUser;
        date = new Date();
        type = aType;
        comment = "";
        return this;
    }
}
