package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

public class ConstraintAttribute {
  private static final String TAG = "TransitionLayout";
  
  boolean mBooleanValue;
  
  private int mColorValue;
  
  private float mFloatValue;
  
  private int mIntegerValue;
  
  String mName;
  
  private String mStringValue;
  
  private AttributeType mType;
  
  public ConstraintAttribute(ConstraintAttribute paramConstraintAttribute, Object paramObject) {
    this.mName = paramConstraintAttribute.mName;
    this.mType = paramConstraintAttribute.mType;
    setValue(paramObject);
  }
  
  public ConstraintAttribute(String paramString, AttributeType paramAttributeType) {
    this.mName = paramString;
    this.mType = paramAttributeType;
  }
  
  public ConstraintAttribute(String paramString, AttributeType paramAttributeType, Object paramObject) {
    this.mName = paramString;
    this.mType = paramAttributeType;
    setValue(paramObject);
  }
  
  private static int clamp(int paramInt) {
    paramInt = (paramInt & paramInt >> 31) - 255;
    return (paramInt & paramInt >> 31) + 255;
  }
  
  public static HashMap<String, ConstraintAttribute> extractAttributes(HashMap<String, ConstraintAttribute> paramHashMap, View paramView) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Class<?> clazz = paramView.getClass();
    for (String str : paramHashMap.keySet()) {
      ConstraintAttribute constraintAttribute = paramHashMap.get(str);
      try {
        if (str.equals("BackgroundColor")) {
          int i = ((ColorDrawable)paramView.getBackground()).getColor();
          ConstraintAttribute constraintAttribute2 = new ConstraintAttribute();
          this(constraintAttribute, Integer.valueOf(i));
          hashMap.put(str, constraintAttribute2);
          continue;
        } 
        StringBuilder stringBuilder = new StringBuilder();
        this();
        stringBuilder.append("getMap");
        stringBuilder.append(str);
        Object object = clazz.getMethod(stringBuilder.toString(), new Class[0]).invoke(paramView, new Object[0]);
        ConstraintAttribute constraintAttribute1 = new ConstraintAttribute();
        this(constraintAttribute, object);
        hashMap.put(str, constraintAttribute1);
      } catch (NoSuchMethodException noSuchMethodException) {
        noSuchMethodException.printStackTrace();
      } catch (IllegalAccessException illegalAccessException) {
        illegalAccessException.printStackTrace();
      } catch (InvocationTargetException invocationTargetException) {
        invocationTargetException.printStackTrace();
      } 
    } 
    return (HashMap)hashMap;
  }
  
  public static void parse(Context paramContext, XmlPullParser paramXmlPullParser, HashMap<String, ConstraintAttribute> paramHashMap) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic asAttributeSet : (Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   5: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute : [I
    //   8: invokevirtual obtainStyledAttributes : (Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    //   11: astore_3
    //   12: aload_3
    //   13: invokevirtual getIndexCount : ()I
    //   16: istore #4
    //   18: aconst_null
    //   19: astore #5
    //   21: aload #5
    //   23: astore_1
    //   24: aload_1
    //   25: astore #6
    //   27: iconst_0
    //   28: istore #7
    //   30: aload_1
    //   31: astore #8
    //   33: iload #7
    //   35: iload #4
    //   37: if_icmpge -> 411
    //   40: aload_3
    //   41: iload #7
    //   43: invokevirtual getIndex : (I)I
    //   46: istore #9
    //   48: iload #9
    //   50: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_attributeName : I
    //   53: if_icmpne -> 148
    //   56: aload_3
    //   57: iload #9
    //   59: invokevirtual getString : (I)Ljava/lang/String;
    //   62: astore #5
    //   64: aload #5
    //   66: astore_1
    //   67: aload #8
    //   69: astore #10
    //   71: aload #6
    //   73: astore #11
    //   75: aload #5
    //   77: ifnull -> 394
    //   80: aload #5
    //   82: astore_1
    //   83: aload #8
    //   85: astore #10
    //   87: aload #6
    //   89: astore #11
    //   91: aload #5
    //   93: invokevirtual length : ()I
    //   96: ifle -> 394
    //   99: new java/lang/StringBuilder
    //   102: dup
    //   103: invokespecial <init> : ()V
    //   106: astore_1
    //   107: aload_1
    //   108: aload #5
    //   110: iconst_0
    //   111: invokevirtual charAt : (I)C
    //   114: invokestatic toUpperCase : (C)C
    //   117: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: aload_1
    //   122: aload #5
    //   124: iconst_1
    //   125: invokevirtual substring : (I)Ljava/lang/String;
    //   128: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload_1
    //   133: invokevirtual toString : ()Ljava/lang/String;
    //   136: astore_1
    //   137: aload #8
    //   139: astore #10
    //   141: aload #6
    //   143: astore #11
    //   145: goto -> 394
    //   148: iload #9
    //   150: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customBoolean : I
    //   153: if_icmpne -> 179
    //   156: aload_3
    //   157: iload #9
    //   159: iconst_0
    //   160: invokevirtual getBoolean : (IZ)Z
    //   163: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   166: astore #10
    //   168: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.BOOLEAN_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   171: astore #11
    //   173: aload #5
    //   175: astore_1
    //   176: goto -> 394
    //   179: iload #9
    //   181: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customColorValue : I
    //   184: if_icmpne -> 212
    //   187: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.COLOR_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   190: astore_1
    //   191: aload_3
    //   192: iload #9
    //   194: iconst_0
    //   195: invokevirtual getColor : (II)I
    //   198: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   201: astore #10
    //   203: aload_1
    //   204: astore #11
    //   206: aload #5
    //   208: astore_1
    //   209: goto -> 394
    //   212: iload #9
    //   214: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customColorDrawableValue : I
    //   217: if_icmpne -> 239
    //   220: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.COLOR_DRAWABLE_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   223: astore_1
    //   224: aload_3
    //   225: iload #9
    //   227: iconst_0
    //   228: invokevirtual getColor : (II)I
    //   231: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   234: astore #10
    //   236: goto -> 203
    //   239: iload #9
    //   241: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customPixelDimension : I
    //   244: if_icmpne -> 277
    //   247: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.DIMENSION_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   250: astore_1
    //   251: iconst_1
    //   252: aload_3
    //   253: iload #9
    //   255: fconst_0
    //   256: invokevirtual getDimension : (IF)F
    //   259: aload_0
    //   260: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   263: invokevirtual getDisplayMetrics : ()Landroid/util/DisplayMetrics;
    //   266: invokestatic applyDimension : (IFLandroid/util/DisplayMetrics;)F
    //   269: invokestatic valueOf : (F)Ljava/lang/Float;
    //   272: astore #10
    //   274: goto -> 203
    //   277: iload #9
    //   279: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customDimension : I
    //   282: if_icmpne -> 304
    //   285: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.DIMENSION_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   288: astore_1
    //   289: aload_3
    //   290: iload #9
    //   292: fconst_0
    //   293: invokevirtual getDimension : (IF)F
    //   296: invokestatic valueOf : (F)Ljava/lang/Float;
    //   299: astore #10
    //   301: goto -> 203
    //   304: iload #9
    //   306: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customFloatValue : I
    //   309: if_icmpne -> 333
    //   312: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.FLOAT_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   315: astore_1
    //   316: aload_3
    //   317: iload #9
    //   319: ldc_w NaN
    //   322: invokevirtual getFloat : (IF)F
    //   325: invokestatic valueOf : (F)Ljava/lang/Float;
    //   328: astore #10
    //   330: goto -> 203
    //   333: iload #9
    //   335: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customIntegerValue : I
    //   338: if_icmpne -> 360
    //   341: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.INT_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   344: astore_1
    //   345: aload_3
    //   346: iload #9
    //   348: iconst_m1
    //   349: invokevirtual getInteger : (II)I
    //   352: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   355: astore #10
    //   357: goto -> 203
    //   360: aload #5
    //   362: astore_1
    //   363: aload #8
    //   365: astore #10
    //   367: aload #6
    //   369: astore #11
    //   371: iload #9
    //   373: getstatic androidx/constraintlayout/widget/R$styleable.CustomAttribute_customStringValue : I
    //   376: if_icmpne -> 394
    //   379: getstatic androidx/constraintlayout/widget/ConstraintAttribute$AttributeType.STRING_TYPE : Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    //   382: astore_1
    //   383: aload_3
    //   384: iload #9
    //   386: invokevirtual getString : (I)Ljava/lang/String;
    //   389: astore #10
    //   391: goto -> 203
    //   394: iinc #7, 1
    //   397: aload_1
    //   398: astore #5
    //   400: aload #10
    //   402: astore #8
    //   404: aload #11
    //   406: astore #6
    //   408: goto -> 33
    //   411: aload #5
    //   413: ifnull -> 441
    //   416: aload #8
    //   418: ifnull -> 441
    //   421: aload_2
    //   422: aload #5
    //   424: new androidx/constraintlayout/widget/ConstraintAttribute
    //   427: dup
    //   428: aload #5
    //   430: aload #6
    //   432: aload #8
    //   434: invokespecial <init> : (Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;)V
    //   437: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   440: pop
    //   441: aload_3
    //   442: invokevirtual recycle : ()V
    //   445: return
  }
  
  public static void setAttributes(View paramView, HashMap<String, ConstraintAttribute> paramHashMap) {
    Class<?> clazz = paramView.getClass();
    for (String str1 : paramHashMap.keySet()) {
      StringBuilder stringBuilder1;
      ConstraintAttribute constraintAttribute = paramHashMap.get(str1);
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("set");
      stringBuilder2.append(str1);
      String str2 = stringBuilder2.toString();
      try {
        Method method;
        ColorDrawable colorDrawable;
        switch (constraintAttribute.mType) {
          default:
            continue;
          case DIMENSION_TYPE:
            clazz.getMethod(str2, new Class[] { float.class }).invoke(paramView, new Object[] { Float.valueOf(constraintAttribute.mFloatValue) });
            continue;
          case BOOLEAN_TYPE:
            clazz.getMethod(str2, new Class[] { boolean.class }).invoke(paramView, new Object[] { Boolean.valueOf(constraintAttribute.mBooleanValue) });
            continue;
          case STRING_TYPE:
            clazz.getMethod(str2, new Class[] { CharSequence.class }).invoke(paramView, new Object[] { constraintAttribute.mStringValue });
            continue;
          case FLOAT_TYPE:
            clazz.getMethod(str2, new Class[] { float.class }).invoke(paramView, new Object[] { Float.valueOf(constraintAttribute.mFloatValue) });
            continue;
          case INT_TYPE:
            clazz.getMethod(str2, new Class[] { int.class }).invoke(paramView, new Object[] { Integer.valueOf(constraintAttribute.mIntegerValue) });
            continue;
          case COLOR_DRAWABLE_TYPE:
            method = clazz.getMethod(str2, new Class[] { Drawable.class });
            colorDrawable = new ColorDrawable();
            this();
            colorDrawable.setColor(constraintAttribute.mColorValue);
            method.invoke(paramView, new Object[] { colorDrawable });
            continue;
          case COLOR_TYPE:
            break;
        } 
        clazz.getMethod(str2, new Class[] { int.class }).invoke(paramView, new Object[] { Integer.valueOf(constraintAttribute.mColorValue) });
      } catch (NoSuchMethodException noSuchMethodException) {
        Log.e("TransitionLayout", noSuchMethodException.getMessage());
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" Custom Attribute \"");
        stringBuilder.append(str1);
        stringBuilder.append("\" not found on ");
        stringBuilder.append(clazz.getName());
        Log.e("TransitionLayout", stringBuilder.toString());
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append(clazz.getName());
        stringBuilder1.append(" must have a method ");
        stringBuilder1.append(str2);
        Log.e("TransitionLayout", stringBuilder1.toString());
      } catch (IllegalAccessException illegalAccessException) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" Custom Attribute \"");
        stringBuilder.append((String)stringBuilder1);
        stringBuilder.append("\" not found on ");
        stringBuilder.append(clazz.getName());
        Log.e("TransitionLayout", stringBuilder.toString());
        illegalAccessException.printStackTrace();
      } catch (InvocationTargetException invocationTargetException) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" Custom Attribute \"");
        stringBuilder.append((String)stringBuilder1);
        stringBuilder.append("\" not found on ");
        stringBuilder.append(clazz.getName());
        Log.e("TransitionLayout", stringBuilder.toString());
        invocationTargetException.printStackTrace();
      } 
    } 
  }
  
  public boolean diff(ConstraintAttribute paramConstraintAttribute) {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool7 = bool5;
    if (paramConstraintAttribute != null)
      if (this.mType != paramConstraintAttribute.mType) {
        bool7 = bool5;
      } else {
        switch (this.mType) {
          default:
            return false;
          case DIMENSION_TYPE:
            bool7 = bool6;
            if (this.mFloatValue == paramConstraintAttribute.mFloatValue)
              bool7 = true; 
            return bool7;
          case BOOLEAN_TYPE:
            bool7 = bool1;
            if (this.mBooleanValue == paramConstraintAttribute.mBooleanValue)
              bool7 = true; 
            return bool7;
          case STRING_TYPE:
            bool7 = bool2;
            if (this.mIntegerValue == paramConstraintAttribute.mIntegerValue)
              bool7 = true; 
            return bool7;
          case FLOAT_TYPE:
            bool7 = bool3;
            if (this.mFloatValue == paramConstraintAttribute.mFloatValue)
              bool7 = true; 
            return bool7;
          case INT_TYPE:
            bool7 = bool4;
            if (this.mIntegerValue == paramConstraintAttribute.mIntegerValue)
              bool7 = true; 
            return bool7;
          case COLOR_TYPE:
          case COLOR_DRAWABLE_TYPE:
            break;
        } 
        bool7 = bool5;
        if (this.mColorValue == paramConstraintAttribute.mColorValue)
          bool7 = true; 
      }  
    return bool7;
  }
  
  public AttributeType getType() {
    return this.mType;
  }
  
  public float getValueToInterpolate() {
    float f;
    switch (this.mType) {
      default:
        return Float.NaN;
      case DIMENSION_TYPE:
        return this.mFloatValue;
      case BOOLEAN_TYPE:
        if (this.mBooleanValue) {
          f = 0.0F;
        } else {
          f = 1.0F;
        } 
        return f;
      case STRING_TYPE:
        throw new RuntimeException("Cannot interpolate String");
      case FLOAT_TYPE:
        return this.mFloatValue;
      case INT_TYPE:
        return this.mIntegerValue;
      case COLOR_TYPE:
      case COLOR_DRAWABLE_TYPE:
        break;
    } 
    throw new RuntimeException("Color does not have a single color to interpolate");
  }
  
  public void getValuesToInterpolate(float[] paramArrayOffloat) {
    switch (this.mType) {
      default:
        return;
      case DIMENSION_TYPE:
        paramArrayOffloat[0] = this.mFloatValue;
      case BOOLEAN_TYPE:
        if (this.mBooleanValue) {
          f1 = 0.0F;
        } else {
          f1 = 1.0F;
        } 
        paramArrayOffloat[0] = f1;
      case STRING_TYPE:
        throw new RuntimeException("Color does not have a single color to interpolate");
      case FLOAT_TYPE:
        paramArrayOffloat[0] = this.mFloatValue;
      case INT_TYPE:
        paramArrayOffloat[0] = this.mIntegerValue;
      case COLOR_TYPE:
      case COLOR_DRAWABLE_TYPE:
        break;
    } 
    int i = this.mColorValue;
    float f2 = (float)Math.pow(((i >> 16 & 0xFF) / 255.0F), 2.2D);
    float f1 = (float)Math.pow(((i >> 8 & 0xFF) / 255.0F), 2.2D);
    float f3 = (float)Math.pow(((i & 0xFF) / 255.0F), 2.2D);
    paramArrayOffloat[0] = f2;
    paramArrayOffloat[1] = f1;
    paramArrayOffloat[2] = f3;
    paramArrayOffloat[3] = (i >> 24 & 0xFF) / 255.0F;
  }
  
  public int noOfInterpValues() {
    int i = null.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()];
    return (i != 1 && i != 2) ? 1 : 4;
  }
  
  public void setColorValue(int paramInt) {
    this.mColorValue = paramInt;
  }
  
  public void setFloatValue(float paramFloat) {
    this.mFloatValue = paramFloat;
  }
  
  public void setIntValue(int paramInt) {
    this.mIntegerValue = paramInt;
  }
  
  public void setInterpolatedValue(View paramView, float[] paramArrayOffloat) {
    Class<?> clazz = paramView.getClass();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("set");
    stringBuilder.append(this.mName);
    String str = stringBuilder.toString();
    try {
      RuntimeException runtimeException;
      ColorDrawable colorDrawable;
      Method method2;
      StringBuilder stringBuilder1;
      int m;
      int i = null.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()];
      boolean bool = true;
      switch (i) {
        default:
          return;
        case 7:
          clazz.getMethod(str, new Class[] { float.class }).invoke(paramView, new Object[] { Float.valueOf(paramArrayOffloat[0]) });
        case 6:
          method2 = clazz.getMethod(str, new Class[] { boolean.class });
          if (paramArrayOffloat[0] <= 0.5F)
            bool = false; 
          method2.invoke(paramView, new Object[] { Boolean.valueOf(bool) });
        case 5:
          runtimeException = new RuntimeException();
          stringBuilder1 = new StringBuilder();
          this();
          stringBuilder1.append("unable to interpolate strings ");
          stringBuilder1.append(this.mName);
          this(stringBuilder1.toString());
          throw runtimeException;
        case 4:
          stringBuilder1.getMethod(str, new Class[] { float.class }).invoke(paramView, new Object[] { Float.valueOf(runtimeException[0]) });
        case 3:
          stringBuilder1.getMethod(str, new Class[] { int.class }).invoke(paramView, new Object[] { Integer.valueOf((int)runtimeException[0]) });
        case 2:
          method1 = stringBuilder1.getMethod(str, new Class[] { Drawable.class });
          j = clamp((int)((float)Math.pow(runtimeException[0], 0.45454545454545453D) * 255.0F));
          k = clamp((int)((float)Math.pow(runtimeException[1], 0.45454545454545453D) * 255.0F));
          i = clamp((int)((float)Math.pow(runtimeException[2], 0.45454545454545453D) * 255.0F));
          m = clamp((int)(runtimeException[3] * 255.0F));
          colorDrawable = new ColorDrawable();
          this();
          colorDrawable.setColor(j << 16 | m << 24 | k << 8 | i);
          method1.invoke(paramView, new Object[] { colorDrawable });
        case 1:
          break;
      } 
      Method method1 = method1.getMethod(str, new Class[] { int.class });
      int j = clamp((int)((float)Math.pow(colorDrawable[0], 0.45454545454545453D) * 255.0F));
      i = clamp((int)((float)Math.pow(colorDrawable[1], 0.45454545454545453D) * 255.0F));
      int k = clamp((int)((float)Math.pow(colorDrawable[2], 0.45454545454545453D) * 255.0F));
      method1.invoke(paramView, new Object[] { Integer.valueOf(j << 16 | clamp((int)(colorDrawable[3] * 255.0F)) << 24 | i << 8 | k) });
    } catch (NoSuchMethodException noSuchMethodException) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("no method ");
      stringBuilder1.append(str);
      stringBuilder1.append("on View \"");
      stringBuilder1.append(Debug.getName(paramView));
      stringBuilder1.append("\"");
      Log.e("TransitionLayout", stringBuilder1.toString());
      noSuchMethodException.printStackTrace();
    } catch (IllegalAccessException illegalAccessException) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("cannot access method ");
      stringBuilder1.append(str);
      stringBuilder1.append("on View \"");
      stringBuilder1.append(Debug.getName(paramView));
      stringBuilder1.append("\"");
      Log.e("TransitionLayout", stringBuilder1.toString());
      illegalAccessException.printStackTrace();
    } catch (InvocationTargetException invocationTargetException) {
      invocationTargetException.printStackTrace();
    } 
  }
  
  public void setStringValue(String paramString) {
    this.mStringValue = paramString;
  }
  
  public void setValue(Object paramObject) {
    switch (this.mType) {
      default:
        return;
      case DIMENSION_TYPE:
        this.mFloatValue = ((Float)paramObject).floatValue();
      case BOOLEAN_TYPE:
        this.mBooleanValue = ((Boolean)paramObject).booleanValue();
      case STRING_TYPE:
        this.mStringValue = (String)paramObject;
      case FLOAT_TYPE:
        this.mFloatValue = ((Float)paramObject).floatValue();
      case INT_TYPE:
        this.mIntegerValue = ((Integer)paramObject).intValue();
      case COLOR_TYPE:
      case COLOR_DRAWABLE_TYPE:
        break;
    } 
    this.mColorValue = ((Integer)paramObject).intValue();
  }
  
  public void setValue(float[] paramArrayOffloat) {
    int i = null.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()];
    boolean bool = false;
    switch (i) {
      default:
        return;
      case 7:
        this.mFloatValue = paramArrayOffloat[0];
      case 6:
        if (paramArrayOffloat[0] > 0.5D)
          bool = true; 
        this.mBooleanValue = bool;
      case 5:
        throw new RuntimeException("Color does not have a single color to interpolate");
      case 4:
        this.mFloatValue = paramArrayOffloat[0];
      case 3:
        this.mIntegerValue = (int)paramArrayOffloat[0];
      case 1:
      case 2:
        break;
    } 
    this.mColorValue = Color.HSVToColor(paramArrayOffloat);
    i = this.mColorValue;
    this.mColorValue = clamp((int)(paramArrayOffloat[3] * 255.0F)) << 24 | i & 0xFFFFFF;
  }
  
  public enum AttributeType {
    BOOLEAN_TYPE, COLOR_DRAWABLE_TYPE, COLOR_TYPE, DIMENSION_TYPE, FLOAT_TYPE, INT_TYPE, STRING_TYPE;
    
    static {
      COLOR_TYPE = new AttributeType("COLOR_TYPE", 2);
      COLOR_DRAWABLE_TYPE = new AttributeType("COLOR_DRAWABLE_TYPE", 3);
      STRING_TYPE = new AttributeType("STRING_TYPE", 4);
      BOOLEAN_TYPE = new AttributeType("BOOLEAN_TYPE", 5);
      DIMENSION_TYPE = new AttributeType("DIMENSION_TYPE", 6);
      $VALUES = new AttributeType[] { INT_TYPE, FLOAT_TYPE, COLOR_TYPE, COLOR_DRAWABLE_TYPE, STRING_TYPE, BOOLEAN_TYPE, DIMENSION_TYPE };
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/constraintlayout/widget/ConstraintAttribute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */