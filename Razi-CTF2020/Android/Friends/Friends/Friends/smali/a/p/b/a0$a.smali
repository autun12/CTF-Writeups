.class public La/p/b/a0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/p/b/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "La/p/b/a0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$l$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$l$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La/h/i/d;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, La/h/i/d;-><init>(I)V

    sput-object v0, La/p/b/a0$a;->d:La/h/i/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/p/b/a0$a;
    .locals 1

    sget-object v0, La/p/b/a0$a;->d:La/h/i/c;

    invoke-interface {v0}, La/h/i/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/p/b/a0$a;

    if-nez v0, :cond_0

    new-instance v0, La/p/b/a0$a;

    invoke-direct {v0}, La/p/b/a0$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(La/p/b/a0$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/p/b/a0$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, La/p/b/a0$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    iput-object v0, p0, La/p/b/a0$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    sget-object v0, La/p/b/a0$a;->d:La/h/i/c;

    invoke-interface {v0, p0}, La/h/i/c;->a(Ljava/lang/Object;)Z

    return-void
.end method
