.class public La/p/b/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/p/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$d0;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$d0;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/p/b/k$b;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    iput p2, p0, La/p/b/k$b;->b:I

    iput p3, p0, La/p/b/k$b;->c:I

    iput p4, p0, La/p/b/k$b;->d:I

    iput p5, p0, La/p/b/k$b;->e:I

    return-void
.end method
