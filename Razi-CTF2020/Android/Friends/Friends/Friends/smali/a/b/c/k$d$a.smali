.class public La/b/c/k$d$a;
.super La/h/j/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/c/k$d;->b(La/b/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/c/k$d;


# direct methods
.method public constructor <init>(La/b/c/k$d;)V
    .locals 0

    iput-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    invoke-direct {p0}, La/h/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    iget-object p1, p1, La/b/c/k$d;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    iget-object p1, p1, La/b/c/k$d;->b:La/b/c/k;

    iget-object v0, p1, La/b/c/k;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    iget-object p1, p1, La/b/c/k$d;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, La/h/j/n;->p(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    iget-object p1, p1, La/b/c/k$d;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    iget-object p1, p1, La/b/c/k$d;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->s:La/h/j/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La/h/j/s;->d(La/h/j/t;)La/h/j/s;

    iget-object p1, p0, La/b/c/k$d$a;->a:La/b/c/k$d;

    iget-object p1, p1, La/b/c/k$d;->b:La/b/c/k;

    iput-object v0, p1, La/b/c/k;->s:La/h/j/s;

    iget-object p1, p1, La/b/c/k;->u:Landroid/view/ViewGroup;

    invoke-static {p1}, La/h/j/n;->p(Landroid/view/View;)V

    return-void
.end method
