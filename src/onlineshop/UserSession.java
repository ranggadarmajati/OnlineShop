/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package onlineshop;

/**
 *
 * @author rangga
 */
public class UserSession {
    
    private static int u_uid;
    private static String u_username;
    private static String u_nama;
    private static String u_email;
    private static String u_hp;
    private static int u_akses;
    
    public static int getU_uid()
    {
        return u_uid;
    }
    
    public static String getU_username()
    {
        return u_username;
    }
    
    public static String getU_nama()
    {
        return u_nama;
    }
    
    public static String getU_email()
    {
        return u_email;
    }
    
    public static int getU_akses()
    {
        return u_akses;
    }
    
    public static String getU_hp()
    {
        return u_hp;
    }

    static void setU_uid(int u_uid) {
        UserSession.u_uid = u_uid;
    }

    static void setU_nama(String u_nama) {
        UserSession.u_nama = u_nama;
    }

    static void setU_email(String u_email) {
        UserSession.u_email = u_email;
    }

    static void setU_username(String u_username) {
        UserSession.u_username = u_username;
    }

    static void setU_hp(String u_hp) {
        UserSession.u_hp = u_hp;
    }
}
