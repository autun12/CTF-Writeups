package com.example.razictf_2;

import java.security.MessageDigest;

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