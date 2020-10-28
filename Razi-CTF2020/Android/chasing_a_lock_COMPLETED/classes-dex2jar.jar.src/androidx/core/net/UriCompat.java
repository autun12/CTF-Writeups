package androidx.core.net;

import android.net.Uri;

public final class UriCompat {
  public static String toSafeString(Uri paramUri) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getScheme : ()Ljava/lang/String;
    //   4: astore_1
    //   5: aload_0
    //   6: invokevirtual getSchemeSpecificPart : ()Ljava/lang/String;
    //   9: astore_2
    //   10: aload_2
    //   11: astore_3
    //   12: aload_1
    //   13: ifnull -> 320
    //   16: aload_1
    //   17: ldc 'tel'
    //   19: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   22: ifne -> 221
    //   25: aload_1
    //   26: ldc 'sip'
    //   28: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   31: ifne -> 221
    //   34: aload_1
    //   35: ldc 'sms'
    //   37: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   40: ifne -> 221
    //   43: aload_1
    //   44: ldc 'smsto'
    //   46: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   49: ifne -> 221
    //   52: aload_1
    //   53: ldc 'mailto'
    //   55: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   58: ifne -> 221
    //   61: aload_1
    //   62: ldc 'nfc'
    //   64: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   67: ifeq -> 73
    //   70: goto -> 221
    //   73: aload_1
    //   74: ldc 'http'
    //   76: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   79: ifne -> 111
    //   82: aload_1
    //   83: ldc 'https'
    //   85: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   88: ifne -> 111
    //   91: aload_1
    //   92: ldc 'ftp'
    //   94: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   97: ifne -> 111
    //   100: aload_2
    //   101: astore_3
    //   102: aload_1
    //   103: ldc 'rtsp'
    //   105: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   108: ifeq -> 320
    //   111: new java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial <init> : ()V
    //   118: astore #4
    //   120: aload #4
    //   122: ldc '//'
    //   124: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: pop
    //   128: aload_0
    //   129: invokevirtual getHost : ()Ljava/lang/String;
    //   132: astore_3
    //   133: ldc ''
    //   135: astore_2
    //   136: aload_3
    //   137: ifnull -> 148
    //   140: aload_0
    //   141: invokevirtual getHost : ()Ljava/lang/String;
    //   144: astore_3
    //   145: goto -> 151
    //   148: ldc ''
    //   150: astore_3
    //   151: aload #4
    //   153: aload_3
    //   154: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: pop
    //   158: aload_2
    //   159: astore_3
    //   160: aload_0
    //   161: invokevirtual getPort : ()I
    //   164: iconst_m1
    //   165: if_icmpeq -> 197
    //   168: new java/lang/StringBuilder
    //   171: dup
    //   172: invokespecial <init> : ()V
    //   175: astore_3
    //   176: aload_3
    //   177: ldc ':'
    //   179: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: pop
    //   183: aload_3
    //   184: aload_0
    //   185: invokevirtual getPort : ()I
    //   188: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   191: pop
    //   192: aload_3
    //   193: invokevirtual toString : ()Ljava/lang/String;
    //   196: astore_3
    //   197: aload #4
    //   199: aload_3
    //   200: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: pop
    //   204: aload #4
    //   206: ldc '/...'
    //   208: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: pop
    //   212: aload #4
    //   214: invokevirtual toString : ()Ljava/lang/String;
    //   217: astore_3
    //   218: goto -> 320
    //   221: new java/lang/StringBuilder
    //   224: dup
    //   225: bipush #64
    //   227: invokespecial <init> : (I)V
    //   230: astore_0
    //   231: aload_0
    //   232: aload_1
    //   233: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: pop
    //   237: aload_0
    //   238: bipush #58
    //   240: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: aload_2
    //   245: ifnull -> 315
    //   248: iconst_0
    //   249: istore #5
    //   251: iload #5
    //   253: aload_2
    //   254: invokevirtual length : ()I
    //   257: if_icmpge -> 315
    //   260: aload_2
    //   261: iload #5
    //   263: invokevirtual charAt : (I)C
    //   266: istore #6
    //   268: iload #6
    //   270: bipush #45
    //   272: if_icmpeq -> 302
    //   275: iload #6
    //   277: bipush #64
    //   279: if_icmpeq -> 302
    //   282: iload #6
    //   284: bipush #46
    //   286: if_icmpne -> 292
    //   289: goto -> 302
    //   292: aload_0
    //   293: bipush #120
    //   295: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   298: pop
    //   299: goto -> 309
    //   302: aload_0
    //   303: iload #6
    //   305: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   308: pop
    //   309: iinc #5, 1
    //   312: goto -> 251
    //   315: aload_0
    //   316: invokevirtual toString : ()Ljava/lang/String;
    //   319: areturn
    //   320: new java/lang/StringBuilder
    //   323: dup
    //   324: bipush #64
    //   326: invokespecial <init> : (I)V
    //   329: astore_0
    //   330: aload_1
    //   331: ifnull -> 347
    //   334: aload_0
    //   335: aload_1
    //   336: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: pop
    //   340: aload_0
    //   341: bipush #58
    //   343: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   346: pop
    //   347: aload_3
    //   348: ifnull -> 357
    //   351: aload_0
    //   352: aload_3
    //   353: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: pop
    //   357: aload_0
    //   358: invokevirtual toString : ()Ljava/lang/String;
    //   361: areturn
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/net/UriCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */