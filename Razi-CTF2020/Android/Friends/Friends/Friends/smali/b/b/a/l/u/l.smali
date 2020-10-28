.class public Lb/b/a/l/u/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/n;
.implements Lb/b/a/l/u/d0/i$a;
.implements Lb/b/a/l/u/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/u/l$b;,
        Lb/b/a/l/u/l$a;,
        Lb/b/a/l/u/l$c;,
        Lb/b/a/l/u/l$d;
    }
.end annotation


# static fields
.field public static final i:Z


# instance fields
.field public final a:Lb/b/a/l/u/t;

.field public final b:Lb/b/a/l/u/p;

.field public final c:Lb/b/a/l/u/d0/i;

.field public final d:Lb/b/a/l/u/l$b;

.field public final e:Lb/b/a/l/u/z;

.field public final f:Lb/b/a/l/u/l$c;

.field public final g:Lb/b/a/l/u/l$a;

.field public final h:Lb/b/a/l/u/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lb/b/a/l/u/l;->i:Z

    return-void
.end method

.method public constructor <init>(Lb/b/a/l/u/d0/i;Lb/b/a/l/u/d0/a$a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/u/l;->c:Lb/b/a/l/u/d0/i;

    new-instance v0, Lb/b/a/l/u/l$c;

    invoke-direct {v0, p2}, Lb/b/a/l/u/l$c;-><init>(Lb/b/a/l/u/d0/a$a;)V

    iput-object v0, p0, Lb/b/a/l/u/l;->f:Lb/b/a/l/u/l$c;

    new-instance p2, Lb/b/a/l/u/a;

    invoke-direct {p2, p7}, Lb/b/a/l/u/a;-><init>(Z)V

    iput-object p2, p0, Lb/b/a/l/u/l;->h:Lb/b/a/l/u/a;

    .line 2
    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p0, p2, Lb/b/a/l/u/a;->d:Lb/b/a/l/u/q$a;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3
    new-instance p2, Lb/b/a/l/u/p;

    invoke-direct {p2}, Lb/b/a/l/u/p;-><init>()V

    iput-object p2, p0, Lb/b/a/l/u/l;->b:Lb/b/a/l/u/p;

    new-instance p2, Lb/b/a/l/u/t;

    invoke-direct {p2}, Lb/b/a/l/u/t;-><init>()V

    iput-object p2, p0, Lb/b/a/l/u/l;->a:Lb/b/a/l/u/t;

    new-instance p2, Lb/b/a/l/u/l$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lb/b/a/l/u/l$b;-><init>(Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/n;Lb/b/a/l/u/q$a;)V

    iput-object p2, p0, Lb/b/a/l/u/l;->d:Lb/b/a/l/u/l$b;

    new-instance p2, Lb/b/a/l/u/l$a;

    invoke-direct {p2, v0}, Lb/b/a/l/u/l$a;-><init>(Lb/b/a/l/u/i$d;)V

    iput-object p2, p0, Lb/b/a/l/u/l;->g:Lb/b/a/l/u/l$a;

    new-instance p2, Lb/b/a/l/u/z;

    invoke-direct {p2}, Lb/b/a/l/u/z;-><init>()V

    iput-object p2, p0, Lb/b/a/l/u/l;->e:Lb/b/a/l/u/z;

    check-cast p1, Lb/b/a/l/u/d0/h;

    .line 4
    iput-object p0, p1, Lb/b/a/l/u/d0/h;->d:Lb/b/a/l/u/d0/i$a;

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static d(Ljava/lang/String;JLb/b/a/l/m;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lb/b/a/r/f;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/m;Lb/b/a/l/u/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/m;",
            "Lb/b/a/l/u/q<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/l/u/l;->h:Lb/b/a/l/u/a;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/u/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/l/u/a$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lb/b/a/l/u/a$b;->c:Lb/b/a/l/u/w;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit v0

    .line 4
    iget-boolean v0, p2, Lb/b/a/l/u/q;->b:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lb/b/a/l/u/l;->c:Lb/b/a/l/u/d0/i;

    check-cast v0, Lb/b/a/l/u/d0/h;

    .line 6
    invoke-virtual {v0, p1, p2}, Lb/b/a/r/g;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/l/u/w;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lb/b/a/l/u/l;->e:Lb/b/a/l/u/z;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lb/b/a/l/u/z;->a(Lb/b/a/l/u/w;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method

.method public b(Lb/b/a/d;Ljava/lang/Object;Lb/b/a/l/m;IILjava/lang/Class;Ljava/lang/Class;Lb/b/a/e;Lb/b/a/l/u/k;Ljava/util/Map;ZZLb/b/a/l/o;ZZZZLb/b/a/p/f;Ljava/util/concurrent/Executor;)Lb/b/a/l/u/l$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/b/a/d;",
            "Ljava/lang/Object;",
            "Lb/b/a/l/m;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lb/b/a/e;",
            "Lb/b/a/l/u/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/l/s<",
            "*>;>;ZZ",
            "Lb/b/a/l/o;",
            "ZZZZ",
            "Lb/b/a/p/f;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/b/a/l/u/l$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-boolean v0, Lb/b/a/l/u/l;->i:Z

    if-eqz v0, :cond_0

    .line 1
    sget v0, Lb/b/a/r/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 2
    iget-object v0, v15, Lb/b/a/l/u/l;->b:Lb/b/a/l/u/p;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb/b/a/l/u/o;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lb/b/a/l/u/o;-><init>(Ljava/lang/Object;Lb/b/a/l/m;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/o;)V

    .line 4
    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Lb/b/a/l/u/l;->c(Lb/b/a/l/u/o;ZJ)Lb/b/a/l/u/q;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-virtual/range {v1 .. v23}, Lb/b/a/l/u/l;->g(Lb/b/a/d;Ljava/lang/Object;Lb/b/a/l/m;IILjava/lang/Class;Ljava/lang/Class;Lb/b/a/e;Lb/b/a/l/u/k;Ljava/util/Map;ZZLb/b/a/l/o;ZZZZLb/b/a/p/f;Ljava/util/concurrent/Executor;Lb/b/a/l/u/o;J)Lb/b/a/l/u/l$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lb/b/a/l/a;->f:Lb/b/a/l/a;

    move-object/from16 v2, p18

    check-cast v2, Lb/b/a/p/g;

    invoke-virtual {v2, v1, v0}, Lb/b/a/p/g;->o(Lb/b/a/l/u/w;Lb/b/a/l/a;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Lb/b/a/l/u/o;ZJ)Lb/b/a/l/u/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/o;",
            "ZJ)",
            "Lb/b/a/l/u/q<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p2, p0, Lb/b/a/l/u/l;->h:Lb/b/a/l/u/a;

    .line 2
    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lb/b/a/l/u/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/l/u/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/l/u/q;

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Lb/b/a/l/u/a;->b(Lb/b/a/l/u/a$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit p2

    :goto_0
    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v2}, Lb/b/a/l/u/q;->a()V

    :cond_3
    if-eqz v2, :cond_5

    .line 4
    sget-boolean p2, Lb/b/a/l/u/l;->i:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    invoke-static {p2, p3, p4, p1}, Lb/b/a/l/u/l;->d(Ljava/lang/String;JLb/b/a/l/m;)V

    :cond_4
    return-object v2

    .line 5
    :cond_5
    iget-object p2, p0, Lb/b/a/l/u/l;->c:Lb/b/a/l/u/d0/i;

    check-cast p2, Lb/b/a/l/u/d0/h;

    .line 6
    monitor-enter p2

    :try_start_2
    iget-object v1, p2, Lb/b/a/r/g;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-wide v2, p2, Lb/b/a/r/g;->c:J

    invoke-virtual {p2, v1}, Lb/b/a/l/u/d0/h;->b(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lb/b/a/r/g;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p2

    .line 7
    move-object v2, v1

    check-cast v2, Lb/b/a/l/u/w;

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_1

    .line 8
    :cond_7
    instance-of p2, v2, Lb/b/a/l/u/q;

    if-eqz p2, :cond_8

    check-cast v2, Lb/b/a/l/u/q;

    goto :goto_1

    :cond_8
    new-instance p2, Lb/b/a/l/u/q;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lb/b/a/l/u/q;-><init>(Lb/b/a/l/u/w;ZZLb/b/a/l/m;Lb/b/a/l/u/q$a;)V

    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_9

    .line 9
    invoke-virtual {v2}, Lb/b/a/l/u/q;->a()V

    iget-object p2, p0, Lb/b/a/l/u/l;->h:Lb/b/a/l/u/a;

    invoke-virtual {p2, p1, v2}, Lb/b/a/l/u/a;->a(Lb/b/a/l/m;Lb/b/a/l/u/q;)V

    :cond_9
    if-eqz v2, :cond_b

    .line 10
    sget-boolean p2, Lb/b/a/l/u/l;->i:Z

    if-eqz p2, :cond_a

    const-string p2, "Loaded resource from cache"

    invoke-static {p2, p3, p4, p1}, Lb/b/a/l/u/l;->d(Ljava/lang/String;JLb/b/a/l/m;)V

    :cond_a
    return-object v2

    :cond_b
    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit p2

    throw p1
.end method

.method public declared-synchronized e(Lb/b/a/l/u/m;Lb/b/a/l/m;Lb/b/a/l/u/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/m<",
            "*>;",
            "Lb/b/a/l/m;",
            "Lb/b/a/l/u/q<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p3, Lb/b/a/l/u/q;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/a/l/u/l;->h:Lb/b/a/l/u/a;

    invoke-virtual {v0, p2, p3}, Lb/b/a/l/u/a;->a(Lb/b/a/l/m;Lb/b/a/l/u/q;)V

    :cond_0
    iget-object p3, p0, Lb/b/a/l/u/l;->a:Lb/b/a/l/u/t;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p1, Lb/b/a/l/u/m;->q:Z

    .line 5
    invoke-virtual {p3, v0}, Lb/b/a/l/u/t;->a(Z)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lb/b/a/l/u/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/w<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lb/b/a/l/u/q;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/l/u/q;

    invoke-virtual {p1}, Lb/b/a/l/u/q;->f()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lb/b/a/d;Ljava/lang/Object;Lb/b/a/l/m;IILjava/lang/Class;Ljava/lang/Class;Lb/b/a/e;Lb/b/a/l/u/k;Ljava/util/Map;ZZLb/b/a/l/o;ZZZZLb/b/a/p/f;Ljava/util/concurrent/Executor;Lb/b/a/l/u/o;J)Lb/b/a/l/u/l$d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/b/a/d;",
            "Ljava/lang/Object;",
            "Lb/b/a/l/m;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lb/b/a/e;",
            "Lb/b/a/l/u/k;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/l/s<",
            "*>;>;ZZ",
            "Lb/b/a/l/o;",
            "ZZZZ",
            "Lb/b/a/p/f;",
            "Ljava/util/concurrent/Executor;",
            "Lb/b/a/l/u/o;",
            "J)",
            "Lb/b/a/l/u/l$d;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    iget-object v15, v1, Lb/b/a/l/u/l;->a:Lb/b/a/l/u/t;

    if-eqz v9, :cond_0

    .line 1
    iget-object v15, v15, Lb/b/a/l/u/t;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v15, v15, Lb/b/a/l/u/t;->a:Ljava/util/Map;

    .line 2
    :goto_0
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/b/a/l/u/m;

    if-eqz v15, :cond_2

    .line 3
    invoke-virtual {v15, v10, v11}, Lb/b/a/l/u/m;->b(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V

    sget-boolean v0, Lb/b/a/l/u/l;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "Added to existing load"

    invoke-static {v0, v13, v14, v12}, Lb/b/a/l/u/l;->d(Ljava/lang/String;JLb/b/a/l/m;)V

    :cond_1
    new-instance v0, Lb/b/a/l/u/l$d;

    invoke-direct {v0, v1, v10, v15}, Lb/b/a/l/u/l$d;-><init>(Lb/b/a/l/u/l;Lb/b/a/p/f;Lb/b/a/l/u/m;)V

    return-object v0

    :cond_2
    iget-object v15, v1, Lb/b/a/l/u/l;->d:Lb/b/a/l/u/l$b;

    .line 4
    iget-object v15, v15, Lb/b/a/l/u/l$b;->g:La/h/i/c;

    invoke-interface {v15}, La/h/i/c;->b()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/b/a/l/u/m;

    const-string v13, "Argument must not be null"

    .line 5
    invoke-static {v15, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    monitor-enter v15

    :try_start_0
    iput-object v12, v15, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    move/from16 v13, p14

    iput-boolean v13, v15, Lb/b/a/l/u/m;->n:Z

    move/from16 v13, p15

    iput-boolean v13, v15, Lb/b/a/l/u/m;->o:Z

    move/from16 v13, p16

    iput-boolean v13, v15, Lb/b/a/l/u/m;->p:Z

    iput-boolean v9, v15, Lb/b/a/l/u/m;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v15

    .line 7
    iget-object v13, v1, Lb/b/a/l/u/l;->g:Lb/b/a/l/u/l$a;

    .line 8
    iget-object v14, v13, Lb/b/a/l/u/l$a;->b:La/h/i/c;

    invoke-interface {v14}, La/h/i/c;->b()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/b/a/l/u/i;

    const-string v10, "Argument must not be null"

    .line 9
    invoke-static {v14, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget v10, v13, Lb/b/a/l/u/l$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Lb/b/a/l/u/l$a;->c:I

    .line 11
    iget-object v11, v14, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    iget-object v13, v14, Lb/b/a/l/u/i;->e:Lb/b/a/l/u/i$d;

    .line 12
    iput-object v0, v11, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    iput-object v2, v11, Lb/b/a/l/u/h;->d:Ljava/lang/Object;

    iput-object v3, v11, Lb/b/a/l/u/h;->n:Lb/b/a/l/m;

    iput v4, v11, Lb/b/a/l/u/h;->e:I

    iput v5, v11, Lb/b/a/l/u/h;->f:I

    iput-object v7, v11, Lb/b/a/l/u/h;->p:Lb/b/a/l/u/k;

    move-object/from16 v1, p6

    iput-object v1, v11, Lb/b/a/l/u/h;->g:Ljava/lang/Class;

    iput-object v13, v11, Lb/b/a/l/u/h;->h:Lb/b/a/l/u/i$d;

    move-object/from16 v1, p7

    iput-object v1, v11, Lb/b/a/l/u/h;->k:Ljava/lang/Class;

    iput-object v6, v11, Lb/b/a/l/u/h;->o:Lb/b/a/e;

    iput-object v8, v11, Lb/b/a/l/u/h;->i:Lb/b/a/l/o;

    move-object/from16 v1, p10

    iput-object v1, v11, Lb/b/a/l/u/h;->j:Ljava/util/Map;

    move/from16 v1, p11

    iput-boolean v1, v11, Lb/b/a/l/u/h;->q:Z

    move/from16 v1, p12

    iput-boolean v1, v11, Lb/b/a/l/u/h;->r:Z

    .line 13
    iput-object v0, v14, Lb/b/a/l/u/i;->i:Lb/b/a/d;

    iput-object v3, v14, Lb/b/a/l/u/i;->j:Lb/b/a/l/m;

    iput-object v6, v14, Lb/b/a/l/u/i;->k:Lb/b/a/e;

    iput-object v12, v14, Lb/b/a/l/u/i;->l:Lb/b/a/l/u/o;

    iput v4, v14, Lb/b/a/l/u/i;->m:I

    iput v5, v14, Lb/b/a/l/u/i;->n:I

    iput-object v7, v14, Lb/b/a/l/u/i;->o:Lb/b/a/l/u/k;

    iput-boolean v9, v14, Lb/b/a/l/u/i;->v:Z

    iput-object v8, v14, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    iput-object v15, v14, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    iput v10, v14, Lb/b/a/l/u/i;->r:I

    sget-object v0, Lb/b/a/l/u/i$f;->b:Lb/b/a/l/u/i$f;

    iput-object v0, v14, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    iput-object v2, v14, Lb/b/a/l/u/i;->w:Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 14
    iget-object v0, v1, Lb/b/a/l/u/l;->a:Lb/b/a/l/u/t;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-boolean v2, v15, Lb/b/a/l/u/m;->q:Z

    .line 17
    invoke-virtual {v0, v2}, Lb/b/a/l/u/t;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v2, p19

    .line 18
    invoke-virtual {v15, v0, v2}, Lb/b/a/l/u/m;->b(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V

    .line 19
    monitor-enter v15

    :try_start_1
    iput-object v14, v15, Lb/b/a/l/u/m;->x:Lb/b/a/l/u/i;

    .line 20
    sget-object v2, Lb/b/a/l/u/i$g;->b:Lb/b/a/l/u/i$g;

    invoke-virtual {v14, v2}, Lb/b/a/l/u/i;->i(Lb/b/a/l/u/i$g;)Lb/b/a/l/u/i$g;

    move-result-object v2

    sget-object v3, Lb/b/a/l/u/i$g;->c:Lb/b/a/l/u/i$g;

    if-eq v2, v3, :cond_4

    sget-object v3, Lb/b/a/l/u/i$g;->d:Lb/b/a/l/u/i$g;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    .line 21
    iget-object v2, v15, Lb/b/a/l/u/m;->h:Lb/b/a/l/u/e0/a;

    goto :goto_3

    .line 22
    :cond_5
    iget-boolean v2, v15, Lb/b/a/l/u/m;->o:Z

    if-eqz v2, :cond_6

    iget-object v2, v15, Lb/b/a/l/u/m;->j:Lb/b/a/l/u/e0/a;

    goto :goto_3

    :cond_6
    iget-boolean v2, v15, Lb/b/a/l/u/m;->p:Z

    if-eqz v2, :cond_7

    iget-object v2, v15, Lb/b/a/l/u/m;->k:Lb/b/a/l/u/e0/a;

    goto :goto_3

    :cond_7
    iget-object v2, v15, Lb/b/a/l/u/m;->i:Lb/b/a/l/u/e0/a;

    .line 23
    :goto_3
    iget-object v2, v2, Lb/b/a/l/u/e0/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v14}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit v15

    .line 25
    sget-boolean v2, Lb/b/a/l/u/l;->i:Z

    if-eqz v2, :cond_8

    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    invoke-static {v2, v3, v4, v12}, Lb/b/a/l/u/l;->d(Ljava/lang/String;JLb/b/a/l/m;)V

    :cond_8
    new-instance v2, Lb/b/a/l/u/l$d;

    invoke-direct {v2, v1, v0, v15}, Lb/b/a/l/u/l$d;-><init>(Lb/b/a/l/u/l;Lb/b/a/p/f;Lb/b/a/l/u/m;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit v15

    throw v0

    :catchall_1
    move-exception v0

    .line 27
    monitor-exit v15

    throw v0
.end method
