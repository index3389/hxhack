/**
 * 
 */
package com.hbsoft.hack.util;

/**
 * @9:59:13 AM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util
{

    private MD5Util()
    {
    }

 

    static MessageDigest getDigest()
    {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

 
    public static byte[] md5(byte[] data) {
        return getDigest().digest(data);
    }

    
    public static byte[] md5(String data) {
        return md5(data.getBytes());
    }

  
    public static String md5Hex(byte[] data) {
        return HexUtil.toHexString(md5(data));
    }

   
    public static String md5Hex(String data) {
        return HexUtil.toHexString(md5(data));
    }
}

 
