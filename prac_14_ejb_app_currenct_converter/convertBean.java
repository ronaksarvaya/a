
package com.my.com;

import javax.ejb.Stateful;
import javax.ejb.LocalBean;

@Stateful
@LocalBean
public class convertBean {

    public float r2d(float r) {
        return r / 88.72F;
    }

    
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public float d2r(float d) {
        return d * 88.72F;
    }
}
