.class public La/b/c/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/h/j/k;


# instance fields
.field public final synthetic a:La/b/c/k;


# direct methods
.method public constructor <init>(La/b/c/k;)V
    .locals 0

    iput-object p1, p0, La/b/c/l;->a:La/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;La/h/j/w;)La/h/j/w;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, La/h/j/w;->d()I

    move-result v1

    iget-object v2, p0, La/b/c/l;->a:La/b/c/k;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, La/b/c/k;->X(La/h/j/w;Landroid/graphics/Rect;)I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, La/h/j/w;->b()I

    move-result v1

    invoke-virtual {p2}, La/h/j/w;->c()I

    move-result v3

    invoke-virtual {p2}, La/h/j/w;->a()I

    move-result v4

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_0

    .line 1
    new-instance v5, La/h/j/w$b;

    invoke-direct {v5, p2}, La/h/j/w$b;-><init>(La/h/j/w;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x14

    if-lt v0, v5, :cond_1

    new-instance v5, La/h/j/w$a;

    invoke-direct {v5, p2}, La/h/j/w$a;-><init>(La/h/j/w;)V

    goto :goto_0

    :cond_1
    new-instance v5, La/h/j/w$c;

    invoke-direct {v5, p2}, La/h/j/w$c;-><init>(La/h/j/w;)V

    .line 2
    :goto_0
    invoke-static {v1, v2, v3, v4}, La/h/d/b;->a(IIII)La/h/d/b;

    move-result-object p2

    .line 3
    invoke-virtual {v5, p2}, La/h/j/w$c;->c(La/h/d/b;)V

    .line 4
    invoke-virtual {v5}, La/h/j/w$c;->a()La/h/j/w;

    move-result-object p2

    .line 5
    :cond_2
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    invoke-virtual {p2}, La/h/j/w;->g()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    new-instance p2, La/h/j/w;

    invoke-direct {p2, p1}, La/h/j/w;-><init>(Landroid/view/WindowInsets;)V

    :cond_3
    return-object p2
.end method
