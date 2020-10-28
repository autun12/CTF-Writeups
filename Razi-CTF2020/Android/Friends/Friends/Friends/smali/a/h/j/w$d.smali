.class public La/h/j/w$d;
.super La/h/j/w$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/j/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets;

.field public c:La/h/d/b;


# direct methods
.method public constructor <init>(La/h/j/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, La/h/j/w$h;-><init>(La/h/j/w;)V

    const/4 p1, 0x0

    iput-object p1, p0, La/h/j/w$d;->c:La/h/d/b;

    iput-object p2, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final f()La/h/d/b;
    .locals 4

    iget-object v0, p0, La/h/j/w$d;->c:La/h/d/b;

    if-nez v0, :cond_0

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, La/h/d/b;->a(IIII)La/h/d/b;

    move-result-object v0

    iput-object v0, p0, La/h/j/w$d;->c:La/h/d/b;

    :cond_0
    iget-object v0, p0, La/h/j/w$d;->c:La/h/d/b;

    return-object v0
.end method

.method public g(IIII)La/h/j/w;
    .locals 3

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, La/h/j/w;->h(Landroid/view/WindowInsets;)La/h/j/w;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, La/h/j/w$b;

    invoke-direct {v1, v0}, La/h/j/w$b;-><init>(La/h/j/w;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    new-instance v1, La/h/j/w$a;

    invoke-direct {v1, v0}, La/h/j/w$a;-><init>(La/h/j/w;)V

    goto :goto_0

    :cond_1
    new-instance v1, La/h/j/w$c;

    invoke-direct {v1, v0}, La/h/j/w$c;-><init>(La/h/j/w;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, La/h/j/w$d;->f()La/h/d/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, La/h/j/w;->f(La/h/d/b;IIII)La/h/d/b;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, La/h/j/w$c;->c(La/h/d/b;)V

    .line 4
    invoke-virtual {p0}, La/h/j/w$h;->e()La/h/d/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, La/h/j/w;->f(La/h/d/b;IIII)La/h/d/b;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, La/h/j/w$c;->b(La/h/d/b;)V

    .line 6
    invoke-virtual {v1}, La/h/j/w$c;->a()La/h/j/w;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
