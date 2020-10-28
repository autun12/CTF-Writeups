.class public La/r/b$h;
.super La/r/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/r/b;->k(Landroid/view/ViewGroup;La/r/q;La/r/q;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(La/r/b;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, La/r/b$h;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, La/r/l;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/r/b$h;->a:Z

    return-void
.end method


# virtual methods
.method public b(La/r/i;)V
    .locals 1

    iget-object p1, p0, La/r/b$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/r/s;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, La/r/b$h;->a:Z

    return-void
.end method

.method public c(La/r/i;)V
    .locals 2

    iget-boolean v0, p0, La/r/b$h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/r/b$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/r/s;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, La/r/i;->v(La/r/i$d;)La/r/i;

    return-void
.end method

.method public d(La/r/i;)V
    .locals 1

    iget-object p1, p0, La/r/b$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/r/s;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public e(La/r/i;)V
    .locals 1

    iget-object p1, p0, La/r/b$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La/r/s;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
