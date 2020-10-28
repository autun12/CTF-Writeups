.class public La/b/c/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/b/c/k;


# direct methods
.method public constructor <init>(La/b/c/k;)V
    .locals 0

    iput-object p1, p0, La/b/c/o;->b:La/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    iget-object v1, v0, La/b/c/k;->q:Landroid/widget/PopupWindow;

    iget-object v0, v0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    invoke-virtual {v0}, La/b/c/k;->I()V

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    invoke-virtual {v0}, La/b/c/k;->V()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    iget-object v0, v0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    iget-object v2, v0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, La/h/j/n;->a(Landroid/view/View;)La/h/j/s;

    move-result-object v2

    invoke-virtual {v2, v1}, La/h/j/s;->a(F)La/h/j/s;

    iput-object v2, v0, La/b/c/k;->s:La/h/j/s;

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    iget-object v0, v0, La/b/c/k;->s:La/h/j/s;

    new-instance v1, La/b/c/o$a;

    invoke-direct {v1, p0}, La/b/c/o$a;-><init>(La/b/c/o;)V

    .line 1
    iget-object v2, v0, La/h/j/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v1}, La/h/j/s;->e(Landroid/view/View;La/h/j/t;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    iget-object v0, v0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, La/b/c/o;->b:La/b/c/k;

    iget-object v0, v0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
