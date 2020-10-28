.class public Lb/c/a/a/o/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/o/d$b;,
        Lb/c/a/a/o/d$d;,
        Lb/c/a/a/o/d$c;,
        Lb/c/a/a/o/d$g;,
        Lb/c/a/a/o/d$h;,
        Lb/c/a/a/o/d$f;,
        Lb/c/a/a/o/d$e;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final C:[I

.field public static final D:[I

.field public static final E:[I

.field public static final F:[I

.field public static final z:Landroid/animation/TimeInterpolator;


# instance fields
.field public a:Lb/c/a/a/u/j;

.field public b:Z

.field public c:Z

.field public d:F

.field public e:F

.field public f:F

.field public final g:Lb/c/a/a/p/g;

.field public h:Lb/c/a/a/c/g;

.field public i:Lb/c/a/a/c/g;

.field public j:Landroid/animation/Animator;

.field public k:Lb/c/a/a/c/g;

.field public l:Lb/c/a/a/c/g;

.field public m:F

.field public n:F

.field public o:I

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/c/a/a/o/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final t:Lb/c/a/a/t/b;

.field public final u:Landroid/graphics/Rect;

.field public final v:Landroid/graphics/RectF;

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/Matrix;

.field public y:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lb/c/a/a/c/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lb/c/a/a/o/d;->z:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lb/c/a/a/o/d;->A:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lb/c/a/a/o/d;->B:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lb/c/a/a/o/d;->C:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lb/c/a/a/o/d;->D:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lb/c/a/a/o/d;->E:[I

    new-array v0, v2, [I

    sput-object v0, Lb/c/a/a/o/d;->F:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lb/c/a/a/t/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/c/a/a/o/d;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb/c/a/a/o/d;->n:F

    const/4 v0, 0x0

    iput v0, p0, Lb/c/a/a/o/d;->o:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/c/a/a/o/d;->u:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/c/a/a/o/d;->v:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/c/a/a/o/d;->w:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/c/a/a/o/d;->x:Landroid/graphics/Matrix;

    iput-object p1, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lb/c/a/a/o/d;->t:Lb/c/a/a/t/b;

    new-instance p2, Lb/c/a/a/p/g;

    invoke-direct {p2}, Lb/c/a/a/p/g;-><init>()V

    iput-object p2, p0, Lb/c/a/a/o/d;->g:Lb/c/a/a/p/g;

    sget-object v0, Lb/c/a/a/o/d;->A:[I

    new-instance v1, Lb/c/a/a/o/d$d;

    invoke-direct {v1, p0}, Lb/c/a/a/o/d$d;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p0, v1}, Lb/c/a/a/o/d;->b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lb/c/a/a/p/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lb/c/a/a/o/d;->B:[I

    new-instance v1, Lb/c/a/a/o/d$c;

    invoke-direct {v1, p0}, Lb/c/a/a/o/d$c;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p0, v1}, Lb/c/a/a/o/d;->b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lb/c/a/a/p/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lb/c/a/a/o/d;->C:[I

    new-instance v1, Lb/c/a/a/o/d$c;

    invoke-direct {v1, p0}, Lb/c/a/a/o/d$c;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p0, v1}, Lb/c/a/a/o/d;->b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lb/c/a/a/p/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lb/c/a/a/o/d;->D:[I

    new-instance v1, Lb/c/a/a/o/d$c;

    invoke-direct {v1, p0}, Lb/c/a/a/o/d$c;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p0, v1}, Lb/c/a/a/o/d;->b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lb/c/a/a/p/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lb/c/a/a/o/d;->E:[I

    new-instance v1, Lb/c/a/a/o/d$g;

    invoke-direct {v1, p0}, Lb/c/a/a/o/d$g;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p0, v1}, Lb/c/a/a/o/d;->b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lb/c/a/a/p/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lb/c/a/a/o/d;->F:[I

    new-instance v1, Lb/c/a/a/o/d$b;

    invoke-direct {v1, p0}, Lb/c/a/a/o/d$b;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p0, v1}, Lb/c/a/a/o/d;->b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lb/c/a/a/p/g;->a([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lb/c/a/a/o/d;->m:F

    return-void
.end method


# virtual methods
.method public final a(Lb/c/a/a/c/g;FFF)Landroid/animation/AnimatorSet;
    .locals 7

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lb/c/a/a/c/g;->d(Ljava/lang/String;)Lb/c/a/a/c/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/c/a/a/c/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    aput p3, v1, v4

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v0, "scale"

    invoke-virtual {p1, v0}, Lb/c/a/a/c/g;->d(Ljava/lang/String;)Lb/c/a/a/c/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb/c/a/a/c/h;->a(Landroid/animation/Animator;)V

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lb/c/a/a/o/e;

    invoke-direct {v5, p0}, Lb/c/a/a/o/e;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 2
    :goto_0
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput p3, v6, v4

    invoke-static {p2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v0}, Lb/c/a/a/c/g;->d(Ljava/lang/String;)Lb/c/a/a/c/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Lb/c/a/a/c/h;->a(Landroid/animation/Animator;)V

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p3, Lb/c/a/a/o/e;

    invoke-direct {p3, p0}, Lb/c/a/a/o/e;-><init>(Lb/c/a/a/o/d;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 4
    :goto_1
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lb/c/a/a/o/d;->x:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p2, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lb/c/a/a/c/e;

    invoke-direct {p3}, Lb/c/a/a/c/e;-><init>()V

    new-instance v0, Lb/c/a/a/o/d$a;

    invoke-direct {v0, p0}, Lb/c/a/a/o/d$a;-><init>(Lb/c/a/a/o/d;)V

    new-array v1, v2, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lb/c/a/a/o/d;->x:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v4

    invoke-static {p2, p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lb/c/a/a/c/g;->d(Ljava/lang/String;)Lb/c/a/a/c/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/c/a/a/c/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, p4}, Lb/c/a/a/a;->q(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final b(Lb/c/a/a/o/d$h;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lb/c/a/a/o/d;->z:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lb/c/a/a/o/d;->d:F

    return v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Lb/c/a/a/o/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    :cond_0
    iget-boolean v0, p0, Lb/c/a/a/o/d;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/c/a/a/o/d;->c()F

    move-result v0

    iget v2, p0, Lb/c/a/a/o/d;->f:F

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v0, v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lb/c/a/a/o/d;->o:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lb/c/a/a/o/d;->o:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lb/c/a/a/o/d;->o:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lb/c/a/a/o/d;->o:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/o/d;->g:Lb/c/a/a/p/g;

    .line 1
    iget-object v1, v0, Lb/c/a/a/p/g;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    iput-object v1, v0, Lb/c/a/a/p/g;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i([I)V
    .locals 6

    iget-object v0, p0, Lb/c/a/a/o/d;->g:Lb/c/a/a/p/g;

    .line 1
    iget-object v1, v0, Lb/c/a/a/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    iget-object v4, v0, Lb/c/a/a/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/c/a/a/p/g$b;

    iget-object v5, v4, Lb/c/a/a/p/g$b;->a:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    iget-object p1, v0, Lb/c/a/a/p/g;->b:Lb/c/a/a/p/g$b;

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 2
    iget-object p1, v0, Lb/c/a/a/p/g;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, v0, Lb/c/a/a/p/g;->c:Landroid/animation/ValueAnimator;

    .line 3
    :cond_3
    iput-object v4, v0, Lb/c/a/a/p/g;->b:Lb/c/a/a/p/g$b;

    if-eqz v4, :cond_4

    .line 4
    iget-object p1, v4, Lb/c/a/a/p/g$b;->b:Landroid/animation/ValueAnimator;

    iput-object p1, v0, Lb/c/a/a/p/g;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method public j(FFF)V
    .locals 0

    invoke-virtual {p0}, Lb/c/a/a/o/d;->t()V

    const/4 p1, 0x0

    throw p1
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/o/d;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/c/a/a/o/d$e;

    invoke-interface {v1}, Lb/c/a/a/o/d$e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/o/d;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/c/a/a/o/d$e;

    invoke-interface {v1}, Lb/c/a/a/o/d$e;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n(F)V
    .locals 1

    iput p1, p0, Lb/c/a/a/o/d;->n:F

    iget-object p1, p0, Lb/c/a/a/o/d;->x:Landroid/graphics/Matrix;

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public o(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lb/c/a/a/o/d;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    if-ltz v0, :cond_0

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

.method public s()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    iget v0, p0, Lb/c/a/a/o/d;->m:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 9

    iget-object v0, p0, Lb/c/a/a/o/d;->u:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lb/c/a/a/o/d;->d(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    const-string v2, "Didn\'t initialize content background"

    .line 1
    invoke-static {v1, v2}, La/h/b/f;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/c/a/a/o/d;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v3, p0, Lb/c/a/a/o/d;->t:Lb/c/a/a/t/b;

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v3, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lb/c/a/a/o/d;->t:Lb/c/a/a/t/b;

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object v2, p0, Lb/c/a/a/o/d;->t:Lb/c/a/a/t/b;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 6
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
