.class public La/b/c/p;
.super La/h/j/u;
.source ""


# instance fields
.field public final synthetic a:La/b/c/k;


# direct methods
.method public constructor <init>(La/b/c/k;)V
    .locals 0

    iput-object p1, p0, La/b/c/p;->a:La/b/c/k;

    invoke-direct {p0}, La/h/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->s:La/h/j/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La/h/j/s;->d(La/h/j/t;)La/h/j/s;

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iput-object v0, p1, La/b/c/k;->s:La/h/j/s;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, La/b/c/p;->a:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, La/h/j/n;->p(Landroid/view/View;)V

    :cond_0
    return-void
.end method
