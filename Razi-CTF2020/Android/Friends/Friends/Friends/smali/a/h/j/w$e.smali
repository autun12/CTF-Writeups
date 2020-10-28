.class public La/h/j/w$e;
.super La/h/j/w$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/j/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public d:La/h/d/b;


# direct methods
.method public constructor <init>(La/h/j/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/h/j/w$d;-><init>(La/h/j/w;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, La/h/j/w$e;->d:La/h/d/b;

    return-void
.end method


# virtual methods
.method public b()La/h/j/w;
    .locals 1

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, La/h/j/w;->h(Landroid/view/WindowInsets;)La/h/j/w;

    move-result-object v0

    return-object v0
.end method

.method public c()La/h/j/w;
    .locals 1

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, La/h/j/w;->h(Landroid/view/WindowInsets;)La/h/j/w;

    move-result-object v0

    return-object v0
.end method

.method public final e()La/h/d/b;
    .locals 4

    iget-object v0, p0, La/h/j/w$e;->d:La/h/d/b;

    if-nez v0, :cond_0

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, La/h/d/b;->a(IIII)La/h/d/b;

    move-result-object v0

    iput-object v0, p0, La/h/j/w$e;->d:La/h/d/b;

    :cond_0
    iget-object v0, p0, La/h/j/w$e;->d:La/h/d/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
