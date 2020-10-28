.class public abstract La/f/c/l;
.super La/f/c/c;
.source ""


# instance fields
.field public h:Z

.field public i:Z


# virtual methods
.method public e(Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, La/f/c/c;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, La/f/c/c;->onAttachedToWindow()V

    iget-boolean v1, p0, La/f/c/l;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, La/f/c/l;->i:Z

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_4

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    iget v7, p0, La/f/c/c;->c:I

    if-ge v6, v7, :cond_4

    iget-object v7, p0, La/f/c/c;->b:[I

    aget v7, v7, v6

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-boolean v8, p0, La/f/c/l;->h:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v8, p0, La/f/c/l;->i:Z

    if-eqz v8, :cond_3

    cmpl-float v8, v5, v4

    if-lez v8, :cond_3

    if-lt v0, v3, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    add-float/2addr v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationZ(F)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, La/f/c/c;->c()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, La/f/c/c;->c()V

    return-void
.end method
