import java.util.Base64;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Scanner;

public class Decode {
    
    static {
        System.loadLibrary("native");
    }

    private boolean checkSplit1(String paramString) {
        byte[] arrayOfByte = Base64.getDecoder().decode("dEg0VA==");
        String str = new String(arrayOfByte, StandardCharsets.UTF_8);
        return str.equals(paramString);
    }

    private boolean checkSplit2(String paramString) {
        try {
          char[] arrayOfChar = paramString.toCharArray();
          byte[] arrayOfByte = "hack.lu20".getBytes("UTF-8");
          if (arrayOfChar.length != 9)
            return false; 
          for (byte b = 0; b < 9; b++) {
            arrayOfChar[b] = (char)(char)(arrayOfChar[b] + b);
            arrayOfChar[b] = (char)(char)(arrayOfChar[b] ^ arrayOfByte[b]);
          }
          return String.valueOf(arrayOfChar).equals("\037TT:\0375ñHG");
        } catch (UnsupportedEncodingException unsupportedEncodingException) {
            unsupportedEncodingException.printStackTrace();
            return false;
        } 
    }

      
    private boolean checkSplit3(String paramString) {
        paramString = paramString.toLowerCase();
        return paramString.length() == 8 && paramString.substring(0, 4).equals("h4rd") && md5(paramString).equals("6d90ca30c5de200fe9f671abb2dd704e");
    }
      
    private boolean checkSplit4(String paramString) {
        return paramString.equals(stringFromJNI());
    }
      
    public static String md5(String paramString) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(paramString.getBytes());
            byte[] arrayOfByte = messageDigest.digest();
            StringBuilder stringBuilder = new StringBuilder();
            for(int length = arrayOfByte.length, i = 0; i < length; ++i) {
                StringBuilder stringBuilder1 = new StringBuilder(Integer.toHexString(arrayOfByte[i] & 0xFF));
                while(stringBuilder1.length() < 2) {
                    stringBuilder1.insert(0, "0");
                }

                stringBuilder.append((CharSequence)stringBuilder1);
                // System.out.print(stringBuilder1.toString());
            }
            paramString = stringBuilder.toString();
            return paramString;
        } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
            noSuchAlgorithmException.printStackTrace();
            return "";
        } 
    }

    public static void main(String[] args) {
        Decode decode = new Decode();
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter Secret Text");
        String str = scan.next();
        Matcher matcher = Pattern.compile("flag\\{(.*)\\}").matcher(str);
        if (matcher.find()) {
            String[] arrayOfString = matcher.group().replace("flag{", "").replace("}", "").split("_");
            if (arrayOfString.length == 4) {
                boolean bool1 = decode.checkSplit1(arrayOfString[0]);
                boolean bool2 = decode.checkSplit2(arrayOfString[1]);
                boolean bool3 = decode.checkSplit3(arrayOfString[2]);
                boolean bool4 = decode.checkSplit4(arrayOfString[3]);
                if (bool1 && bool2 && bool3 && bool4) {
                    System.out.println(String.valueOf(arrayOfString));
                    scan.close();
                    return;
                } 
            } 
        }
    }

    public native String stringFromJNI();
}