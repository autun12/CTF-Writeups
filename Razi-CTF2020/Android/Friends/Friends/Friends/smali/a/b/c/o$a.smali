.class public La/b/c/o$a;
.super La/h/j/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/c/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/c/o;


# direct methods
.method public constructor <init>(La/b/c/o;)V
    .locals 0

    iput-object p1, p0, La/b/c/o$a;->a:La/b/c/o;

    invoke-direct {p0}, La/h/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/b/c/o$a;->a:La/b/c/o;

    iget-object p1, p1, La/b/c/o;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, La/b/c/o$a;->a:La/b/c/o;

    iget-object p1, p1, La/b/c/o;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->s:La/h/j/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La/h/j/s;->d(La/h/j/t;)La/h/j/s;

    iget-object p1, p0, La/b/c/o$a;->a:La/b/c/o;

    iget-object p1, p1, La/b/c/o;->b:La/b/c/k;

    iput-object v0, p1, La/b/c/k;->s:La/h/j/s;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/b/c/o$a;->a:La/b/c/o;

    iget-object p1, p1, La/b/c/o;->b:La/b/c/k;

    iget-object p1, p1, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
