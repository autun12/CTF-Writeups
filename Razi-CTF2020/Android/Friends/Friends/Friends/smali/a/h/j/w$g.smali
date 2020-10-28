.class public La/h/j/w$g;
.super La/h/j/w$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/j/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(La/h/j/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/h/j/w$f;-><init>(La/h/j/w;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public g(IIII)La/h/j/w;
    .locals 1

    iget-object v0, p0, La/h/j/w$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, La/h/j/w;->h(Landroid/view/WindowInsets;)La/h/j/w;

    move-result-object p1

    return-object p1
.end method
