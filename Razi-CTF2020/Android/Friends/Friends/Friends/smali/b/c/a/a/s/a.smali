.class public Lb/c/a/a/s/a;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lb/c/a/a/u/n;
.implements La/h/d/l/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/s/a$b;
    }
.end annotation


# instance fields
.field public b:Lb/c/a/a/s/a$b;


# direct methods
.method public constructor <init>(Lb/c/a/a/s/a$b;Lb/c/a/a/s/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    return-void
.end method

.method public constructor <init>(Lb/c/a/a/u/j;)V
    .locals 2

    new-instance v0, Lb/c/a/a/s/a$b;

    new-instance v1, Lb/c/a/a/u/g;

    invoke-direct {v1, p1}, Lb/c/a/a/u/g;-><init>(Lb/c/a/a/u/j;)V

    invoke-direct {v0, v1}, Lb/c/a/a/s/a$b;-><init>(Lb/c/a/a/u/g;)V

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-boolean v1, v0, Lb/c/a/a/s/a$b;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0}, Lb/c/a/a/u/g;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/a/s/a$b;

    iget-object v1, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    invoke-direct {v0, v1}, Lb/c/a/a/s/a$b;-><init>(Lb/c/a/a/s/a$b;)V

    iput-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v1, v1, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1}, Lb/c/a/a/s/b;->b([I)Z

    move-result p1

    iget-object v1, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-boolean v3, v1, Lb/c/a/a/s/a$b;->b:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, v1, Lb/c/a/a/s/a$b;->b:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lb/c/a/a/u/j;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    .line 1
    iget-object v1, v0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput-object p1, v1, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {v0}, Lb/c/a/a/u/g;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/s/a;->b:Lb/c/a/a/s/a$b;

    iget-object v0, v0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    invoke-virtual {v0, p1}, Lb/c/a/a/u/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
