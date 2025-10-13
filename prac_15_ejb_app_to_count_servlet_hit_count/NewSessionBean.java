package com.my.com;

import javax.ejb.Singleton;
import javax.ejb.LocalBean;

@Singleton
@LocalBean
public class NewSessionBean {
    
    public int count = 0;
    
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public int getCount() {
        return count;
    }

    public void increment() {
        count++;
    }
}
