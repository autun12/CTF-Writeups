.class public Lb/c/a/a/x/a;
.super Lb/c/a/a/x/n;
.source ""


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Lcom/google/android/material/textfield/TextInputLayout$f;

.field public f:Landroid/animation/AnimatorSet;

.field public g:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/c/a/a/x/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Lb/c/a/a/x/a$a;

    invoke-direct {p1, p0}, Lb/c/a/a/x/a$a;-><init>(Lb/c/a/a/x/a;)V

    iput-object p1, p0, Lb/c/a/a/x/a;->d:Landroid/text/TextWatcher;

    new-instance p1, Lb/c/a/a/x/a$b;

    invoke-direct {p1, p0}, Lb/c/a/a/x/a$b;-><init>(Lb/c/a/a/x/a;)V

    iput-object p1, p0, Lb/c/a/a/x/a;->e:Lcom/google/android/material/textfield/TextInputLayout$f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    const v2, 0x7f07007e

    invoke-static {v1, v2}, La/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lb/c/a/a/x/a$c;

    invoke-direct {v1, p0}, Lb/c/a/a/x/a$c;-><init>(Lb/c/a/a/x/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lb/c/a/a/x/a;->e:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lb/c/a/a/c/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lb/c/a/a/x/e;

    invoke-direct {v2, p0}, Lb/c/a/a/x/e;-><init>(Lb/c/a/a/x/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 2
    fill-array-data v2, :array_1

    .line 3
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lb/c/a/a/c/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lb/c/a/a/x/d;

    invoke-direct {v6, p0}, Lb/c/a/a/x/d;-><init>(Lb/c/a/a/x/a;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lb/c/a/a/x/a;->f:Landroid/animation/AnimatorSet;

    new-array v7, v0, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lb/c/a/a/x/a;->f:Landroid/animation/AnimatorSet;

    new-instance v2, Lb/c/a/a/x/b;

    invoke-direct {v2, p0}, Lb/c/a/a/x/b;-><init>(Lb/c/a/a/x/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lb/c/a/a/x/d;

    invoke-direct {v1, p0}, Lb/c/a/a/x/d;-><init>(Lb/c/a/a/x/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iput-object v0, p0, Lb/c/a/a/x/a;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lb/c/a/a/x/c;

    invoke-direct {v1, p0}, Lb/c/a/a/x/c;-><init>(Lb/c/a/a/x/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
