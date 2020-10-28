# Chasing A Lock (Andrdid, 858 points)

> as locks are so popular many will chase them but why? maybe a flag :)

FLAG = RaziCTF{IN_HATE_0F_RUNN!NG_L0CK5}

This challenge is an android reversing challenge. It was one of the many android challenges during the Razi 2020 CTF. 

The first step I took to reversing this android application was unzipping the apk file. 

```bash
unzip app-release.apk -d apprelease
```
After it finished extracting all the files I used dex2jar to turn the .dex file into a .jar file. I then used jd-gui to open the jar file and just clicked file save sources.

The First thing that happens is MainActivity makes a call to a class named `switcher`.

Switcher calls 5 functions from five different classes and assembles the flag.

```java
public class switcher {
  public String run(int paramInt) {
    if (paramInt == 0) {
      a1 a1 = new a1();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(" ");
      stringBuilder2.append(a1.run(paramInt));
      String str3 = stringBuilder2.toString();
      a2 a2 = new a2();
      System.out.println(a2.run(paramInt));
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str3);
      stringBuilder1.append(a2.run(paramInt));
      String str1 = stringBuilder1.toString();
      a3 a3 = new a3();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str1);
      stringBuilder1.append(a3.run(paramInt));
      String str2 = stringBuilder1.toString();
      a4 a4 = new a4();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str2);
      stringBuilder1.append(a4.run(paramInt));
      str2 = stringBuilder1.toString();
      a5 a5 = new a5();
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str2);
      stringBuilder1.append(a5.run(paramInt));
      return stringBuilder1.toString();
    } 
    return null;
  }
}
```

## Class a1
```Java
public class a1 {
  public String run(int paramInt) {
    String str = "Vm0wd2QyUXlVWGxWV0d4V1YwZDRWMVl3WkRSV01WbDNXa1JTVjAxV2JETlhhMUpUVmpBeFYySkVUbGhoTVVwVVZtcEJlRll5U2tWVWJHaG9UVlZ3VlZadGNFSmxSbGw1VTJ0V1ZXSkhhRzlVVmxaM1ZsWmFkR05GU214U2JHdzFWVEowVjFaWFNraGhSemxWVm14YU0xWnNXbUZqVmtaMFVteFNUbUpGY0VwV2JURXdZVEZrU0ZOclpHcFRSVXBZV1ZSR2QyRkdjRmRYYlVaclVsUkdWbFpYZUZOVWJVWTJVbFJHVjJFeVVYZFpla3BIWXpGT2RWVnRhRk5sYlhoWFZtMXdUMVF3TUhoalJscFlZbFZhY2xWcVFURlNNV1J5VjJ4T1ZXSlZjRWRaTUZaM1ZqSktWVkpZWkZkaGExcFlXa1ZhVDJNeFpITmhSMnhUVFcxb1dsWXhaRFJpTWtsNVZtNU9WbUpHV2xSWmJGWmhZMVphZEdSSFJrNVNiRm93V2xWYVQxWlhTbFpqUldSYVRVWmFNMVpxU2t0V1ZrcFpXa1p3VjFKV2NIbFdWRUpoVkRKT2MyTkZhR3BTYXpWWVZXcE9iMkl4V1hoYVJGSldUVlZzTlZaWE5VOVhSMHBJVld4c1dtSkdXbWhaTW5oWFkxWkdWVkpzVGs1V01VbzFWbXBKTVdFeFdYZE5WVlpUWVRGd1YxbHJXa3RUUmxweFVtMUdVMkpWYkRaWGExcHJZVWRGZUdOSE9WZGhhMHBvVmtSS1QyUkdTbkpoUjJoVFlYcFdlbGRYZUc5aU1XUkhWMjVTVGxOSFVuTlZha0p6VGtaVmVXUkhkRmhTTUhCSlZsZDRjMWR0U2tkWGJXaGFUVzVvV0ZsNlJsZGpiSEJIV2tkc1UySnJTbUZXTW5oWFdWWlJlRmRzYUZSaVJuQlpWbXRXZDFZeGJISlhhM1JVVW14d2VGVnRNVWRWTWtwV1lrUmFXR0V4Y0hKWlZXUkdaVWRPU0U5V1pHaGhNSEJ2Vm10U1MxUXlVa2RUYmtwaFVtMW9jRlpxU205bGJHUllaVWM1YVUxcmJEUldNV2h2V1ZaS1IxTnVRbFZXTTFKNlZHdGFZVk5IVWtoa1JtUnBWbGhDU1ZacVNqUlZNV1IwVTJ0a1dHSlhhR0ZVVnpWdlYwWnJlRmRyWkZkV2EzQjZWa2R6TVZZd01WWmlla1pYWWxoQ1RGUnJXbEpsUm1SellVWlNhVkp1UW5oV1YzaHJWVEZzVjFWc1dsaGlWVnBQVkZaYWQyVkdWWGxrUkVKWFRWWndlVmt3V25kWFIwVjRZMFJPV21FeVVrZGFWM2hIWTIxS1IxcEhiRmhTVlhCS1ZtMTBVMU14VlhoWFdHaFlZbXhhVmxsclpHOWpSbHB4VTIwNWJHSkhVbGxhVldNMVlWVXhjbUpFVWxkTmFsWlVWa2Q0YTFOR1ZuTlhiRlpYVFRGS05sWkhlR0ZXTWxKSVZXdG9hMUl5YUhCVmJHaENaREZhYzFwRVVtcE5WMUl3VlRKMGExZEhTbGhoUjBaVlZucFdkbFl3V25KbFJtUnlXa1prVjJFelFqWldhMlI2VFZaa1IxTnNXbXBTVjNoWVdXeG9RMVJHVW5KWGJFcHNVbTFTZWxsVldsTmhSVEZ6VTI1b1YxWjZSVEJhUkVaclVqSktTVlJ0YUZOaGVsWlFWa1phWVdReVZrZFdXR3hyVWtWS1dGUldXbmRsVm10M1YyNWtXRkl3VmpSWk1GSlBWMjFGZVZWclpHRldNMmhJV1RJeFMxSXhjRWhpUm1oVFZsaENTMVp0TVRCVk1VMTRWbGhvV0ZkSGFGbFpiWGhoVm14c2NscEhPV3BTYkhCNFZUSXdOV0pIU2toVmJHeGhWbGROTVZsV1ZYaGpiVXBGVld4a1RtRnNXbFZXYTJRMFlURk9SMVp1VGxoaVJscFlXV3RvUTFkV1draGxSMFpYVFd4S1NWWlhkRzloTVVwMFZXczVWMkZyV2t4Vk1uaHJWakZhZEZKdGNFNVdNVWwzVmxSS01HRXhaRWhUYkdob1VqQmFWbFp1Y0Zka2JGbDNWMjVLYkZKdFVubFhhMXByVmpKRmVsRnFXbGRoTWxJMlZGWmFXbVF3TVZkWGJXeHNZVEZ3V1ZkWGVHOVJNVkpIVlc1S1dHSkZjSE5WYlRGVFpXeHNWbGRzVG1oV2EzQXhWVmMxYjFZeFdYcGhTRXBYVmtWYWVsWnFSbGRqTVdSellVZHNWMVp1UWpaV01XUXdXVmRSZVZaclpGZFhSM2h5Vld0V1MxZEdVbGRYYm1Sc1ZteHNOVnBWYUd0WFIwcEhZMFpvV2sxSFVuWldNbmhoVjBaV2NscEhSbGRXTVVwUlZsZHdTMUl4U1hsU2EyaHBVbXMxY0ZsVVFuZE5iRnAwVFZSQ1ZrMVZNVFJXVm1oelZtMUZlVlZzV2xwaVdGSXpXVlZhVjJSSFZrWmtSM0JUWWtoQ05GWnJZM2RPVm1SSFYyNU9hbEp0ZUdGVVZWcFdUVlpzVjFaWWFHcGlWWEJHVmxkNGExUnRSbk5YYkZaWVZtMVJNRlY2Um1GamF6VlhZa1pLYVZKc2NGbFhWM1JoWkRGa1YxZHJhR3RTTUZwdlZGZHpNV1ZzV1hsT1ZrNW9UVlZzTlZsVmFFTldiVXBJWVVWT1lWSkZXbWhaZWtaM1VsWldkR05GTlZkTlZXd3pWbXhTUzAxSFJYaGFSV2hVWWtkb2IxVnFRbUZXYkZwMFpVaGtUazFXY0hsV01qRkhZV3hhY21ORVFtRlNWMUYzVm1wS1MyTnNUbkpoUm1SVFRUSm9iMVpyVWt0U01WbDRWRzVXVm1KRlNsaFZiRkpYVjFaYVIxbDZSbWxOVjFKSVdXdGFWMVZzWkVoaFJsSlZWbTFTVkZwWGVITldiR1J6Vkcxb1UxWkZXalpXVkVreFlqRlplRmRZY0ZaaVIyaFpWbTE0ZDFsV2NGWlhiWFJyVm10d2VsWnRNWE5XTVVsNllVUldWMDFYVVhkWFZtUlNaVlphY2xwR1pHbGlSWEI1VmxkMFYxTXlTWGhpUm14cVVsZFNjMVp0ZUV0bGJGcDBUVVJXV0ZJd2NFaFpNRnB2VjJzeFNHRkZlRmROYm1ob1ZqQmFWMk5zY0VoU2JHUk9UVzFvU2xZeFVrcGxSazE0VTFob2FsSlhVbWhWYlhNeFYwWlpkMVpyZEU1aVJuQXdXVEJXYTFkc1dYZFdhbEpYWWtkb2RsWXdXbXRUUjBaSFYyeHdhVmRIYUc5V2JURTBZekpPYzFwSVNtdFNNMEpVV1d0YWQwNUdXbGhOVkVKT1VteHNORll5TlU5aGJFcFlZVVpvVjJGck5WUldSVnB6VmxaR1dXRkdUbGRoTTBJMlZtdGtORmxXVlhsVGExcFlWMGhDV0Zac1duZFNNVkY0VjJ0T1ZtSkZTbFpVVlZGM1VGRTlQUT09";
    for (paramInt = 0; paramInt < 20; paramInt++)
      str = new String(Base64.getDecoder().decode(str.getBytes())); 
    return str;
  }
}
```

class a1 base64 decodes the string 19 times to returns the first part of the flag `RaziCTF`.

## Class a2
```java
public class a2 { 
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
```
Class a2 will xor `"787d6c7f2c352b2c",` with `"313333376d616e73313333376861"` then decodes it to get the second part of the flag `{IN_HATE_`

## Class a3
```java
public class a3 {
  public String run(int paramInt) {
    paramInt = paramInt % 100000 / 2;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramInt - paramInt);
    stringBuilder.append("F");
    return stringBuilder.toString();
  }
}
```

class a3 will modulo `paramInt` by `100000` then divide by `2`. It will then subtract its self and append to a string. Then finally append `F` to the string and return the third part of the flag `0F`.

## Class a4
```java
public class a4 {
  public String run(int paramInt) {
    return "_RUNN";
  }
}
```

class a4 just returns `_RUNN`

## Class a5
```java
public class a5 {      
      public String run(int i) {
          String[] a = new String[3];
          a[0] = "!";
          a[1] = "%";
          a[2] = "=";
          String[] a0 = new String[3];
          a0[0] = "a";
          a0[1] = "b";
          a0[2] = "N";
          String[] a1 = new String[3];
          a1[0] = "1";
          a1[1] = "G";
          a1[2] = "2";
          String[] a2 = new String[3];
          a2[0] = "_";
          a2[1] = "%";
          a2[2] = "=";
          String[] a3 = new String[3];
          a3[0] = "C";
          a3[1] = "q";
          a3[2] = "3";
          String[] a4 = new String[3];
          a4[0] = "4";
          a4[1] = "K";
          a4[2] = "(";
          String[] a5 = new String[3];
          a5[0] = "5";
          a5[1] = "J";
          a5[2] = "K";
          System.out.println("a");
          int i0 = 0;
          while(i0 < 3) {
              int i1 = 0;
              while(i1 < 3) {
                  int i2 = 0;
                  while(i2 < 3) {
                      int i3 = 0;
                      while(i3 < 3) {
                          int i4 = 0;
                          while(i4 < 3) {
                              int i5 = 0;
                              while(i5 < 3) {
                                  int i6 = 0;
                                  while(i6 < 3) {
                                      int i7 = 0;
                                      while(i7 < 3) {
                                          int i8 = 0;
                                          while(i8 < 3) {
                                              StringBuilder a6 = new StringBuilder();
                                              a6.append(a[i0]);
                                              a6.append(a0[i1]);
                                              a6.append(a1[i2]);
                                              a6.append(a2[i3]);
                                              String[] a7 = new String[3];
                                              a7[0] = "A";
                                              a7[1] = "L";
                                              a7[2] = "D";
                                              a6.append(a7[i4]);
                                              String[] a8 = new String[3];
                                              a8[0] = "R";
                                              a8[1] = "0";
                                              a8[2] = "$";
                                              a6.append(a8[i5]);
                                              a6.append(a3[i6]);
                                              a6.append(a4[i7]);
                                              a6.append(a5[i8]);
                                              String s = a6.toString();
                                              StringBuilder a9 = new StringBuilder();
                                              a9.append(s);
                                              a9.append("}");
                                              String s0 = a9.toString();
                                              System.out.println(s0);
                                              label5: {
                                                  boolean b = false;
                                                  label1: {
                                                      Exception a10 = null;
                                                      label0: {
                                                          java.security.MessageDigest a11 = null;
                                                          byte[] a12 = null;
                                                          StringBuilder a13 = null;
                                                          int i9 = 0;
                                                          int i10 = 0;
                                                          label4: {
                                                              try {
                                                                  a11 = java.security.MessageDigest.getInstance("MD5");
                                                                  break label4;
                                                              } catch(Exception a14) {
                                                                  a10 = a14;
                                                              }
                                                              break label0;
                                                          }
                                                          label3: {
                                                              try {
                                                                  a11.update(s0.getBytes());
                                                                  a12 = a11.digest();
                                                                  a13 = new StringBuilder();
                                                                  break label3;
                                                              } catch(Exception a15) {
                                                                  a10 = a15;
                                                              }
                                                              break label0;
                                                          }
                                                          label2: {
                                                              NullPointerException a16 = null;
                                                              try {
                                                                  i9 = a12.length;
                                                                  i10 = 0;
                                                                  break label2;
                                                              } catch(NullPointerException a17) {
                                                                  a16 = a17;
                                                              }
                                                              a10 = a16;
                                                              break label0;
                                                          }
                                                          try {
                                                              while(i10 < i9) {
                                                                  String s1 = null;
                                                                  try {
                                                                      int i11 = a12[i10];
                                                                      s1 = Integer.toHexString(i11 & 255);
                                                                  } catch(Exception a18) {
                                                                      a10 = a18;
                                                                      break label0;
                                                                  }
                                                                  while(true) {
                                                                      int i12 = 0;
                                                                      try {
                                                                          i12 = s1.length();
                                                                      } catch(Exception a19) {
                                                                          a10 = a19;
                                                                          break label0;
                                                                      }
                                                                      if (i12 >= 2) {
                                                                          a13.append(s1);
                                                                          i10 = i10 + 1;
                                                                          break;
                                                                      } else {
                                                                          StringBuilder a20 = null;
                                                                          try {
                                                                              a20 = new StringBuilder();
                                                                          } catch(Exception a21) {
                                                                              a10 = a21;
                                                                              break label0;
                                                                          }
                                                                          a20.append("0");
                                                                          a20.append(s1);
                                                                          s1 = a20.toString();
                                                                      }
                                                                  }
                                                              }
                                                              b = a13.toString().equals((Object)"b469f80f05290ed415770ea56e69a476");
                                                              break label1;
                                                          } catch(Exception a22) {
                                                              a10 = a22;
                                                          }
                                                      }
                                                      a10.printStackTrace();
                                                      break label5;
                                                  }
                                                  if (b) {
                                                      return s0;
                                                  }
                                              }
                                              i8 = i8 + 1;
                                          }
                                          i7 = i7 + 1;
                                      }
                                      i6 = i6 + 1;
                                  }
                                  i5 = i5 + 1;
                              }
                              i4 = i4 + 1;
                          }
                          i3 = i3 + 1;
                      }
                      i2 = i2 + 1;
                  }
                  i1 = i1 + 1;
              }
              i0 = i0 + 1;
          }
          return "y";
      }
  }
```

(JD-GUI couldn't actually decompile class a5 so I used bytecode-viewer and used the `Krakatau` Decompiler to decompile it.) class a5 is the most complicated class. I don't really understand it fully so I just made another java File and called it. the class prints out the final part of the flag `!NG_L0CK5}`

## Putting it all together 

```java
public class Main {
    public static void main(String[] args) {
        String str = (new switcher()).run(0);
        System.out.println(str);
    }
}
```

So instead of actually writing a python script I decided to just make another Java file called `Main` and just called `switcher` like Main Activity did. It printed out the full flag.

 `RaziCTF{IN_HATE_0F_RUNN!NG_L0CK5}`

## Ending 
Overall it was a pretty easy challenge. Thank you Razi for the challenge and I hope to play the next CTF by you. 