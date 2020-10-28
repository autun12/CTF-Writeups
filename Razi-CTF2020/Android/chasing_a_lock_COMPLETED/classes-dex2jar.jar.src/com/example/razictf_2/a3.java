package com.example.razictf_2;

public class a3 {
  public String run(int paramInt) {
    paramInt = paramInt % 100000 / 2;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramInt - paramInt);
    stringBuilder.append("F");
    return stringBuilder.toString();
  }
}