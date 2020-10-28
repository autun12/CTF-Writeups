.class public final Lb/b/a/l/u/m$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/b/a/p/f;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/u/m$d;->a:Lb/b/a/p/f;

    iput-object p2, p0, Lb/b/a/l/u/m$d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb/b/a/l/u/m$d;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/l/u/m$d;

    iget-object v0, p0, Lb/b/a/l/u/m$d;->a:Lb/b/a/p/f;

    iget-object p1, p1, Lb/b/a/l/u/m$d;->a:Lb/b/a/p/f;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/m$d;->a:Lb/b/a/p/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
