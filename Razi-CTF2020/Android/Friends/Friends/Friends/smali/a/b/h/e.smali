.class public La/b/h/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/view/View;

.field public final b:La/b/h/j;

.field public c:I

.field public d:La/b/h/v0;

.field public e:La/b/h/v0;

.field public f:La/b/h/v0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/b/h/e;->c:I

    iput-object p1, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-static {}, La/b/h/j;->a()La/b/h/j;

    move-result-object p1

    iput-object p1, p0, La/b/h/e;->b:La/b/h/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    iget-object v5, p0, La/b/h/e;->d:La/b/h/v0;

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_9

    .line 2
    iget-object v5, p0, La/b/h/e;->f:La/b/h/v0;

    if-nez v5, :cond_2

    new-instance v5, La/b/h/v0;

    invoke-direct {v5}, La/b/h/v0;-><init>()V

    iput-object v5, p0, La/b/h/e;->f:La/b/h/v0;

    :cond_2
    iget-object v5, p0, La/b/h/e;->f:La/b/h/v0;

    const/4 v6, 0x0

    .line 3
    iput-object v6, v5, La/b/h/v0;->a:Landroid/content/res/ColorStateList;

    iput-boolean v4, v5, La/b/h/v0;->d:Z

    iput-object v6, v5, La/b/h/v0;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v5, La/b/h/v0;->c:Z

    .line 4
    iget-object v7, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-static {v7}, La/h/j/n;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_3

    iput-boolean v3, v5, La/b/h/v0;->d:Z

    iput-object v7, v5, La/b/h/v0;->a:Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v7, p0, La/b/h/e;->a:Landroid/view/View;

    if-lt v1, v2, :cond_4

    .line 5
    invoke-virtual {v7}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    goto :goto_2

    :cond_4
    instance-of v1, v7, La/h/j/m;

    if-eqz v1, :cond_5

    check-cast v7, La/h/j/m;

    invoke-interface {v7}, La/h/j/m;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 6
    iput-boolean v3, v5, La/b/h/v0;->c:Z

    iput-object v6, v5, La/b/h/v0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_6
    iget-boolean v1, v5, La/b/h/v0;->d:Z

    if-nez v1, :cond_8

    iget-boolean v1, v5, La/b/h/v0;->c:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v1, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {v0, v5, v1}, La/b/h/j;->f(Landroid/graphics/drawable/Drawable;La/b/h/v0;[I)V

    :goto_4
    if-eqz v3, :cond_9

    return-void

    .line 7
    :cond_9
    iget-object v1, p0, La/b/h/e;->e:La/b/h/v0;

    if-eqz v1, :cond_a

    iget-object v2, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, La/b/h/j;->f(Landroid/graphics/drawable/Drawable;La/b/h/v0;[I)V

    goto :goto_5

    :cond_a
    iget-object v1, p0, La/b/h/e;->d:La/b/h/v0;

    if-eqz v1, :cond_b

    iget-object v2, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, La/b/h/j;->f(Landroid/graphics/drawable/Drawable;La/b/h/v0;[I)V

    :cond_b
    :goto_5
    return-void
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/b/h/v0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/b/h/v0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(Landroid/util/AttributeSet;I)V
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, La/b/b;->z:[I

    const/4 v9, 0x0

    invoke-static {v1, p1, v4, p2, v9}, La/b/h/x0;->q(Landroid/content/Context;Landroid/util/AttributeSet;[III)La/b/h/x0;

    move-result-object v1

    iget-object v2, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1
    iget-object v6, v1, La/b/h/x0;->b:Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    move-object v5, p1

    move v7, p2

    .line 2
    invoke-static/range {v2 .. v8}, La/h/j/n;->q(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {v1, v9}, La/b/h/x0;->o(I)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v9, p2}, La/b/h/x0;->l(II)I

    move-result p1

    iput p1, p0, La/b/h/e;->c:I

    iget-object p1, p0, La/b/h/e;->b:La/b/h/j;

    iget-object v2, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, La/b/h/e;->c:I

    invoke-virtual {p1, v2, v3}, La/b/h/j;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, La/b/h/e;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, La/b/h/x0;->o(I)Z

    move-result v2

    const/16 v3, 0x15

    if-eqz v2, :cond_5

    iget-object v2, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, La/b/h/x0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-lt v0, v3, :cond_4

    .line 3
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    instance-of v5, v2, La/h/j/m;

    if-eqz v5, :cond_5

    check-cast v2, La/h/j/m;

    invoke-interface {v2, v4}, La/h/j/m;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    :goto_3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2}, La/b/h/x0;->o(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v1, v2, p2}, La/b/h/x0;->j(II)I

    move-result p2

    const/4 v2, 0x0

    invoke-static {p2, v2}, La/b/h/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    if-lt v0, v3, :cond_9

    .line 5
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-ne v0, v3, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v9, 0x1

    :cond_7
    if-eqz p2, :cond_a

    if-eqz v9, :cond_a

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    instance-of p1, v4, La/h/j/m;

    if-eqz p1, :cond_a

    check-cast v4, La/h/j/m;

    invoke-interface {v4, p2}, La/h/j/m;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_a
    :goto_4
    iget-object p1, v1, La/b/h/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_5
    iget-object p2, v1, La/b/h/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    throw p1
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, La/b/h/e;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/b/h/e;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, La/b/h/e;->a()V

    return-void
.end method

.method public f(I)V
    .locals 2

    iput p1, p0, La/b/h/e;->c:I

    iget-object v0, p0, La/b/h/e;->b:La/b/h/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, La/b/h/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, La/b/h/j;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, La/b/h/e;->g(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, La/b/h/e;->a()V

    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, La/b/h/e;->d:La/b/h/v0;

    if-nez v0, :cond_0

    new-instance v0, La/b/h/v0;

    invoke-direct {v0}, La/b/h/v0;-><init>()V

    iput-object v0, p0, La/b/h/e;->d:La/b/h/v0;

    :cond_0
    iget-object v0, p0, La/b/h/e;->d:La/b/h/v0;

    iput-object p1, v0, La/b/h/v0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, La/b/h/v0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, La/b/h/e;->d:La/b/h/v0;

    :goto_0
    invoke-virtual {p0}, La/b/h/e;->a()V

    return-void
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    if-nez v0, :cond_0

    new-instance v0, La/b/h/v0;

    invoke-direct {v0}, La/b/h/v0;-><init>()V

    iput-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    :cond_0
    iget-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    iput-object p1, v0, La/b/h/v0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, La/b/h/v0;->d:Z

    invoke-virtual {p0}, La/b/h/e;->a()V

    return-void
.end method

.method public i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    if-nez v0, :cond_0

    new-instance v0, La/b/h/v0;

    invoke-direct {v0}, La/b/h/v0;-><init>()V

    iput-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    :cond_0
    iget-object v0, p0, La/b/h/e;->e:La/b/h/v0;

    iput-object p1, v0, La/b/h/v0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, La/b/h/v0;->c:Z

    invoke-virtual {p0}, La/b/h/e;->a()V

    return-void
.end method
