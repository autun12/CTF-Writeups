.class public Lb/b/a/l/u/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/i$a;
.implements Lb/b/a/r/k/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/u/m$c;,
        Lb/b/a/l/u/m$d;,
        Lb/b/a/l/u/m$e;,
        Lb/b/a/l/u/m$b;,
        Lb/b/a/l/u/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/i$a<",
        "TR;>;",
        "Lb/b/a/r/k/a$d;"
    }
.end annotation


# static fields
.field public static final z:Lb/b/a/l/u/m$c;


# instance fields
.field public final b:Lb/b/a/l/u/m$e;

.field public final c:Lb/b/a/r/k/d;

.field public final d:Lb/b/a/l/u/q$a;

.field public final e:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "Lb/b/a/l/u/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lb/b/a/l/u/m$c;

.field public final g:Lb/b/a/l/u/n;

.field public final h:Lb/b/a/l/u/e0/a;

.field public final i:Lb/b/a/l/u/e0/a;

.field public final j:Lb/b/a/l/u/e0/a;

.field public final k:Lb/b/a/l/u/e0/a;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:Lb/b/a/l/m;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lb/b/a/l/u/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/w<",
            "*>;"
        }
    .end annotation
.end field

.field public s:Lb/b/a/l/a;

.field public t:Z

.field public u:Lb/b/a/l/u/r;

.field public v:Z

.field public w:Lb/b/a/l/u/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/q<",
            "*>;"
        }
    .end annotation
.end field

.field public x:Lb/b/a/l/u/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile y:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/u/m$c;

    invoke-direct {v0}, Lb/b/a/l/u/m$c;-><init>()V

    sput-object v0, Lb/b/a/l/u/m;->z:Lb/b/a/l/u/m$c;

    return-void
.end method

.method public constructor <init>(Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/n;Lb/b/a/l/u/q$a;La/h/i/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/e0/a;",
            "Lb/b/a/l/u/e0/a;",
            "Lb/b/a/l/u/e0/a;",
            "Lb/b/a/l/u/e0/a;",
            "Lb/b/a/l/u/n;",
            "Lb/b/a/l/u/q$a;",
            "La/h/i/c<",
            "Lb/b/a/l/u/m<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v0, Lb/b/a/l/u/m;->z:Lb/b/a/l/u/m$c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lb/b/a/l/u/m$e;

    invoke-direct {v1}, Lb/b/a/l/u/m$e;-><init>()V

    iput-object v1, p0, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    .line 2
    new-instance v1, Lb/b/a/r/k/d$b;

    invoke-direct {v1}, Lb/b/a/r/k/d$b;-><init>()V

    .line 3
    iput-object v1, p0, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lb/b/a/l/u/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lb/b/a/l/u/m;->h:Lb/b/a/l/u/e0/a;

    iput-object p2, p0, Lb/b/a/l/u/m;->i:Lb/b/a/l/u/e0/a;

    iput-object p3, p0, Lb/b/a/l/u/m;->j:Lb/b/a/l/u/e0/a;

    iput-object p4, p0, Lb/b/a/l/u/m;->k:Lb/b/a/l/u/e0/a;

    iput-object p5, p0, Lb/b/a/l/u/m;->g:Lb/b/a/l/u/n;

    iput-object p6, p0, Lb/b/a/l/u/m;->d:Lb/b/a/l/u/q$a;

    iput-object p7, p0, Lb/b/a/l/u/m;->e:La/h/i/c;

    iput-object v0, p0, Lb/b/a/l/u/m;->f:Lb/b/a/l/u/m$c;

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/r/k/d;
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    return-object v0
.end method

.method public declared-synchronized b(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    iget-object v0, p0, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    .line 1
    iget-object v0, v0, Lb/b/a/l/u/m$e;->b:Ljava/util/List;

    new-instance v1, Lb/b/a/l/u/m$d;

    invoke-direct {v1, p1, p2}, Lb/b/a/l/u/m$d;-><init>(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lb/b/a/l/u/m;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lb/b/a/l/u/m;->e(I)V

    new-instance v0, Lb/b/a/l/u/m$b;

    invoke-direct {v0, p0, p1}, Lb/b/a/l/u/m$b;-><init>(Lb/b/a/l/u/m;Lb/b/a/p/f;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lb/b/a/l/u/m;->v:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lb/b/a/l/u/m;->e(I)V

    new-instance v0, Lb/b/a/l/u/m$a;

    invoke-direct {v0, p0, p1}, Lb/b/a/l/u/m$a;-><init>(Lb/b/a/l/u/m;Lb/b/a/p/f;)V

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lb/b/a/l/u/m;->y:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, La/h/b/f;->e(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 4

    invoke-virtual {p0}, Lb/b/a/l/u/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/l/u/m;->y:Z

    iget-object v1, p0, Lb/b/a/l/u/m;->x:Lb/b/a/l/u/i;

    .line 1
    iput-boolean v0, v1, Lb/b/a/l/u/i;->F:Z

    iget-object v0, v1, Lb/b/a/l/u/i;->D:Lb/b/a/l/u/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lb/b/a/l/u/g;->cancel()V

    .line 2
    :cond_1
    iget-object v0, p0, Lb/b/a/l/u/m;->g:Lb/b/a/l/u/n;

    iget-object v1, p0, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    check-cast v0, Lb/b/a/l/u/l;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lb/b/a/l/u/l;->a:Lb/b/a/l/u/t;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v3, p0, Lb/b/a/l/u/m;->q:Z

    .line 6
    invoke-virtual {v2, v3}, Lb/b/a/l/u/t;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    invoke-virtual {p0}, Lb/b/a/l/u/m;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, La/h/b/f;->e(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/b/a/l/u/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, La/h/b/f;->e(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/a/l/u/m;->w:Lb/b/a/l/u/q;

    invoke-virtual {p0}, Lb/b/a/l/u/m;->g()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/b/a/l/u/q;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/l/u/m;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, La/h/b/f;->e(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/b/a/l/u/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/a/l/u/m;->w:Lb/b/a/l/u/q;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/a/l/u/q;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/l/u/m;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/b/a/l/u/m;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/b/a/l/u/m;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final declared-synchronized g()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    .line 1
    iget-object v0, v0, Lb/b/a/l/u/m$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    iput-object v0, p0, Lb/b/a/l/u/m;->w:Lb/b/a/l/u/q;

    iput-object v0, p0, Lb/b/a/l/u/m;->r:Lb/b/a/l/u/w;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/b/a/l/u/m;->v:Z

    iput-boolean v1, p0, Lb/b/a/l/u/m;->y:Z

    iput-boolean v1, p0, Lb/b/a/l/u/m;->t:Z

    iget-object v2, p0, Lb/b/a/l/u/m;->x:Lb/b/a/l/u/i;

    .line 3
    iget-object v3, v2, Lb/b/a/l/u/i;->h:Lb/b/a/l/u/i$e;

    .line 4
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, v3, Lb/b/a/l/u/i$e;->a:Z

    invoke-virtual {v3, v1}, Lb/b/a/l/u/i$e;->a(Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v2}, Lb/b/a/l/u/i;->l()V

    .line 6
    :cond_0
    iput-object v0, p0, Lb/b/a/l/u/m;->x:Lb/b/a/l/u/i;

    iput-object v0, p0, Lb/b/a/l/u/m;->u:Lb/b/a/l/u/r;

    iput-object v0, p0, Lb/b/a/l/u/m;->s:Lb/b/a/l/a;

    iget-object v0, p0, Lb/b/a/l/u/m;->e:La/h/i/c;

    invoke-interface {v0, p0}, La/h/i/c;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    monitor-exit v3

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Lb/b/a/p/f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    iget-object v0, p0, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    .line 1
    iget-object v0, v0, Lb/b/a/l/u/m$e;->b:Ljava/util/List;

    .line 2
    new-instance v1, Lb/b/a/l/u/m$d;

    .line 3
    sget-object v2, Lb/b/a/r/e;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-direct {v1, p1, v2}, Lb/b/a/l/u/m$d;-><init>(Lb/b/a/p/f;Ljava/util/concurrent/Executor;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    invoke-virtual {p1}, Lb/b/a/l/u/m$e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lb/b/a/l/u/m;->c()V

    iget-boolean p1, p0, Lb/b/a/l/u/m;->t:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lb/b/a/l/u/m;->v:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/b/a/l/u/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lb/b/a/l/u/m;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Lb/b/a/l/u/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/i<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lb/b/a/l/u/m;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/m;->j:Lb/b/a/l/u/e0/a;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lb/b/a/l/u/m;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/l/u/m;->k:Lb/b/a/l/u/e0/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/a/l/u/m;->i:Lb/b/a/l/u/e0/a;

    .line 2
    :goto_0
    iget-object v0, v0, Lb/b/a/l/u/e0/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
