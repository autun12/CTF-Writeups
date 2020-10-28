package com.example.razictf_2;

public class a2 {
  private int fromHex(char paramChar) {
    if (paramChar >= '0' && paramChar <= '9')
      return paramChar - 48; 
    byte b = 65;
    if (paramChar < 'A' || paramChar > 'F') {
      b = 97;
      if (paramChar < 'a' || paramChar > 'f')
        throw new IllegalArgumentException(); 
    } 
    return paramChar - b + 10;
  }
  
  private char toHex(int paramInt) {
    if (paramInt >= 0 && paramInt <= 15)
      return "0123456789ABCDEF".charAt(paramInt); 
    throw new IllegalArgumentException();
  }
  
  public String run(int paramInt) {
    return xorHex("787d6c7f2c352b2c", "313333376d616e73313333376861");
  }
  
  public String xorHex(String paramString1, String paramString2) {
    char[] arrayOfChar = new char[paramString1.length()];
    int i = 0;
    int j;
    for (j = 0; j < arrayOfChar.length; j++)
      arrayOfChar[j] = toHex(fromHex(paramString1.charAt(j)) ^ fromHex(paramString2.charAt(j))); 
    StringBuilder stringBuilder1 = new StringBuilder();
    for (j = i; j < (new String(arrayOfChar)).length(); j = i) {
      paramString2 = new String(arrayOfChar);
      i = j + 2;
      stringBuilder1.append((char)Integer.parseInt(paramString2.substring(j, i), 16));
    } 
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append("{");
    stringBuilder2.append(stringBuilder1.toString().trim());
    return stringBuilder2.toString();
  }
}