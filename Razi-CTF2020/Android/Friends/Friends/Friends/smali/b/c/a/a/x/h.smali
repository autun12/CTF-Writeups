.class public Lb/c/a/a/x/h;
.super Lb/c/a/a/x/n;
.source ""


# static fields
.field public static final o:Z


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Lcom/google/android/material/textfield/TextInputLayout$e;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$f;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Landroid/graphics/drawable/StateListDrawable;

.field public k:Lb/c/a/a/u/g;

.field public l:Landroid/view/accessibility/AccessibilityManager;

.field public m:Landroid/animation/ValueAnimator;

.field public n:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lb/c/a/a/x/h;->o:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lb/c/a/a/x/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Lb/c/a/a/x/h$a;

    invoke-direct {p1, p0}, Lb/c/a/a/x/h$a;-><init>(Lb/c/a/a/x/h;)V

    iput-object p1, p0, Lb/c/a/a/x/h;->d:Landroid/text/TextWatcher;

    new-instance p1, Lb/c/a/a/x/h$b;

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, Lb/c/a/a/x/h$b;-><init>(Lb/c/a/a/x/h;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, Lb/c/a/a/x/h;->e:Lcom/google/android/material/textfield/TextInputLayout$e;

    new-instance p1, Lb/c/a/a/x/h$c;

    invoke-direct {p1, p0}, Lb/c/a/a/x/h$c;-><init>(Lb/c/a/a/x/h;)V

    iput-object p1, p0, Lb/c/a/a/x/h;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/c/a/a/x/h;->g:Z

    iput-boolean p1, p0, Lb/c/a/a/x/h;->h:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lb/c/a/a/x/h;->i:J

    return-void
.end method

.method public static d(Lb/c/a/a/x/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lb/c/a/a/x/h;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/c/a/a/x/h;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lb/c/a/a/x/h;->h:Z

    iget-object p1, p0, Lb/c/a/a/x/h;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lb/c/a/a/x/h;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static f(Lb/c/a/a/x/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lb/c/a/a/x/h;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lb/c/a/a/x/h;->g:Z

    :cond_1
    iget-boolean v0, p0, Lb/c/a/a/x/h;->g:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lb/c/a/a/x/h;->o:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lb/c/a/a/x/h;->h:Z

    xor-int/lit8 v1, v0, 0x1

    if-eq v0, v1, :cond_3

    .line 2
    iput-boolean v1, p0, Lb/c/a/a/x/h;->h:Z

    iget-object v0, p0, Lb/c/a/a/x/h;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lb/c/a/a/x/h;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_2
    iget-boolean v0, p0, Lb/c/a/a/x/h;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lb/c/a/a/x/h;->h:Z

    iget-object v0, p0, Lb/c/a/a/x/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    :cond_3
    :goto_0
    iget-boolean p0, p0, Lb/c/a/a/x/h;->h:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lb/c/a/a/x/h;->g:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lb/c/a/a/x/h;->g(FFFI)Lb/c/a/a/u/g;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0, v1, v2}, Lb/c/a/a/x/h;->g(FFFI)Lb/c/a/a/u/g;

    move-result-object v0

    iput-object v3, p0, Lb/c/a/a/x/h;->k:Lb/c/a/a/u/g;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lb/c/a/a/x/h;->j:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lb/c/a/a/x/h;->j:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-boolean v0, Lb/c/a/a/x/h;->o:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07007b

    goto :goto_0

    :cond_0
    const v0, 0x7f07007c

    :goto_0
    iget-object v1, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    invoke-static {v2, v0}, La/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lb/c/a/a/x/h$d;

    invoke-direct {v1, p0}, Lb/c/a/a/x/h$d;-><init>(Lb/c/a/a/x/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lb/c/a/a/x/h;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    .line 2
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lb/c/a/a/c/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v3, 0x43

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lb/c/a/a/x/m;

    invoke-direct {v3, p0}, Lb/c/a/a/x/m;-><init>(Lb/c/a/a/x/h;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iput-object v1, p0, Lb/c/a/a/x/h;->n:Landroid/animation/ValueAnimator;

    const/16 v1, 0x32

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    .line 4
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lb/c/a/a/x/m;

    invoke-direct {v1, p0}, Lb/c/a/a/x/m;-><init>(Lb/c/a/a/x/h;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iput-object v3, p0, Lb/c/a/a/x/h;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lb/c/a/a/x/l;

    invoke-direct {v1, p0}, Lb/c/a/a/x/l;-><init>(Lb/c/a/a/x/h;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v1, p0, Lb/c/a/a/x/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    sget-object v2, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 8
    iget-object v0, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lb/c/a/a/x/h;->l:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(FFFI)Lb/c/a/a/u/g;
    .locals 4

    .line 1
    new-instance v0, Lb/c/a/a/u/j$b;

    invoke-direct {v0}, Lb/c/a/a/u/j$b;-><init>()V

    .line 2
    new-instance v1, Lb/c/a/a/u/a;

    invoke-direct {v1, p1}, Lb/c/a/a/u/a;-><init>(F)V

    iput-object v1, v0, Lb/c/a/a/u/j$b;->e:Lb/c/a/a/u/c;

    .line 3
    new-instance v1, Lb/c/a/a/u/a;

    invoke-direct {v1, p1}, Lb/c/a/a/u/a;-><init>(F)V

    iput-object v1, v0, Lb/c/a/a/u/j$b;->f:Lb/c/a/a/u/c;

    .line 4
    new-instance p1, Lb/c/a/a/u/a;

    invoke-direct {p1, p2}, Lb/c/a/a/u/a;-><init>(F)V

    iput-object p1, v0, Lb/c/a/a/u/j$b;->h:Lb/c/a/a/u/c;

    .line 5
    new-instance p1, Lb/c/a/a/u/a;

    invoke-direct {p1, p2}, Lb/c/a/a/u/a;-><init>(F)V

    iput-object p1, v0, Lb/c/a/a/u/j$b;->g:Lb/c/a/a/u/c;

    .line 6
    invoke-virtual {v0}, Lb/c/a/a/u/j$b;->a()Lb/c/a/a/u/j;

    move-result-object p1

    iget-object p2, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    .line 7
    sget-object v0, Lb/c/a/a/u/g;->w:Landroid/graphics/Paint;

    const-class v0, Lb/c/a/a/u/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0300bf

    .line 8
    invoke-static {p2, v1, v0}, Lb/c/a/a/a;->t(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 9
    new-instance v1, Lb/c/a/a/u/g;

    invoke-direct {v1}, Lb/c/a/a/u/g;-><init>()V

    .line 10
    iget-object v2, v1, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    new-instance v3, Lb/c/a/a/m/a;

    invoke-direct {v3, p2}, Lb/c/a/a/m/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lb/c/a/a/u/g$b;->b:Lb/c/a/a/m/a;

    invoke-virtual {v1}, Lb/c/a/a/u/g;->w()V

    .line 11
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v1, p2}, Lb/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object p2, v1, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v0, p2, Lb/c/a/a/u/g$b;->o:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    iput p3, p2, Lb/c/a/a/u/g$b;->o:F

    invoke-virtual {v1}, Lb/c/a/a/u/g;->w()V

    .line 13
    :cond_0
    iget-object p2, v1, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput-object p1, p2, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {v1}, Lb/c/a/a/u/g;->invalidateSelf()V

    .line 14
    iget-object p1, v1, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object p2, p1, Lb/c/a/a/u/g$b;->i:Landroid/graphics/Rect;

    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p1, Lb/c/a/a/u/g$b;->i:Landroid/graphics/Rect;

    :cond_1
    iget-object p1, v1, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object p1, p1, Lb/c/a/a/u/g$b;->i:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, v1, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object p1, p1, Lb/c/a/a/u/g$b;->i:Landroid/graphics/Rect;

    iput-object p1, v1, Lb/c/a/a/u/g;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lb/c/a/a/u/g;->invalidateSelf()V

    return-object v1
.end method

.method public final h()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lb/c/a/a/x/h;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method