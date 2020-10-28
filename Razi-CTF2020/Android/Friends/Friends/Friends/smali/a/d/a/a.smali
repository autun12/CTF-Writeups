.class public La/d/a/a;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final d:La/d/a/f;


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, La/d/a/c;

    invoke-direct {v0}, La/d/a/c;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, La/d/a/b;

    invoke-direct {v0}, La/d/a/b;-><init>()V

    :goto_0
    sput-object v0, La/d/a/a;->d:La/d/a/f;

    invoke-interface {v0}, La/d/a/f;->l()V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, La/d/a/f;->i(La/d/a/e;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, La/d/a/f;->f(La/d/a/e;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, La/d/a/f;->a(La/d/a/e;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, La/d/a/a;->c:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, La/d/a/f;->b(La/d/a/e;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, La/d/a/a;->b:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 7

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    instance-of v1, v0, La/d/a/c;

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, La/d/a/f;->g(La/d/a/e;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, La/d/a/f;->e(La/d/a/e;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, La/d/a/f;->d(La/d/a/e;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, La/d/a/f;->d(La/d/a/e;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, La/d/a/f;->j(La/d/a/e;F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, La/d/a/f;->k(La/d/a/e;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, La/d/a/a;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, La/d/a/a;->c:Z

    sget-object p1, La/d/a/a;->d:La/d/a/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, La/d/a/f;->c(La/d/a/e;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    sget-object v0, La/d/a/a;->d:La/d/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, La/d/a/f;->m(La/d/a/e;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, La/d/a/a;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, La/d/a/a;->b:Z

    sget-object p1, La/d/a/a;->d:La/d/a/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, La/d/a/f;->h(La/d/a/e;)V

    :cond_0
    return-void
.end method
