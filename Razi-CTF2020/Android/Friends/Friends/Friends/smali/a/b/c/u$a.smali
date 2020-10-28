.class public La/b/c/u$a;
.super La/h/j/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/c/u;


# direct methods
.method public constructor <init>(La/b/c/u;)V
    .locals 0

    iput-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    invoke-direct {p0}, La/h/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    iget-boolean v0, p1, La/b/c/u;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, La/b/c/u;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    iget-object p1, p1, La/b/c/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    iget-object p1, p1, La/b/c/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    iget-object p1, p1, La/b/c/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    const/4 v0, 0x0

    iput-object v0, p1, La/b/c/u;->t:La/b/g/g;

    .line 1
    iget-object v1, p1, La/b/c/u;->k:La/b/g/a$a;

    if-eqz v1, :cond_1

    iget-object v2, p1, La/b/c/u;->j:La/b/g/a;

    invoke-interface {v1, v2}, La/b/g/a$a;->b(La/b/g/a;)V

    iput-object v0, p1, La/b/c/u;->j:La/b/g/a;

    iput-object v0, p1, La/b/c/u;->k:La/b/g/a$a;

    .line 2
    :cond_1
    iget-object p1, p0, La/b/c/u$a;->a:La/b/c/u;

    iget-object p1, p1, La/b/c/u;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_2

    invoke-static {p1}, La/h/j/n;->p(Landroid/view/View;)V

    :cond_2
    return-void
.end method
