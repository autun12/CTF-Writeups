.class public Lb/c/a/a/l/f$c;
.super Lb/c/a/a/l/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/a/l/f;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb/c/a/a/l/f;


# direct methods
.method public constructor <init>(Lb/c/a/a/l/f;Landroid/content/Context;IZI)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/l/f$c;->H:Lb/c/a/a/l/f;

    iput p5, p0, Lb/c/a/a/l/f$c;->G:I

    invoke-direct {p0, p2, p3, p4}, Lb/c/a/a/l/u;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public X0(Landroidx/recyclerview/widget/RecyclerView$a0;[I)V
    .locals 2

    iget p1, p0, Lb/c/a/a/l/f$c;->G:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/c/a/a/l/f$c;->H:Lb/c/a/a/l/f;

    .line 1
    iget-object p1, p1, Lb/c/a/a/l/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lb/c/a/a/l/f$c;->H:Lb/c/a/a/l/f;

    .line 3
    iget-object p1, p1, Lb/c/a/a/l/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/c/a/a/l/f$c;->H:Lb/c/a/a/l/f;

    .line 5
    iget-object p1, p1, Lb/c/a/a/l/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lb/c/a/a/l/f$c;->H:Lb/c/a/a/l/f;

    .line 7
    iget-object p1, p1, Lb/c/a/a/l/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v0

    :goto_0
    return-void
.end method
