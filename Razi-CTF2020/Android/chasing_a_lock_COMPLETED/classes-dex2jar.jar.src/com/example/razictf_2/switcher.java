package com.example.razictf_2;

import com.example.razictf_2.a1;
import com.example.razictf_2.a2;
import com.example.razictf_2.a3;
import com.example.razictf_2.a4;

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