.class public La/r/c;
.super La/r/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/r/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, La/r/b0;-><init>()V

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 1
    iput p1, p0, La/r/b0;->y:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public J(Landroid/view/ViewGroup;Landroid/view/View;La/r/q;La/r/q;)Landroid/animation/Animator;
    .locals 0

    .line 1
    sget-object p1, La/r/t;->a:La/r/z;

    invoke-virtual {p1, p2}, La/r/z;->c(Landroid/view/View;)V

    .line 2
    iget-object p1, p3, La/r/q;->a:Ljava/util/Map;

    const-string p3, "android:fade:transitionAlpha"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 p3, 0x0

    .line 3
    invoke-virtual {p0, p2, p1, p3}, La/r/c;->K(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public final K(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, La/r/t;->a:La/r/z;

    invoke-virtual {v0, p1, p2}, La/r/z;->e(Landroid/view/View;F)V

    .line 2
    sget-object p2, La/r/t;->b:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, La/r/c$b;

    invoke-direct {p3, p1}, La/r/c$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, La/r/c$a;

    invoke-direct {p3, p0, p1}, La/r/c$a;-><init>(La/r/c;Landroid/view/View;)V

    invoke-virtual {p0, p3}, La/r/i;->a(La/r/i$d;)La/r/i;

    return-object p2
.end method

.method public g(La/r/q;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, La/r/b0;->H(La/r/q;)V

    .line 2
    iget-object v0, p1, La/r/q;->a:Ljava/util/Map;

    iget-object p1, p1, La/r/q;->b:Landroid/view/View;

    invoke-static {p1}, La/r/t;->a(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
