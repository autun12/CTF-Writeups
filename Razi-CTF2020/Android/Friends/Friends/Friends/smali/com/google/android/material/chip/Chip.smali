.class public Lcom/google/android/material/chip/Chip;
.super La/b/h/g;
.source ""

# interfaces
.implements Lb/c/a/a/j/b$a;
.implements Lb/c/a/a/u/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$b;
    }
.end annotation


# static fields
.field public static final u:Landroid/graphics/Rect;

.field public static final v:[I

.field public static final w:[I


# instance fields
.field public e:Lb/c/a/a/j/b;

.field public f:Landroid/graphics/drawable/InsetDrawable;

.field public g:Landroid/graphics/drawable/RippleDrawable;

.field public h:Landroid/view/View$OnClickListener;

.field public i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Lcom/google/android/material/chip/Chip$b;

.field public final r:Landroid/graphics/Rect;

.field public final s:Landroid/graphics/RectF;

.field public final t:Lb/c/a/a/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/chip/Chip;->v:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/chip/Chip;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const v9, 0x7f030097

    .line 1
    invoke-direct {v0, v7, v8, v9}, La/b/h/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    new-instance v1, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->t:Lb/c/a/a/r/d;

    const/4 v10, 0x1

    const v11, 0x800013

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    .line 2
    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chip"

    if-eqz v2, :cond_1

    const-string v2, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "drawableLeft"

    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    const-string v2, "drawableStart"

    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    const-string v2, "drawableEnd"

    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Please set end drawable using R.attr#closeIcon."

    if-nez v2, :cond_14

    const-string v2, "drawableRight"

    invoke-interface {v8, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const-string v2, "singleLine"

    invoke-interface {v8, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "lines"

    invoke-interface {v8, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_12

    const-string v2, "minLines"

    invoke-interface {v8, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_12

    const-string v2, "maxLines"

    invoke-interface {v8, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_12

    const-string v2, "gravity"

    invoke-interface {v8, v1, v2, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v11, :cond_2

    const-string v1, "Chip text must be vertically center and start aligned"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_2
    :goto_0
    new-instance v12, Lb/c/a/a/j/b;

    const v13, 0x7f0f0265

    invoke-direct {v12, v7, v8, v9, v13}, Lb/c/a/a/j/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    iget-object v1, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    sget-object v14, Lb/c/a/a/b;->c:[I

    const/4 v15, 0x0

    new-array v6, v15, [I

    const v5, 0x7f0f0265

    const v4, 0x7f030097

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-static/range {v1 .. v6}, Lb/c/a/a/p/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v6, 0x23

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, v12, Lb/c/a/a/j/b;->E0:Z

    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v3, 0x16

    invoke-static {v2, v1, v3}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 5
    iget-object v3, v12, Lb/c/a/a/j/b;->x:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_3

    iput-object v2, v12, Lb/c/a/a/j/b;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->onStateChange([I)Z

    .line 6
    :cond_3
    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v3, 0x9

    invoke-static {v2, v1, v3}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->M(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->T(F)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->N(F)V

    :cond_4
    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v4, 0x14

    invoke-static {v2, v1, v4}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->V(Landroid/content/res/ColorStateList;)V

    const/16 v5, 0x15

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->W(F)V

    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v4, 0x22

    invoke-static {v2, v1, v4}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->g0(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->h0(Ljava/lang/CharSequence;)V

    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v15, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v5, Lb/c/a/a/r/b;

    invoke-direct {v5, v2, v4}, Lb/c/a/a/r/b;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 8
    :goto_1
    invoke-virtual {v12, v5}, Lb/c/a/a/j/b;->i0(Lb/c/a/a/r/b;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v10, :cond_8

    if-eq v4, v2, :cond_7

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_7
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_8
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 9
    :goto_2
    iput-object v2, v12, Lb/c/a/a/j/b;->B0:Landroid/text/TextUtils$TruncateAt;

    :goto_3
    const/16 v2, 0x10

    .line 10
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->S(Z)V

    const-string v2, "http://schemas.android.com/apk/res-auto"

    if-eqz v8, :cond_9

    const-string v4, "chipIconEnabled"

    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "chipIconVisible"

    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->S(Z)V

    :cond_9
    iget-object v4, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v6, 0xc

    invoke-static {v4, v1, v6}, Lb/c/a/a/a;->i(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->P(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v6, v1, v4}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->R(Landroid/content/res/ColorStateList;)V

    :cond_a
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->Q(F)V

    const/16 v4, 0x1d

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->d0(Z)V

    const/16 v6, 0x18

    if-eqz v8, :cond_b

    const-string v4, "closeIconEnabled"

    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "closeIconVisible"

    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-virtual {v1, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->d0(Z)V

    :cond_b
    iget-object v4, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v11, 0x17

    invoke-static {v4, v1, v11}, Lb/c/a/a/a;->i(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->X(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v6, 0x1c

    invoke-static {v4, v1, v6}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->c0(Landroid/content/res/ColorStateList;)V

    const/16 v4, 0x1a

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->Z(F)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->J(Z)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v12, v4}, Lb/c/a/a/j/b;->L(Z)V

    if-eqz v8, :cond_c

    const-string v4, "checkedIconEnabled"

    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, "checkedIconVisible"

    invoke-interface {v8, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->L(Z)V

    :cond_c
    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-static {v2, v1, v4}, Lb/c/a/a/a;->i(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->K(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v4, 0x25

    invoke-static {v2, v1, v4}, Lb/c/a/a/c/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lb/c/a/a/c/g;

    move-result-object v2

    .line 11
    iput-object v2, v12, Lb/c/a/a/j/b;->T:Lb/c/a/a/c/g;

    .line 12
    iget-object v2, v12, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    const/16 v4, 0x1f

    invoke-static {v2, v1, v4}, Lb/c/a/a/c/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lb/c/a/a/c/g;

    move-result-object v2

    .line 13
    iput-object v2, v12, Lb/c/a/a/j/b;->U:Lb/c/a/a/c/g;

    const/16 v2, 0x13

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->U(F)V

    const/16 v2, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->f0(F)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->e0(F)V

    const/16 v2, 0x27

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->k0(F)V

    const/16 v2, 0x26

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->j0(F)V

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->a0(F)V

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->Y(F)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v12, v2}, Lb/c/a/a/j/b;->O(F)V

    const v2, 0x7fffffff

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 15
    iput v2, v12, Lb/c/a/a/j/b;->D0:I

    .line 16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v6, v15, [I

    .line 17
    invoke-static {v7, v8, v9, v13}, Lb/c/a/a/p/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v5, 0x7f0f0265

    const v4, 0x7f030097

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-static/range {v1 .. v6}, Lb/c/a/a/p/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v7, v8, v14, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x1e

    .line 18
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x30

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v10, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-double v2, v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {v0, v12}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lb/c/a/a/j/b;)V

    invoke-static/range {p0 .. p0}, La/h/j/n;->h(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v12, v1}, Lb/c/a/a/u/g;->o(F)V

    new-array v6, v15, [I

    .line 22
    invoke-static {v7, v8, v9, v13}, Lb/c/a/a/p/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-static/range {v1 .. v6}, Lb/c/a/a/p/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v7, v8, v14, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v11, :cond_d

    invoke-static {v7, v1, v10}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/google/android/material/chip/Chip$b;

    invoke-direct {v1, v0, v0}, Lcom/google/android/material/chip/Chip$b;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    const/16 v4, 0x18

    if-lt v2, v4, :cond_e

    invoke-static {v0, v1}, La/h/j/n;->r(Landroid/view/View;La/h/j/a;)V

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->h()V

    :goto_4
    if-nez v3, :cond_f

    const/16 v1, 0x15

    if-lt v2, v1, :cond_f

    .line 24
    new-instance v1, Lb/c/a/a/j/a;

    invoke-direct {v1, v0}, Lb/c/a/a/j/a;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    :cond_f
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->j:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 26
    iget-object v1, v12, Lb/c/a/a/j/b;->E:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, v12, Lb/c/a/a/j/b;->B0:Landroid/text/TextUtils$TruncateAt;

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v15}, Landroid/widget/CheckBox;->setIncludeFontPadding(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->l()V

    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 30
    iget-boolean v1, v1, Lb/c/a/a/j/b;->C0:Z

    if-nez v1, :cond_10

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CheckBox;->setSingleLine()V

    :cond_10
    const v1, 0x800013

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->k()V

    .line 32
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v1, :cond_11

    .line 33
    iget v1, v0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 34
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 35
    iput v1, v0, Lcom/google/android/material/chip/Chip;->o:I

    return-void

    .line 36
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Chip does not support multi-line text"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lb/c/a/a/j/b;->B(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lb/c/a/a/r/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->j0:Lb/c/a/a/p/h;

    .line 2
    iget-object v0, v0, Lb/c/a/a/p/h;->f:Lb/c/a/a/r/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->d(I)Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 9

    iput p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 3
    iget v0, v0, Lb/c/a/a/j/b;->z:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    invoke-virtual {v2}, Lb/c/a/a/j/b;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return v1

    :cond_1
    if-lez v2, :cond_2

    div-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-lez v0, :cond_3

    div-int/lit8 v1, v0, 0x2

    move v8, v1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v8, :cond_4

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v8, :cond_4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v7, :cond_4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v7, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinHeight(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setMinWidth(I)V

    .line 5
    :cond_6
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    move-object v3, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    return v1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    const-class v0, La/j/b/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    const-string v1, "x"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    const-string v1, "Chip"

    const-string v2, "Unable to send Accessibility Exit event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v0, p1}, La/j/b/a;->m(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v1, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-eq v1, v5, :cond_6

    const/16 v5, 0x42

    if-eq v1, v5, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x13

    if-eq v1, v7, :cond_1

    const/16 v7, 0x15

    if-eq v1, v7, :cond_0

    const/16 v7, 0x16

    if-eq v1, v7, :cond_2

    const/16 v5, 0x82

    goto :goto_0

    :cond_0
    const/16 v5, 0x11

    goto :goto_0

    :cond_1
    const/16 v5, 0x21

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    add-int/2addr v1, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v5, v6}, La/j/b/a;->p(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v2, v7

    goto :goto_2

    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 2
    iget v1, v0, La/j/b/a;->l:I

    if-eq v1, v4, :cond_5

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/material/chip/Chip$b;->r(IILandroid/os/Bundle;)Z

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 3
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, La/j/b/a;->p(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3, v6}, La/j/b/a;->p(ILandroid/graphics/Rect;)Z

    move-result v2

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    .line 5
    iget v0, v0, La/j/b/a;->l:I

    if-eq v0, v4, :cond_9

    return v3

    .line 6
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawableStateChanged()V
    .locals 4

    invoke-super {p0}, La/b/h/g;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lb/c/a/a/j/b;->G(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v2, v2, [I

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    aput v3, v2, v1

    const/4 v1, 0x1

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v3, :cond_5

    const v3, 0x101009c

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_6

    const v3, 0x1010367

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_7

    const v3, 0x10100a7

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x10100a1

    aput v3, v2, v1

    .line 4
    :cond_8
    invoke-virtual {v0, v2}, Lb/c/a/a/j/b;->b0([I)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    :cond_a
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/c/a/a/j/b;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, v0, Lb/c/a/a/j/b;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :cond_0
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->S:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->y:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/c/a/a/j/b;->D()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->c0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, La/h/d/l/b;

    if-eqz v1, :cond_1

    check-cast v0, La/h/d/l/b;

    invoke-interface {v0}, La/h/d/l/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->I:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->H:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->z:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->V:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->B:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->C:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/c/a/a/j/b;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->P:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->b0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->O:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->a0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->N:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->B0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    .line 1
    iget v1, v0, La/j/b/a;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2
    iget v0, v0, La/j/b/a;->k:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public getHideMotionSpec()Lb/c/a/a/c/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->U:Lb/c/a/a/c/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->X:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->W:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->D:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShapeAppearanceModel()Lb/c/a/a/u/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 1
    iget-object v0, v0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    return-object v0
.end method

.method public getShowMotionSpec()Lb/c/a/a/c/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/c/a/a/j/b;->T:Lb/c/a/a/c/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->Z:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/c/a/a/j/b;->Y:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, v0, Lb/c/a/a/j/b;->K:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, La/h/j/n;->r(Landroid/view/View;La/h/j/a;)V

    return-void
.end method

.method public final i()V
    .locals 2

    sget-boolean v0, Lb/c/a/a/s/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/c/a/a/j/b;->l0(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 1
    iget-object v1, v1, Lb/c/a/a/j/b;->D:Landroid/content/res/ColorStateList;

    .line 2
    invoke-static {v1}, Lb/c/a/a/s/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/c/a/a/j/b;->l0(Z)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final k()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, v0, Lb/c/a/a/j/b;->c0:F

    .line 2
    iget v2, v0, Lb/c/a/a/j/b;->Z:F

    add-float/2addr v1, v2

    .line 3
    invoke-virtual {v0}, Lb/c/a/a/j/b;->C()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 4
    iget v2, v1, Lb/c/a/a/j/b;->V:F

    .line 5
    iget v3, v1, Lb/c/a/a/j/b;->Y:F

    add-float/2addr v2, v3

    .line 6
    invoke-virtual {v1}, Lb/c/a/a/j/b;->z()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    .line 7
    sget-object v4, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lb/c/a/a/r/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->t:Lb/c/a/a/r/d;

    invoke-virtual {v1, v2, v0, v3}, Lb/c/a/a/r/b;->c(Landroid/content/Context;Landroid/text/TextPaint;Lb/c/a/a/r/d;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    invoke-static {p0, v0}, Lb/c/a/a/a;->v(Landroid/view/View;Lb/c/a/a/u/g;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/chip/Chip;->v:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/chip/Chip;->w:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    .line 1
    iget v1, v0, La/j/b/a;->l:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, La/j/b/a;->k(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p2, p3}, La/j/b/a;->p(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.view.View"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_0

    :cond_2
    const-string v0, "android.widget.Button"

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v0, :cond_3

    .line 1
    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v0, v3, v3}, La/j/b/a;->w(II)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_6

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, La/b/h/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->J(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->J(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean v0, v0, Lb/c/a/a/j/b;->Q:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->K(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->K(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->L(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->L(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->y:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lb/c/a/a/j/b;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->M(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->N(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->N(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lb/c/a/a/j/b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lb/c/a/a/j/b;->A0:Ljava/lang/ref/WeakReference;

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lb/c/a/a/j/b;->C0:Z

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lb/c/a/a/j/b;->A0:Ljava/lang/ref/WeakReference;

    .line 5
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->d(I)Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Lb/c/a/a/j/b;->c0:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/j/b;->c0:F

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {v0}, Lb/c/a/a/j/b;->H()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->O(F)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->P(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->P(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->Q(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->Q(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->R(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->R(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->S(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->S(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Lb/c/a/a/j/b;->z:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/j/b;->z:F

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {v0}, Lb/c/a/a/j/b;->H()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->T(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Lb/c/a/a/j/b;->V:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/j/b;->V:F

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {v0}, Lb/c/a/a/j/b;->H()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->U(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->V(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->V(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->W(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->W(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->X(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_12

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->P:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_12

    .line 2
    sget-object v1, La/h/h/a;->d:La/h/h/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3
    sget-object v2, La/h/h/e;->a:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v4, La/h/h/a;->d:La/h/h/c;

    const/4 v5, 0x2

    if-ne v4, v4, :cond_2

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, La/h/h/a;->h:La/h/h/a;

    goto :goto_1

    :cond_1
    sget-object v1, La/h/h/a;->g:La/h/h/a;

    goto :goto_1

    .line 6
    :cond_2
    new-instance v6, La/h/h/a;

    invoke-direct {v6, v1, v5, v4}, La/h/h/a;-><init>(ZILa/h/h/c;)V

    move-object v1, v6

    .line 7
    :goto_1
    iget-object v4, v1, La/h/h/a;->c:La/h/h/c;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto/16 :goto_9

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    check-cast v4, La/h/h/d$c;

    invoke-virtual {v4, p1, v3, v6}, La/h/h/d$c;->b(Ljava/lang/CharSequence;II)Z

    move-result v4

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 9
    iget v7, v1, La/h/h/a;->b:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v7, -0x1

    const-string v8, ""

    if-eqz v5, :cond_a

    if-eqz v4, :cond_5

    .line 10
    sget-object v5, La/h/h/d;->b:La/h/h/c;

    goto :goto_3

    :cond_5
    sget-object v5, La/h/h/d;->a:La/h/h/c;

    .line 11
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    check-cast v5, La/h/h/d$c;

    invoke-virtual {v5, p1, v3, v9}, La/h/h/d$c;->b(Ljava/lang/CharSequence;II)Z

    move-result v5

    iget-boolean v9, v1, La/h/h/a;->a:Z

    if-nez v9, :cond_7

    if-nez v5, :cond_6

    invoke-static {p1}, La/h/h/a;->a(Ljava/lang/CharSequence;)I

    move-result v9

    if-ne v9, v2, :cond_7

    :cond_6
    sget-object v5, La/h/h/a;->e:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-boolean v9, v1, La/h/h/a;->a:Z

    if-eqz v9, :cond_9

    if-eqz v5, :cond_8

    invoke-static {p1}, La/h/h/a;->a(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v7, :cond_9

    :cond_8
    sget-object v5, La/h/h/a;->f:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v5, v8

    .line 12
    :goto_4
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    iget-boolean v5, v1, La/h/h/a;->a:Z

    if-eq v4, v5, :cond_c

    if-eqz v4, :cond_b

    const/16 v5, 0x202b

    goto :goto_5

    :cond_b
    const/16 v5, 0x202a

    :goto_5
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v5, 0x202c

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_c
    invoke-virtual {v6, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_6
    if-eqz v4, :cond_d

    sget-object v4, La/h/h/d;->b:La/h/h/c;

    goto :goto_7

    :cond_d
    sget-object v4, La/h/h/d;->a:La/h/h/c;

    .line 13
    :goto_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    check-cast v4, La/h/h/d$c;

    invoke-virtual {v4, p1, v3, v5}, La/h/h/d$c;->b(Ljava/lang/CharSequence;II)Z

    move-result v3

    iget-boolean v4, v1, La/h/h/a;->a:Z

    if-nez v4, :cond_f

    if-nez v3, :cond_e

    invoke-static {p1}, La/h/h/a;->b(Ljava/lang/CharSequence;)I

    move-result v4

    if-ne v4, v2, :cond_f

    :cond_e
    sget-object v8, La/h/h/a;->e:Ljava/lang/String;

    goto :goto_8

    :cond_f
    iget-boolean v1, v1, La/h/h/a;->a:Z

    if-eqz v1, :cond_11

    if-eqz v3, :cond_10

    invoke-static {p1}, La/h/h/a;->b(Ljava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v7, :cond_11

    :cond_10
    sget-object v8, La/h/h/a;->f:Ljava/lang/String;

    .line 14
    :cond_11
    :goto_8
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, v6

    .line 15
    :goto_9
    iput-object p1, v0, Lb/c/a/a/j/b;->P:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->Y(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->Y(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->X(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->Z(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->Z(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->a0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->a0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->c0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->c0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->d0(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setElevation(F)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v2, v1, Lb/c/a/a/u/g$b;->o:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    iput p1, v1, Lb/c/a/a/u/g$b;->o:F

    invoke-virtual {v0}, Lb/c/a/a/u/g;->w()V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_1

    .line 1
    iput-object p1, v0, Lb/c/a/a/j/b;->B0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->d(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Lb/c/a/a/c/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Lb/c/a/a/j/b;->U:Lb/c/a/a/c/g;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, Lb/c/a/a/c/g;->b(Landroid/content/Context;I)Lb/c/a/a/c/g;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lb/c/a/a/j/b;->U:Lb/c/a/a/c/g;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->e0(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->e0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->f0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->f0(F)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iput p1, v0, Lb/c/a/a/j/b;->D0:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->g0(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 1
    iget-boolean p1, p1, Lb/c/a/a/j/b;->y0:Z

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, La/b/d/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->g0(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 3
    iget-boolean p1, p1, Lb/c/a/a/j/b;->y0:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lb/c/a/a/u/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    .line 1
    iget-object v1, v0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput-object p1, v1, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    return-void
.end method

.method public setShowMotionSpec(Lb/c/a/a/c/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Lb/c/a/a/j/b;->T:Lb/c/a/a/c/g;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-static {v1, p1}, Lb/c/a/a/c/g;->b(Landroid/content/Context;I)Lb/c/a/a/c/g;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lb/c/a/a/j/b;->T:Lb/c/a/a/c/g;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 1
    :cond_1
    iget-boolean v0, v0, Lb/c/a/a/j/b;->C0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lb/c/a/a/j/b;->h0(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Lb/c/a/a/r/b;

    iget-object v2, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lb/c/a/a/r/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lb/c/a/a/j/b;->i0(Lb/c/a/a/r/b;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lb/c/a/a/r/b;

    iget-object v1, p1, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lb/c/a/a/r/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lb/c/a/a/j/b;->i0(Lb/c/a/a/r/b;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setTextAppearance(Lb/c/a/a/r/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->i0(Lb/c/a/a/r/b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Lb/c/a/a/j/b;->Z:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/j/b;->Z:F

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {v0}, Lb/c/a/a/j/b;->H()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->j0(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Lb/c/a/a/j/b;->Y:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/j/b;->Y:F

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {v0}, Lb/c/a/a/j/b;->H()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Lb/c/a/a/j/b;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/c/a/a/j/b;->d0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/j/b;->k0(F)V

    :cond_0
    return-void
.end method