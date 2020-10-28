.class public Lb/c/a/a/l/l;
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

    iput-object p1, p0, Lb/c/a/a/l/l;->c:Lb/c/a/a/l/f;

    iput-object p2, p0, Lb/c/a/a/l/l;->b:Lb/c/a/a/l/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lb/c/a/a/l/l;->c:Lb/c/a/a/l/f;

    invoke-virtual {p1}, Lb/c/a/a/l/f;->T()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/c/a/a/l/l;->c:Lb/c/a/a/l/f;

    iget-object v1, p0, Lb/c/a/a/l/l;->b:Lb/c/a/a/l/r;

    invoke-virtual {v1, p1}, Lb/c/a/a/l/r;->e(I)Lb/c/a/a/l/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c/a/a/l/f;->V(Lb/c/a/a/l/o;)V

    :cond_0
    return-void
.end method
