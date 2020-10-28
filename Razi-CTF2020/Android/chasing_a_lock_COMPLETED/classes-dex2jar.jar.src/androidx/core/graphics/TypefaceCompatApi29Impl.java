package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.io.InputStream;

public class TypefaceCompatApi29Impl extends TypefaceCompatBaseImpl {
  public Typeface createFromFontFamilyFilesResourceEntry(Context paramContext, FontResourcesParserCompat.FontFamilyFilesResourceEntry paramFontFamilyFilesResourceEntry, Resources paramResources, int paramInt) {
    FontResourcesParserCompat.FontFileResourceEntry[] arrayOfFontFileResourceEntry = paramFontFamilyFilesResourceEntry.getEntries();
    int i = arrayOfFontFileResourceEntry.length;
    boolean bool = false;
    paramContext = null;
    char c = Character.MIN_VALUE;
    while (true) {
      FontFamily.Builder builder;
      boolean bool1 = true;
      if (c < i) {
        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = arrayOfFontFileResourceEntry[c];
        try {
          Font.Builder builder1 = new Font.Builder();
          this(paramResources, fontFileResourceEntry.getResourceId());
          builder1 = builder1.setWeight(fontFileResourceEntry.getWeight());
          if (!fontFileResourceEntry.isItalic())
            bool1 = false; 
          Font font = builder1.setSlant(bool1).setTtcIndex(fontFileResourceEntry.getTtcIndex()).setFontVariationSettings(fontFileResourceEntry.getVariationSettings()).build();
          if (paramContext == null) {
            FontFamily.Builder builder2 = new FontFamily.Builder();
            this(font);
            builder = builder2;
          } else {
            builder.addFont(font);
          } 
        } catch (IOException iOException) {}
        c++;
        continue;
      } 
      if (builder == null)
        return null; 
      if ((paramInt & 0x1) != 0) {
        c = 'ʼ';
      } else {
        c = 'Ɛ';
      } 
      bool1 = bool;
      if ((paramInt & 0x2) != 0)
        bool1 = true; 
      FontStyle fontStyle = new FontStyle(c, bool1);
      return (new Typeface.CustomFallbackBuilder(builder.build())).setStyle(fontStyle).build();
    } 
  }
  
  public Typeface createFromFontInfo(Context paramContext, CancellationSignal paramCancellationSignal, FontsContractCompat.FontInfo[] paramArrayOfFontInfo, int paramInt) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   4: astore #5
    //   6: aload_3
    //   7: arraylength
    //   8: istore #6
    //   10: iconst_0
    //   11: istore #7
    //   13: aconst_null
    //   14: astore_1
    //   15: iconst_0
    //   16: istore #8
    //   18: iconst_1
    //   19: istore #9
    //   21: iload #8
    //   23: iload #6
    //   25: if_icmpge -> 218
    //   28: aload_3
    //   29: iload #8
    //   31: aaload
    //   32: astore #10
    //   34: aload_1
    //   35: astore #11
    //   37: aload #5
    //   39: aload #10
    //   41: invokevirtual getUri : ()Landroid/net/Uri;
    //   44: ldc 'r'
    //   46: aload_2
    //   47: invokevirtual openFileDescriptor : (Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   50: astore #12
    //   52: aload #12
    //   54: ifnonnull -> 79
    //   57: aload_1
    //   58: astore #11
    //   60: aload #12
    //   62: ifnull -> 209
    //   65: aload_1
    //   66: astore #11
    //   68: aload #12
    //   70: invokevirtual close : ()V
    //   73: aload_1
    //   74: astore #11
    //   76: goto -> 209
    //   79: new android/graphics/fonts/Font$Builder
    //   82: astore #11
    //   84: aload #11
    //   86: aload #12
    //   88: invokespecial <init> : (Landroid/os/ParcelFileDescriptor;)V
    //   91: aload #11
    //   93: aload #10
    //   95: invokevirtual getWeight : ()I
    //   98: invokevirtual setWeight : (I)Landroid/graphics/fonts/Font$Builder;
    //   101: astore #11
    //   103: aload #10
    //   105: invokevirtual isItalic : ()Z
    //   108: ifeq -> 114
    //   111: goto -> 117
    //   114: iconst_0
    //   115: istore #9
    //   117: aload #11
    //   119: iload #9
    //   121: invokevirtual setSlant : (I)Landroid/graphics/fonts/Font$Builder;
    //   124: aload #10
    //   126: invokevirtual getTtcIndex : ()I
    //   129: invokevirtual setTtcIndex : (I)Landroid/graphics/fonts/Font$Builder;
    //   132: invokevirtual build : ()Landroid/graphics/fonts/Font;
    //   135: astore #11
    //   137: aload_1
    //   138: ifnonnull -> 158
    //   141: new android/graphics/fonts/FontFamily$Builder
    //   144: dup
    //   145: aload #11
    //   147: invokespecial <init> : (Landroid/graphics/fonts/Font;)V
    //   150: astore #11
    //   152: aload #11
    //   154: astore_1
    //   155: goto -> 165
    //   158: aload_1
    //   159: aload #11
    //   161: invokevirtual addFont : (Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    //   164: pop
    //   165: aload_1
    //   166: astore #11
    //   168: aload #12
    //   170: ifnull -> 209
    //   173: goto -> 65
    //   176: astore #10
    //   178: aload #12
    //   180: ifnull -> 203
    //   183: aload #12
    //   185: invokevirtual close : ()V
    //   188: goto -> 203
    //   191: astore #12
    //   193: aload_1
    //   194: astore #11
    //   196: aload #10
    //   198: aload #12
    //   200: invokevirtual addSuppressed : (Ljava/lang/Throwable;)V
    //   203: aload_1
    //   204: astore #11
    //   206: aload #10
    //   208: athrow
    //   209: iinc #8, 1
    //   212: aload #11
    //   214: astore_1
    //   215: goto -> 18
    //   218: aload_1
    //   219: ifnonnull -> 224
    //   222: aconst_null
    //   223: areturn
    //   224: iload #4
    //   226: iconst_1
    //   227: iand
    //   228: ifeq -> 239
    //   231: sipush #700
    //   234: istore #8
    //   236: goto -> 244
    //   239: sipush #400
    //   242: istore #8
    //   244: iload #7
    //   246: istore #9
    //   248: iload #4
    //   250: iconst_2
    //   251: iand
    //   252: ifeq -> 258
    //   255: iconst_1
    //   256: istore #9
    //   258: new android/graphics/fonts/FontStyle
    //   261: dup
    //   262: iload #8
    //   264: iload #9
    //   266: invokespecial <init> : (II)V
    //   269: astore_2
    //   270: new android/graphics/Typeface$CustomFallbackBuilder
    //   273: dup
    //   274: aload_1
    //   275: invokevirtual build : ()Landroid/graphics/fonts/FontFamily;
    //   278: invokespecial <init> : (Landroid/graphics/fonts/FontFamily;)V
    //   281: aload_2
    //   282: invokevirtual setStyle : (Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    //   285: invokevirtual build : ()Landroid/graphics/Typeface;
    //   288: areturn
    //   289: astore_1
    //   290: goto -> 209
    // Exception table:
    //   from	to	target	type
    //   37	52	289	java/io/IOException
    //   68	73	289	java/io/IOException
    //   79	111	176	finally
    //   117	137	176	finally
    //   141	152	176	finally
    //   158	165	176	finally
    //   183	188	191	finally
    //   196	203	289	java/io/IOException
    //   206	209	289	java/io/IOException
  }
  
  protected Typeface createFromInputStream(Context paramContext, InputStream paramInputStream) {
    throw new RuntimeException("Do not use this function in API 29 or later.");
  }
  
  public Typeface createFromResourcesFontFile(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2) {
    try {
      Font.Builder builder = new Font.Builder();
      this(paramResources, paramInt1);
      Font font = builder.build();
      FontFamily.Builder builder1 = new FontFamily.Builder();
      this(font);
      FontFamily fontFamily = builder1.build();
      return (new Typeface.CustomFallbackBuilder(fontFamily)).setStyle(font.getStyle()).build();
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  protected FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] paramArrayOfFontInfo, int paramInt) {
    throw new RuntimeException("Do not use this function in API 29 or later.");
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/core/graphics/TypefaceCompatApi29Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */