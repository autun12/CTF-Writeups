.class public Lb/c/a/a/l/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lb/c/a/a/l/r;

.field public final synthetic c:Lb/c/a/a/l/f;


# direct methods
.method public constructor <init>(Lb/c/a/a/l/f;Lb/c/a/a/l/r;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/l/k;->c:Lb/c/a/a/l/f;

    iput-object p2, p0, Lb/c/a/a/l/k;->b:Lb/c/a/a/l/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lb/c/a/a/l/k;->c:Lb/c/a/a/l/f;

    invoke-virtual {p1}, Lb/c/a/a/l/f;->T()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lb/c/a/a/l/k;->c:Lb/c/a/a/l/f;

    .line 1
    iget-object v0, v0, Lb/c/a/a/l/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/l/k;->c:Lb/c/a/a/l/f;

    iget-object v1, p0, Lb/c/a/a/l/k;->b:Lb/c/a/a/l/r;

    invoke-virtual {v1, p1}, Lb/c/a/a/l/r;->e(I)Lb/c/a/a/l/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/l/f;->V(Lb/c/a/a/l/o;)V

    :cond_0
    return-void
.end method
