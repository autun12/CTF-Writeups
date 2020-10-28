.class public Lb/b/a/l/u/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lb/b/a/p/f;

.field public final synthetic c:Lb/b/a/l/u/m;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/m;Lb/b/a/p/f;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/u/m$a;->c:Lb/b/a/l/u/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/l/u/m$a;->b:Lb/b/a/p/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lb/b/a/l/u/m$a;->b:Lb/b/a/p/f;

    check-cast v0, Lb/b/a/p/g;

    .line 1
    iget-object v1, v0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v1}, Lb/b/a/r/k/d;->a()V

    iget-object v0, v0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/l/u/m$a;->c:Lb/b/a/l/u/m;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lb/b/a/l/u/m$a;->c:Lb/b/a/l/u/m;

    iget-object v2, v2, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    iget-object v3, p0, Lb/b/a/l/u/m$a;->b:Lb/b/a/p/f;

    .line 3
    iget-object v2, v2, Lb/b/a/l/u/m$e;->b:Ljava/util/List;

    .line 4
    new-instance v4, Lb/b/a/l/u/m$d;

    .line 5
    sget-object v5, Lb/b/a/r/e;->b:Ljava/util/concurrent/Executor;

    .line 6
    invoke-direct {v4, v3, v5}, Lb/b/a/l/u/m$d;-><init>(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lb/b/a/l/u/m$a;->c:Lb/b/a/l/u/m;

    iget-object v3, p0, Lb/b/a/l/u/m$a;->b:Lb/b/a/p/f;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v2, Lb/b/a/l/u/m;->u:Lb/b/a/l/u/r;

    check-cast v3, Lb/b/a/p/g;

    const/4 v4, 0x5

    .line 10
    invoke-virtual {v3, v2, v4}, Lb/b/a/p/g;->n(Lb/b/a/l/u/r;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 11
    :try_start_3
    new-instance v3, Lb/b/a/l/u/c;

    invoke-direct {v3, v2}, Lb/b/a/l/u/c;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 12
    :cond_0
    :goto_0
    iget-object v2, p0, Lb/b/a/l/u/m$a;->c:Lb/b/a/l/u/m;

    invoke-virtual {v2}, Lb/b/a/l/u/m;->d()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
