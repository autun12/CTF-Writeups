.class public La/p/b/q;
.super La/p/b/x;
.source ""


# instance fields
.field public d:La/p/b/u;

.field public e:La/p/b/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/p/b/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, La/p/b/q;->g(Landroidx/recyclerview/widget/RecyclerView$o;)La/p/b/u;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, La/p/b/q;->d(Landroid/view/View;La/p/b/u;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->f()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, La/p/b/q;->h(Landroidx/recyclerview/widget/RecyclerView$o;)La/p/b/u;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, La/p/b/q;->d(Landroid/view/View;La/p/b/u;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La/p/b/q;->h(Landroidx/recyclerview/widget/RecyclerView$o;)La/p/b/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, La/p/b/q;->g(Landroidx/recyclerview/widget/RecyclerView$o;)La/p/b/u;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, La/p/b/q;->f(Landroidx/recyclerview/widget/RecyclerView$o;La/p/b/u;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Landroid/view/View;La/p/b/u;)I
    .locals 1

    invoke-virtual {p2, p1}, La/p/b/u;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p1}, La/p/b/u;->c(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p2}, La/p/b/u;->k()I

    move-result v0

    invoke-virtual {p2}, La/p/b/u;->l()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$o;La/p/b/u;II)I
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, La/p/b/x;->b:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p3, p0, La/p/b/x;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    const/4 p4, 0x0

    aput p3, v0, p4

    iget-object p3, p0, La/p/b/x;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalY()I

    move-result p3

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->y()I

    move-result p3

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move-object v4, v3

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p3, :cond_4

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->x(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$o;->P(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ge v9, v5, :cond_2

    move-object v3, v8

    move v5, v9

    :cond_2
    if-le v9, v6, :cond_3

    move-object v4, v8

    move v6, v9

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v3}, La/p/b/u;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v4}, La/p/b/u;->e(Landroid/view/View;)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v3}, La/p/b/u;->b(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2, v4}, La/p/b/u;->b(Landroid/view/View;)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    mul-float p1, p1, v2

    sub-int/2addr v6, v5

    add-int/2addr v6, v1

    int-to-float p2, v6

    div-float v2, p1, p2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_8

    return p4

    .line 3
    :cond_8
    aget p1, v0, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_9

    aget p1, v0, p4

    goto :goto_3

    :cond_9
    aget p1, v0, v1

    :goto_3
    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$o;La/p/b/u;)Landroid/view/View;
    .locals 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->y()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, La/p/b/u;->k()I

    move-result v2

    invoke-virtual {p2}, La/p/b/u;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->x(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, La/p/b/u;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, La/p/b/u;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$o;)La/p/b/u;
    .locals 1

    iget-object v0, p0, La/p/b/q;->e:La/p/b/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/p/b/u;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_1

    .line 1
    :cond_0
    new-instance v0, La/p/b/s;

    invoke-direct {v0, p1}, La/p/b/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 2
    iput-object v0, p0, La/p/b/q;->e:La/p/b/u;

    :cond_1
    iget-object p1, p0, La/p/b/q;->e:La/p/b/u;

    return-object p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$o;)La/p/b/u;
    .locals 1

    iget-object v0, p0, La/p/b/q;->d:La/p/b/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, La/p/b/u;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_1

    .line 1
    :cond_0
    new-instance v0, La/p/b/t;

    invoke-direct {v0, p1}, La/p/b/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 2
    iput-object v0, p0, La/p/b/q;->d:La/p/b/u;

    :cond_1
    iget-object p1, p0, La/p/b/q;->d:La/p/b/u;

    return-object p1
.end method
