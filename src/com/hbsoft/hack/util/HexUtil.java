/**
 * 
 */
package com.hbsoft.hack.util;

/**
 * @9:58:39 AM
 * @作者:大轮明王
 * @版权所有、仅供参考
 */
public class HexUtil {

    private HexUtil() {
    }
    
    public static String toHexString(byte[] b) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < b.length; i++) {
            sb.append(HexUtil.HEX_CHARS.charAt(b[i] >>> 4 & 0x0F));
            sb.append(HexUtil.HEX_CHARS.charAt(b[i] & 0x0F));
        }
        return sb.toString();
    }


    public static byte[] toByteArray(String s) {
        byte[] buf = new byte[s.length() / 2];
        int j = 0;
        for (int i = 0; i < buf.length; i++) {
            buf[i] = (byte) ((Character.digit(s.charAt(j++), 16) << 4) | Character
                    .digit(s.charAt(j++), 16));
        }
        return buf;
    }

    private static final String HEX_CHARS = "0123456789abcdef";

}

