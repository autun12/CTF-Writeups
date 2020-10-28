.class public Lb/b/a/l/w/c/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/w/c/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/q<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/w/c/m;

.field public final b:Lb/b/a/l/u/c0/b;


# direct methods
.method public constructor <init>(Lb/b/a/l/w/c/m;Lb/b/a/l/u/c0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/c/y;->a:Lb/b/a/l/w/c/m;

    iput-object p2, p0, Lb/b/a/l/w/c/y;->b:Lb/b/a/l/u/c0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 9

    check-cast p1, Ljava/io/InputStream;

    .line 1
    instance-of v0, p1, Lb/b/a/l/w/c/w;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/l/w/c/w;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/b/a/l/w/c/w;

    iget-object v1, p0, Lb/b/a/l/w/c/y;->b:Lb/b/a/l/u/c0/b;

    invoke-direct {v0, p1, v1}, Lb/b/a/l/w/c/w;-><init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 2
    :goto_0
    sget-object v1, Lb/b/a/r/d;->d:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/r/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    new-instance v2, Lb/b/a/r/d;

    invoke-direct {v2}, Lb/b/a/r/d;-><init>()V

    .line 3
    :cond_1
    iput-object p1, v2, Lb/b/a/r/d;->b:Ljava/io/InputStream;

    .line 4
    new-instance v4, Lb/b/a/r/h;

    invoke-direct {v4, v2}, Lb/b/a/r/h;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lb/b/a/l/w/c/y$a;

    invoke-direct {v8, p1, v2}, Lb/b/a/l/w/c/y$a;-><init>(Lb/b/a/l/w/c/w;Lb/b/a/r/d;)V

    :try_start_1
    iget-object v3, p0, Lb/b/a/l/w/c/y;->a:Lb/b/a/l/w/c/m;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lb/b/a/l/w/c/m;->b(Ljava/io/InputStream;IILb/b/a/l/o;Lb/b/a/l/w/c/m$b;)Lb/b/a/l/u/w;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lb/b/a/r/d;->a()V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/b/a/l/w/c/w;->b()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {v2}, Lb/b/a/r/d;->a()V

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/b/a/l/w/c/w;->b()V

    :cond_3
    throw p2

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    .line 1
    iget-object p1, p0, Lb/b/a/l/w/c/y;->a:Lb/b/a/l/w/c/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
