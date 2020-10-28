.class public Lb/b/a/l/u/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/g$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lb/b/a/r/k/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/u/i$g;,
        Lb/b/a/l/u/i$f;,
        Lb/b/a/l/u/i$d;,
        Lb/b/a/l/u/i$a;,
        Lb/b/a/l/u/i$c;,
        Lb/b/a/l/u/i$e;,
        Lb/b/a/l/u/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/g$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lb/b/a/l/u/i<",
        "*>;>;",
        "Lb/b/a/r/k/a$d;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Object;

.field public B:Lb/b/a/l/a;

.field public C:Lb/b/a/l/t/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/t/d<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile D:Lb/b/a/l/u/g;

.field public volatile E:Z

.field public volatile F:Z

.field public final b:Lb/b/a/l/u/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/b/a/r/k/d;

.field public final e:Lb/b/a/l/u/i$d;

.field public final f:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "Lb/b/a/l/u/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Lb/b/a/l/u/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/i$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Lb/b/a/l/u/i$e;

.field public i:Lb/b/a/d;

.field public j:Lb/b/a/l/m;

.field public k:Lb/b/a/e;

.field public l:Lb/b/a/l/u/o;

.field public m:I

.field public n:I

.field public o:Lb/b/a/l/u/k;

.field public p:Lb/b/a/l/o;

.field public q:Lb/b/a/l/u/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/i$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Lb/b/a/l/u/i$g;

.field public t:Lb/b/a/l/u/i$f;

.field public u:J

.field public v:Z

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Thread;

.field public y:Lb/b/a/l/m;

.field public z:Lb/b/a/l/m;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/i$d;La/h/i/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/i$d;",
            "La/h/i/c<",
            "Lb/b/a/l/u/i<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/u/h;

    invoke-direct {v0}, Lb/b/a/l/u/h;-><init>()V

    iput-object v0, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    .line 1
    new-instance v0, Lb/b/a/r/k/d$b;

    invoke-direct {v0}, Lb/b/a/r/k/d$b;-><init>()V

    .line 2
    iput-object v0, p0, Lb/b/a/l/u/i;->d:Lb/b/a/r/k/d;

    new-instance v0, Lb/b/a/l/u/i$c;

    invoke-direct {v0}, Lb/b/a/l/u/i$c;-><init>()V

    iput-object v0, p0, Lb/b/a/l/u/i;->g:Lb/b/a/l/u/i$c;

    new-instance v0, Lb/b/a/l/u/i$e;

    invoke-direct {v0}, Lb/b/a/l/u/i$e;-><init>()V

    iput-object v0, p0, Lb/b/a/l/u/i;->h:Lb/b/a/l/u/i$e;

    iput-object p1, p0, Lb/b/a/l/u/i;->e:Lb/b/a/l/u/i$d;

    iput-object p2, p0, Lb/b/a/l/u/i;->f:La/h/i/c;

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/r/k/d;
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/i;->d:Lb/b/a/r/k/d;

    return-object v0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lb/b/a/l/u/i$f;->c:Lb/b/a/l/u/i$f;

    iput-object v0, p0, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    iget-object v0, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    check-cast v0, Lb/b/a/l/u/m;

    invoke-virtual {v0, p0}, Lb/b/a/l/u/m;->i(Lb/b/a/l/u/i;)V

    return-void
.end method

.method public c(Lb/b/a/l/m;Ljava/lang/Object;Lb/b/a/l/t/d;Lb/b/a/l/a;Lb/b/a/l/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/m;",
            "Ljava/lang/Object;",
            "Lb/b/a/l/t/d<",
            "*>;",
            "Lb/b/a/l/a;",
            "Lb/b/a/l/m;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lb/b/a/l/u/i;->y:Lb/b/a/l/m;

    iput-object p2, p0, Lb/b/a/l/u/i;->A:Ljava/lang/Object;

    iput-object p3, p0, Lb/b/a/l/u/i;->C:Lb/b/a/l/t/d;

    iput-object p4, p0, Lb/b/a/l/u/i;->B:Lb/b/a/l/a;

    iput-object p5, p0, Lb/b/a/l/u/i;->z:Lb/b/a/l/m;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lb/b/a/l/u/i;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lb/b/a/l/u/i$f;->d:Lb/b/a/l/u/i$f;

    iput-object p1, p0, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    iget-object p1, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    check-cast p1, Lb/b/a/l/u/m;

    invoke-virtual {p1, p0}, Lb/b/a/l/u/m;->i(Lb/b/a/l/u/i;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lb/b/a/l/u/i;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lb/b/a/l/u/i;

    .line 1
    iget-object v0, p0, Lb/b/a/l/u/i;->k:Lb/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Lb/b/a/l/u/i;->k:Lb/b/a/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lb/b/a/l/u/i;->r:I

    iget p1, p1, Lb/b/a/l/u/i;->r:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public d(Lb/b/a/l/m;Ljava/lang/Exception;Lb/b/a/l/t/d;Lb/b/a/l/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/m;",
            "Ljava/lang/Exception;",
            "Lb/b/a/l/t/d<",
            "*>;",
            "Lb/b/a/l/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lb/b/a/l/t/d;->b()V

    new-instance v0, Lb/b/a/l/u/r;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lb/b/a/l/u/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lb/b/a/l/t/d;->a()Ljava/lang/Class;

    move-result-object p2

    .line 1
    iput-object p1, v0, Lb/b/a/l/u/r;->c:Lb/b/a/l/m;

    iput-object p4, v0, Lb/b/a/l/u/r;->d:Lb/b/a/l/a;

    iput-object p2, v0, Lb/b/a/l/u/r;->e:Ljava/lang/Class;

    .line 2
    iget-object p1, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lb/b/a/l/u/i;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lb/b/a/l/u/i$f;->c:Lb/b/a/l/u/i$f;

    iput-object p1, p0, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    iget-object p1, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    check-cast p1, Lb/b/a/l/u/m;

    invoke-virtual {p1, p0}, Lb/b/a/l/u/m;->i(Lb/b/a/l/u/i;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/l/u/i;->m()V

    :goto_0
    return-void
.end method

.method public final e(Lb/b/a/l/t/d;Ljava/lang/Object;Lb/b/a/l/a;)Lb/b/a/l/u/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/b/a/l/t/d<",
            "*>;TData;",
            "Lb/b/a/l/a;",
            ")",
            "Lb/b/a/l/u/w<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lb/b/a/l/t/d;->b()V

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    sget v1, Lb/b/a/r/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2
    invoke-virtual {p0, p2, p3}, Lb/b/a/l/u/i;->f(Ljava/lang/Object;Lb/b/a/l/a;)Lb/b/a/l/u/w;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p3, v1, v2, v0}, Lb/b/a/l/u/i;->j(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lb/b/a/l/t/d;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lb/b/a/l/t/d;->b()V

    throw p2
.end method

.method public final f(Ljava/lang/Object;Lb/b/a/l/a;)Lb/b/a/l/u/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lb/b/a/l/a;",
            ")",
            "Lb/b/a/l/u/w<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/l/u/h;->d(Ljava/lang/Class;)Lb/b/a/l/u/u;

    move-result-object v2

    .line 1
    iget-object v0, p0, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lb/b/a/l/a;->e:Lb/b/a/l/a;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    .line 2
    iget-boolean v1, v1, Lb/b/a/l/u/h;->r:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 3
    :goto_1
    sget-object v3, Lb/b/a/l/w/c/m;->i:Lb/b/a/l/n;

    invoke-virtual {v0, v3}, Lb/b/a/l/o;->c(Lb/b/a/l/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_4
    new-instance v0, Lb/b/a/l/o;

    invoke-direct {v0}, Lb/b/a/l/o;-><init>()V

    iget-object v4, p0, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    invoke-virtual {v0, v4}, Lb/b/a/l/o;->d(Lb/b/a/l/o;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4
    iget-object v4, v0, Lb/b/a/l/o;->b:La/e/a;

    invoke-virtual {v4, v3, v1}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5
    :goto_3
    iget-object v0, p0, Lb/b/a/l/u/i;->i:Lb/b/a/d;

    .line 6
    iget-object v0, v0, Lb/b/a/d;->b:Lb/b/a/f;

    .line 7
    iget-object v0, v0, Lb/b/a/f;->e:Lb/b/a/l/t/f;

    .line 8
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/t/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/l/t/e$a;

    if-nez v1, :cond_6

    iget-object v3, v0, Lb/b/a/l/t/f;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/a/l/t/e$a;

    invoke-interface {v5}, Lb/b/a/l/t/e$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, v5

    :cond_6
    if-nez v1, :cond_7

    sget-object v1, Lb/b/a/l/t/f;->b:Lb/b/a/l/t/e$a;

    :cond_7
    invoke-interface {v1, p1}, Lb/b/a/l/t/e$a;->b(Ljava/lang/Object;)Lb/b/a/l/t/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 9
    :try_start_1
    iget v5, p0, Lb/b/a/l/u/i;->m:I

    iget v6, p0, Lb/b/a/l/u/i;->n:I

    new-instance v7, Lb/b/a/l/u/i$b;

    invoke-direct {v7, p0, p2}, Lb/b/a/l/u/i$b;-><init>(Lb/b/a/l/u/i;Lb/b/a/l/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lb/b/a/l/u/u;->a(Lb/b/a/l/t/e;Lb/b/a/l/o;IILb/b/a/l/u/j$a;)Lb/b/a/l/u/w;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Lb/b/a/l/t/e;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lb/b/a/l/t/e;->b()V

    throw p2

    :catchall_1
    move-exception p1

    .line 10
    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final g()V
    .locals 12

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v1, p0, Lb/b/a/l/u/i;->u:J

    const-string v3, "data: "

    invoke-static {v3}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lb/b/a/l/u/i;->A:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/a/l/u/i;->y:Lb/b/a/l/m;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/a/l/u/i;->C:Lb/b/a/l/t/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lb/b/a/l/u/i;->j(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/b/a/l/u/i;->C:Lb/b/a/l/t/d;

    iget-object v2, p0, Lb/b/a/l/u/i;->A:Ljava/lang/Object;

    iget-object v3, p0, Lb/b/a/l/u/i;->B:Lb/b/a/l/a;

    invoke-virtual {p0, v1, v2, v3}, Lb/b/a/l/u/i;->e(Lb/b/a/l/t/d;Ljava/lang/Object;Lb/b/a/l/a;)Lb/b/a/l/u/w;

    move-result-object v1
    :try_end_0
    .catch Lb/b/a/l/u/r; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lb/b/a/l/u/i;->z:Lb/b/a/l/m;

    iget-object v3, p0, Lb/b/a/l/u/i;->B:Lb/b/a/l/a;

    .line 1
    iput-object v2, v1, Lb/b/a/l/u/r;->c:Lb/b/a/l/m;

    iput-object v3, v1, Lb/b/a/l/u/r;->d:Lb/b/a/l/a;

    iput-object v0, v1, Lb/b/a/l/u/r;->e:Ljava/lang/Class;

    .line 2
    iget-object v2, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_c

    iget-object v2, p0, Lb/b/a/l/u/i;->B:Lb/b/a/l/a;

    .line 3
    instance-of v3, v1, Lb/b/a/l/u/s;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lb/b/a/l/u/s;

    invoke-interface {v3}, Lb/b/a/l/u/s;->a()V

    :cond_1
    iget-object v3, p0, Lb/b/a/l/u/i;->g:Lb/b/a/l/u/i$c;

    .line 4
    iget-object v3, v3, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 5
    invoke-static {v1}, Lb/b/a/l/u/v;->f(Lb/b/a/l/u/w;)Lb/b/a/l/u/v;

    move-result-object v0

    move-object v1, v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lb/b/a/l/u/i;->o()V

    iget-object v3, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    check-cast v3, Lb/b/a/l/u/m;

    .line 7
    monitor-enter v3

    :try_start_1
    iput-object v1, v3, Lb/b/a/l/u/m;->r:Lb/b/a/l/u/w;

    iput-object v2, v3, Lb/b/a/l/u/m;->s:Lb/b/a/l/a;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 8
    monitor-enter v3

    :try_start_2
    iget-object v1, v3, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    invoke-virtual {v1}, Lb/b/a/r/k/d;->a()V

    iget-boolean v1, v3, Lb/b/a/l/u/m;->y:Z

    if-eqz v1, :cond_4

    iget-object v1, v3, Lb/b/a/l/u/m;->r:Lb/b/a/l/u/w;

    invoke-interface {v1}, Lb/b/a/l/u/w;->e()V

    invoke-virtual {v3}, Lb/b/a/l/u/m;->g()V

    monitor-exit v3

    goto :goto_3

    :cond_4
    iget-object v1, v3, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    invoke-virtual {v1}, Lb/b/a/l/u/m$e;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, v3, Lb/b/a/l/u/m;->t:Z

    if-nez v1, :cond_a

    iget-object v1, v3, Lb/b/a/l/u/m;->f:Lb/b/a/l/u/m$c;

    iget-object v7, v3, Lb/b/a/l/u/m;->r:Lb/b/a/l/u/w;

    iget-boolean v8, v3, Lb/b/a/l/u/m;->n:Z

    iget-object v10, v3, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    iget-object v11, v3, Lb/b/a/l/u/m;->d:Lb/b/a/l/u/q$a;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lb/b/a/l/u/q;

    const/4 v9, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lb/b/a/l/u/q;-><init>(Lb/b/a/l/u/w;ZZLb/b/a/l/m;Lb/b/a/l/u/q$a;)V

    .line 10
    iput-object v1, v3, Lb/b/a/l/u/m;->w:Lb/b/a/l/u/q;

    iput-boolean v4, v3, Lb/b/a/l/u/m;->t:Z

    iget-object v1, v3, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lb/b/a/l/u/m$e;->b:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    .line 13
    invoke-virtual {v3, v1}, Lb/b/a/l/u/m;->e(I)V

    iget-object v1, v3, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    iget-object v6, v3, Lb/b/a/l/u/m;->w:Lb/b/a/l/u/q;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v7, v3, Lb/b/a/l/u/m;->g:Lb/b/a/l/u/n;

    check-cast v7, Lb/b/a/l/u/l;

    invoke-virtual {v7, v3, v1, v6}, Lb/b/a/l/u/l;->e(Lb/b/a/l/u/m;Lb/b/a/l/m;Lb/b/a/l/u/q;)V

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 15
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/l/u/m$d;

    iget-object v6, v2, Lb/b/a/l/u/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lb/b/a/l/u/m$b;

    iget-object v2, v2, Lb/b/a/l/u/m$d;->a:Lb/b/a/p/f;

    invoke-direct {v7, v3, v2}, Lb/b/a/l/u/m$b;-><init>(Lb/b/a/l/u/m;Lb/b/a/p/f;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lb/b/a/l/u/m;->d()V

    .line 16
    :goto_3
    sget-object v1, Lb/b/a/l/u/i$g;->f:Lb/b/a/l/u/i$g;

    iput-object v1, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    :try_start_3
    iget-object v1, p0, Lb/b/a/l/u/i;->g:Lb/b/a/l/u/i$c;

    .line 17
    iget-object v2, v1, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    .line 18
    iget-object v2, p0, Lb/b/a/l/u/i;->e:Lb/b/a/l/u/i$d;

    iget-object v3, p0, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    .line 19
    check-cast v2, Lb/b/a/l/u/l$c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Lb/b/a/l/u/l$c;->a()Lb/b/a/l/u/d0/a;

    move-result-object v2

    iget-object v6, v1, Lb/b/a/l/u/i$c;->a:Lb/b/a/l/m;

    new-instance v7, Lb/b/a/l/u/f;

    iget-object v8, v1, Lb/b/a/l/u/i$c;->b:Lb/b/a/l/r;

    iget-object v9, v1, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    invoke-direct {v7, v8, v9, v3}, Lb/b/a/l/u/f;-><init>(Lb/b/a/l/d;Ljava/lang/Object;Lb/b/a/l/o;)V

    invoke-interface {v2, v6, v7}, Lb/b/a/l/u/d0/a;->a(Lb/b/a/l/m;Lb/b/a/l/u/d0/a$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, v1, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    invoke-virtual {v1}, Lb/b/a/l/u/v;->g()V

    goto :goto_5

    :catchall_0
    move-exception v2

    iget-object v1, v1, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    invoke-virtual {v1}, Lb/b/a/l/u/v;->g()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {v0}, Lb/b/a/l/u/v;->g()V

    .line 21
    :cond_8
    iget-object v0, p0, Lb/b/a/l/u/i;->h:Lb/b/a/l/u/i$e;

    .line 22
    monitor-enter v0

    :try_start_6
    iput-boolean v4, v0, Lb/b/a/l/u/i$e;->b:Z

    invoke-virtual {v0, v5}, Lb/b/a/l/u/i$e;->a(Z)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_d

    .line 23
    invoke-virtual {p0}, Lb/b/a/l/u/i;->l()V

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 24
    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {v0}, Lb/b/a/l/u/v;->g()V

    :cond_9
    throw v1

    .line 26
    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 27
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 28
    :cond_c
    invoke-virtual {p0}, Lb/b/a/l/u/i;->m()V

    :cond_d
    :goto_6
    return-void
.end method

.method public final h()Lb/b/a/l/u/g;
    .locals 3

    iget-object v0, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lb/b/a/l/u/b0;

    iget-object v1, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    invoke-direct {v0, v1, p0}, Lb/b/a/l/u/b0;-><init>(Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V

    return-object v0

    :cond_2
    new-instance v0, Lb/b/a/l/u/d;

    iget-object v1, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    invoke-direct {v0, v1, p0}, Lb/b/a/l/u/d;-><init>(Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V

    return-object v0

    :cond_3
    new-instance v0, Lb/b/a/l/u/x;

    iget-object v1, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    invoke-direct {v0, v1, p0}, Lb/b/a/l/u/x;-><init>(Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V

    return-object v0
.end method

.method public final i(Lb/b/a/l/u/i$g;)Lb/b/a/l/u/i$g;
    .locals 4

    sget-object v0, Lb/b/a/l/u/i$g;->c:Lb/b/a/l/u/i$g;

    sget-object v1, Lb/b/a/l/u/i$g;->d:Lb/b/a/l/u/i$g;

    sget-object v2, Lb/b/a/l/u/i$g;->g:Lb/b/a/l/u/i$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-boolean p1, p0, Lb/b/a/l/u/i;->v:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lb/b/a/l/u/i$g;->e:Lb/b/a/l/u/i$g;

    :goto_1
    return-object v2

    :cond_4
    iget-object p1, p0, Lb/b/a/l/u/i;->o:Lb/b/a/l/u/k;

    invoke-virtual {p1}, Lb/b/a/l/u/k;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lb/b/a/l/u/i;->i(Lb/b/a/l/u/i$g;)Lb/b/a/l/u/i$g;

    move-result-object v1

    :goto_2
    return-object v1

    :cond_6
    iget-object p1, p0, Lb/b/a/l/u/i;->o:Lb/b/a/l/u/k;

    invoke-virtual {p1}, Lb/b/a/l/u/k;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0}, Lb/b/a/l/u/i;->i(Lb/b/a/l/u/i$g;)Lb/b/a/l/u/i$g;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final j(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lb/b/a/r/f;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/b/a/l/u/i;->l:Lb/b/a/l/u/o;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p1, ", "

    invoke-static {p1, p4}, Lb/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 6

    invoke-virtual {p0}, Lb/b/a/l/u/i;->o()V

    new-instance v0, Lb/b/a/l/u/r;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lb/b/a/l/u/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    check-cast v1, Lb/b/a/l/u/m;

    .line 1
    monitor-enter v1

    :try_start_0
    iput-object v0, v1, Lb/b/a/l/u/m;->u:Lb/b/a/l/u/r;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lb/b/a/l/u/m;->c:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    iget-boolean v0, v1, Lb/b/a/l/u/m;->y:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lb/b/a/l/u/m;->g()V

    monitor-exit v1

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    invoke-virtual {v0}, Lb/b/a/l/u/m$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lb/b/a/l/u/m;->v:Z

    if-nez v0, :cond_3

    iput-boolean v2, v1, Lb/b/a/l/u/m;->v:Z

    iget-object v0, v1, Lb/b/a/l/u/m;->m:Lb/b/a/l/m;

    iget-object v3, v1, Lb/b/a/l/u/m;->b:Lb/b/a/l/u/m$e;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Lb/b/a/l/u/m$e;->b:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    .line 5
    invoke-virtual {v1, v3}, Lb/b/a/l/u/m;->e(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v1, Lb/b/a/l/u/m;->g:Lb/b/a/l/u/n;

    const/4 v5, 0x0

    check-cast v3, Lb/b/a/l/u/l;

    invoke-virtual {v3, v1, v0, v5}, Lb/b/a/l/u/l;->e(Lb/b/a/l/u/m;Lb/b/a/l/m;Lb/b/a/l/u/q;)V

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/l/u/m$d;

    iget-object v4, v3, Lb/b/a/l/u/m$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lb/b/a/l/u/m$a;

    iget-object v3, v3, Lb/b/a/l/u/m$d;->a:Lb/b/a/p/f;

    invoke-direct {v5, v1, v3}, Lb/b/a/l/u/m$a;-><init>(Lb/b/a/l/u/m;Lb/b/a/p/f;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb/b/a/l/u/m;->d()V

    .line 8
    :goto_1
    iget-object v0, p0, Lb/b/a/l/u/i;->h:Lb/b/a/l/u/i$e;

    .line 9
    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, Lb/b/a/l/u/i$e;->c:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/l/u/i$e;->a(Z)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lb/b/a/l/u/i;->l()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1

    .line 12
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 13
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lb/b/a/l/u/i;->h:Lb/b/a/l/u/i$e;

    .line 1
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Lb/b/a/l/u/i$e;->b:Z

    iput-boolean v1, v0, Lb/b/a/l/u/i$e;->a:Z

    iput-boolean v1, v0, Lb/b/a/l/u/i$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2
    iget-object v0, p0, Lb/b/a/l/u/i;->g:Lb/b/a/l/u/i$c;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lb/b/a/l/u/i$c;->a:Lb/b/a/l/m;

    iput-object v2, v0, Lb/b/a/l/u/i$c;->b:Lb/b/a/l/r;

    iput-object v2, v0, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    .line 4
    iget-object v0, p0, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    .line 5
    iput-object v2, v0, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    iput-object v2, v0, Lb/b/a/l/u/h;->d:Ljava/lang/Object;

    iput-object v2, v0, Lb/b/a/l/u/h;->n:Lb/b/a/l/m;

    iput-object v2, v0, Lb/b/a/l/u/h;->g:Ljava/lang/Class;

    iput-object v2, v0, Lb/b/a/l/u/h;->k:Ljava/lang/Class;

    iput-object v2, v0, Lb/b/a/l/u/h;->i:Lb/b/a/l/o;

    iput-object v2, v0, Lb/b/a/l/u/h;->o:Lb/b/a/e;

    iput-object v2, v0, Lb/b/a/l/u/h;->j:Ljava/util/Map;

    iput-object v2, v0, Lb/b/a/l/u/h;->p:Lb/b/a/l/u/k;

    iget-object v3, v0, Lb/b/a/l/u/h;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v1, v0, Lb/b/a/l/u/h;->l:Z

    iget-object v3, v0, Lb/b/a/l/u/h;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v1, v0, Lb/b/a/l/u/h;->m:Z

    .line 6
    iput-boolean v1, p0, Lb/b/a/l/u/i;->E:Z

    iput-object v2, p0, Lb/b/a/l/u/i;->i:Lb/b/a/d;

    iput-object v2, p0, Lb/b/a/l/u/i;->j:Lb/b/a/l/m;

    iput-object v2, p0, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    iput-object v2, p0, Lb/b/a/l/u/i;->k:Lb/b/a/e;

    iput-object v2, p0, Lb/b/a/l/u/i;->l:Lb/b/a/l/u/o;

    iput-object v2, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    iput-object v2, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    iput-object v2, p0, Lb/b/a/l/u/i;->D:Lb/b/a/l/u/g;

    iput-object v2, p0, Lb/b/a/l/u/i;->x:Ljava/lang/Thread;

    iput-object v2, p0, Lb/b/a/l/u/i;->y:Lb/b/a/l/m;

    iput-object v2, p0, Lb/b/a/l/u/i;->A:Ljava/lang/Object;

    iput-object v2, p0, Lb/b/a/l/u/i;->B:Lb/b/a/l/a;

    iput-object v2, p0, Lb/b/a/l/u/i;->C:Lb/b/a/l/t/d;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lb/b/a/l/u/i;->u:J

    iput-boolean v1, p0, Lb/b/a/l/u/i;->F:Z

    iput-object v2, p0, Lb/b/a/l/u/i;->w:Ljava/lang/Object;

    iget-object v0, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lb/b/a/l/u/i;->f:La/h/i/c;

    invoke-interface {v0, p0}, La/h/i/c;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/l/u/i;->x:Ljava/lang/Thread;

    .line 1
    sget v0, Lb/b/a/r/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 2
    iput-wide v0, p0, Lb/b/a/l/u/i;->u:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lb/b/a/l/u/i;->F:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/a/l/u/i;->D:Lb/b/a/l/u/g;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lb/b/a/l/u/i;->D:Lb/b/a/l/u/g;

    invoke-interface {v0}, Lb/b/a/l/u/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    invoke-virtual {p0, v1}, Lb/b/a/l/u/i;->i(Lb/b/a/l/u/i$g;)Lb/b/a/l/u/i$g;

    move-result-object v1

    iput-object v1, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    invoke-virtual {p0}, Lb/b/a/l/u/i;->h()Lb/b/a/l/u/g;

    move-result-object v1

    iput-object v1, p0, Lb/b/a/l/u/i;->D:Lb/b/a/l/u/g;

    iget-object v1, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    sget-object v2, Lb/b/a/l/u/i$g;->e:Lb/b/a/l/u/i$g;

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v0, Lb/b/a/l/u/i$f;->c:Lb/b/a/l/u/i$f;

    iput-object v0, p0, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    iget-object v0, p0, Lb/b/a/l/u/i;->q:Lb/b/a/l/u/i$a;

    check-cast v0, Lb/b/a/l/u/m;

    invoke-virtual {v0, p0}, Lb/b/a/l/u/m;->i(Lb/b/a/l/u/i;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    sget-object v2, Lb/b/a/l/u/i$g;->g:Lb/b/a/l/u/i$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lb/b/a/l/u/i;->F:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lb/b/a/l/u/i;->k()V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lb/b/a/l/u/i;->g()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/l/u/i;->t:Lb/b/a/l/u/i$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lb/b/a/l/u/i$g;->b:Lb/b/a/l/u/i$g;

    invoke-virtual {p0, v0}, Lb/b/a/l/u/i;->i(Lb/b/a/l/u/i$g;)Lb/b/a/l/u/i$g;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    invoke-virtual {p0}, Lb/b/a/l/u/i;->h()Lb/b/a/l/u/g;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/l/u/i;->D:Lb/b/a/l/u/g;

    :cond_2
    invoke-virtual {p0}, Lb/b/a/l/u/i;->m()V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lb/b/a/l/u/i;->d:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    iget-boolean v0, p0, Lb/b/a/l/u/i;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iput-boolean v1, p0, Lb/b/a/l/u/i;->E:Z

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lb/b/a/l/u/i;->C:Lb/b/a/l/t/d;

    :try_start_0
    iget-boolean v2, p0, Lb/b/a/l/u/i;->F:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lb/b/a/l/u/i;->k()V
    :try_end_0
    .catch Lb/b/a/l/u/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lb/b/a/l/t/d;->b()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lb/b/a/l/u/i;->n()V
    :try_end_1
    .catch Lb/b/a/l/u/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lb/b/a/l/t/d;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lb/b/a/l/u/i;->F:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lb/b/a/l/u/i;->s:Lb/b/a/l/u/i$g;

    sget-object v3, Lb/b/a/l/u/i$g;->f:Lb/b/a/l/u/i$g;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lb/b/a/l/u/i;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lb/b/a/l/u/i;->k()V

    :cond_4
    iget-boolean v0, p0, Lb/b/a/l/u/i;->F:Z

    if-nez v0, :cond_5

    throw v2

    :cond_5
    throw v2

    :catch_0
    move-exception v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lb/b/a/l/t/d;->b()V

    :cond_6
    throw v0
.end method
