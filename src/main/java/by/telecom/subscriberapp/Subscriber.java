/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp;

import java.io.Serializable;

/**
 *
 * @author Family_P
 */
public class Subscriber implements Serializable{
    private Long id;                                
    private String name;
    private String address;
    private String comment;
    
    public Subscriber(){
        
    }
    
    public Long getId(){
        return id;
    }
    
    public void setId(Long aId){
        id = aId;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String aName){
        name = aName;
    }
    
    public String getAddress(){
        return address;
    }
    
    public void setAddress(String aAddress){
        address = aAddress;
    }
    
    public String getComment(){
        return comment;
    }
    
    public void setComment(String aComment){
        comment = aComment;
    }
}
