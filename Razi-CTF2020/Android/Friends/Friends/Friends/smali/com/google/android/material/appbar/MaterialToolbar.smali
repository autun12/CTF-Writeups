.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0f029b

    const v1, 0x7f0302f9

    .line 1
    invoke-static {p1, p2, v1, v0}, Lb/c/a/a/p/i;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lb/c/a/a/u/g;

    invoke-direct {v0}, Lb/c/a/a/u/g;-><init>()V

    if-eqz p2, :cond_1

    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lb/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object p2, v0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    new-instance v1, Lb/c/a/a/m/a;

    invoke-direct {v1, p1}, Lb/c/a/a/m/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p2, Lb/c/a/a/u/g$b;->b:Lb/c/a/a/m/a;

    invoke-virtual {v0}, Lb/c/a/a/u/g;->w()V

    .line 4
    invoke-static {p0}, La/h/j/n;->h(Landroid/view/View;)F

    move-result p1

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->o(F)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lb/c/a/a/u/g;

    if-eqz v1, :cond_0

    check-cast v0, Lb/c/a/a/u/g;

    invoke-static {p0, v0}, Lb/c/a/a/a;->v(Landroid/view/View;Lb/c/a/a/u/g;)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    invoke-static {p0, p1}, Lb/c/a/a/a;->u(Landroid/view/View;F)V

    return-void
.end method
