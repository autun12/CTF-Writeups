.class public Lb/a/b/j;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lb/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lb/a/b/i;

.field public final d:Lb/a/b/b;

.field public final e:Lb/a/b/r;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lb/a/b/i;Lb/a/b/b;Lb/a/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lb/a/b/o<",
            "*>;>;",
            "Lb/a/b/i;",
            "Lb/a/b/b;",
            "Lb/a/b/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/b/j;->f:Z

    iput-object p1, p0, Lb/a/b/j;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lb/a/b/j;->c:Lb/a/b/i;

    iput-object p3, p0, Lb/a/b/j;->d:Lb/a/b/b;

    iput-object p4, p0, Lb/a/b/j;->e:Lb/a/b/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lb/a/b/j;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/o;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v0, v3}, Lb/a/b/o;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/b/o;->h()Z

    .line 2
    iget v3, v0, Lb/a/b/o;->e:I

    .line 3
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 4
    iget-object v3, p0, Lb/a/b/j;->c:Lb/a/b/i;
    :try_end_0
    .catch Lb/a/b/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v3, Lb/a/b/w/b;

    :try_start_1
    invoke-virtual {v3, v0}, Lb/a/b/w/b;->f(Lb/a/b/o;)Lb/a/b/l;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lb/a/b/o;->a(Ljava/lang/String;)V

    iget-boolean v4, v3, Lb/a/b/l;->d:Z

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v0, Lb/a/b/o;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Lb/a/b/u; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v5, v0, Lb/a/b/o;->k:Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    :try_start_3
    const-string v3, "not-modified"

    .line 6
    invoke-virtual {v0, v3}, Lb/a/b/o;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/b/o;->i()V
    :try_end_3
    .catch Lb/a/b/u; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    .line 7
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 8
    :cond_0
    invoke-virtual {v0, v3}, Lb/a/b/o;->k(Lb/a/b/l;)Lb/a/b/q;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 9
    iget-boolean v4, v0, Lb/a/b/o;->j:Z

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, v3, Lb/a/b/q;->b:Lb/a/b/b$a;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lb/a/b/j;->d:Lb/a/b/b;

    invoke-virtual {v0}, Lb/a/b/o;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lb/a/b/q;->b:Lb/a/b/b$a;
    :try_end_5
    .catch Lb/a/b/u; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    check-cast v4, Lb/a/b/w/d;

    :try_start_6
    invoke-virtual {v4, v5, v6}, Lb/a/b/w/d;->d(Ljava/lang/String;Lb/a/b/b$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v4, v0, Lb/a/b/o;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Lb/a/b/u; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iput-boolean v1, v0, Lb/a/b/o;->k:Z

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 12
    :try_start_8
    iget-object v4, p0, Lb/a/b/j;->e:Lb/a/b/r;

    check-cast v4, Lb/a/b/g;

    .line 13
    invoke-virtual {v4, v0, v3, v2}, Lb/a/b/g;->a(Lb/a/b/o;Lb/a/b/q;Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0, v3}, Lb/a/b/o;->j(Lb/a/b/q;)V
    :try_end_8
    .catch Lb/a/b/u; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 15
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v3
    :try_end_a
    .catch Lb/a/b/u; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v3

    const-string v4, "Unhandled exception %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 17
    invoke-static {v4, v1}, Lb/a/b/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Volley"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    new-instance v1, Lb/a/b/u;

    invoke-direct {v1, v3}, Lb/a/b/u;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lb/a/b/j;->e:Lb/a/b/r;

    check-cast v3, Lb/a/b/g;

    .line 19
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "post-error"

    invoke-virtual {v0, v4}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 20
    new-instance v4, Lb/a/b/q;

    invoke-direct {v4, v1}, Lb/a/b/q;-><init>(Lb/a/b/u;)V

    .line 21
    iget-object v1, v3, Lb/a/b/g;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lb/a/b/g$b;

    invoke-direct {v3, v0, v4, v2}, Lb/a/b/g$b;-><init>(Lb/a/b/o;Lb/a/b/q;Ljava/lang/Runnable;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lb/a/b/j;->e:Lb/a/b/r;

    check-cast v3, Lb/a/b/g;

    .line 25
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "post-error"

    invoke-virtual {v0, v4}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 26
    new-instance v4, Lb/a/b/q;

    invoke-direct {v4, v1}, Lb/a/b/q;-><init>(Lb/a/b/u;)V

    .line 27
    iget-object v1, v3, Lb/a/b/g;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lb/a/b/g$b;

    invoke-direct {v3, v0, v4, v2}, Lb/a/b/g$b;-><init>(Lb/a/b/o;Lb/a/b/q;Ljava/lang/Runnable;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :goto_0
    invoke-virtual {v0}, Lb/a/b/o;->i()V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lb/a/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lb/a/b/j;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lb/a/b/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
