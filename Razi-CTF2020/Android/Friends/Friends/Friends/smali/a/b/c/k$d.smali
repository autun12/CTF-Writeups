.class public La/b/c/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:La/b/g/a$a;

.field public final synthetic b:La/b/c/k;


# direct methods
.method public constructor <init>(La/b/c/k;La/b/g/a$a;)V
    .locals 0

    iput-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/b/c/k$d;->a:La/b/g/a$a;

    return-void
.end method


# virtual methods
.method public a(La/b/g/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, v0, La/b/c/k;->u:Landroid/view/ViewGroup;

    invoke-static {v0}, La/h/j/n;->p(Landroid/view/View;)V

    iget-object v0, p0, La/b/c/k$d;->a:La/b/g/a$a;

    invoke-interface {v0, p1, p2}, La/b/g/a$a;->a(La/b/g/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(La/b/g/a;)V
    .locals 2

    iget-object v0, p0, La/b/c/k$d;->a:La/b/g/a$a;

    invoke-interface {v0, p1}, La/b/g/a$a;->b(La/b/g/a;)V

    iget-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, p1, La/b/c/k;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, v0, La/b/c/k;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/b/c/k;->I()V

    iget-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, La/h/j/n;->a(Landroid/view/View;)La/h/j/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/h/j/s;->a(F)La/h/j/s;

    iput-object v0, p1, La/b/c/k;->s:La/h/j/s;

    iget-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->s:La/h/j/s;

    new-instance v0, La/b/c/k$d$a;

    invoke-direct {v0, p0}, La/b/c/k$d$a;-><init>(La/b/c/k$d;)V

    .line 1
    iget-object v1, p1, La/h/j/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, La/h/j/s;->e(Landroid/view/View;La/h/j/t;)V

    .line 2
    :cond_1
    iget-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, p1, La/b/c/k;->h:La/b/c/i;

    if-eqz v0, :cond_2

    iget-object p1, p1, La/b/c/k;->o:La/b/g/a;

    invoke-interface {v0, p1}, La/b/c/i;->f(La/b/g/a;)V

    :cond_2
    iget-object p1, p0, La/b/c/k$d;->b:La/b/c/k;

    const/4 v0, 0x0

    iput-object v0, p1, La/b/c/k;->o:La/b/g/a;

    iget-object p1, p1, La/b/c/k;->u:Landroid/view/ViewGroup;

    invoke-static {p1}, La/h/j/n;->p(Landroid/view/View;)V

    return-void
.end method

.method public c(La/b/g/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, La/b/c/k$d;->a:La/b/g/a$a;

    invoke-interface {v0, p1, p2}, La/b/g/a$a;->c(La/b/g/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(La/b/g/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, La/b/c/k$d;->a:La/b/g/a$a;

    invoke-interface {v0, p1, p2}, La/b/g/a$a;->d(La/b/g/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
