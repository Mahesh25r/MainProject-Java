/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

/**
 *
 * @author MAHESHKUMAR R
 */
public class Register {
    private final String npass;
    private final String rpass;

    public Register(String npass, String rpass) {
        
        this.npass = npass;
        this.rpass = rpass;
    }
    public boolean val()
    {
        boolean a=false;
        if(npass.equals(rpass))
        {
            a=true;
        }
        return a;
    }
  
}
