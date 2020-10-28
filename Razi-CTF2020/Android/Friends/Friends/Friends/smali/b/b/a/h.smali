.class public Lb/b/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lb/b/a/m/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lb/b/a/m/i;",
        "Ljava/lang/Object<",
        "Lb/b/a/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final m:Lb/b/a/p/e;


# instance fields
.field public final b:Lb/b/a/b;

.field public final c:Landroid/content/Context;

.field public final d:Lb/b/a/m/h;

.field public final e:Lb/b/a/m/n;

.field public final f:Lb/b/a/m/m;

.field public final g:Lb/b/a/m/p;

.field public final h:Ljava/lang/Runnable;

.field public final i:Landroid/os/Handler;

.field public final j:Lb/b/a/m/c;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb/b/a/p/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public l:Lb/b/a/p/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/graphics/Bitmap;

    .line 1
    new-instance v1, Lb/b/a/p/e;

    invoke-direct {v1}, Lb/b/a/p/e;-><init>()V

    invoke-virtual {v1, v0}, Lb/b/a/p/a;->c(Ljava/lang/Class;)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lb/b/a/p/a;->u:Z

    .line 3
    sput-object v0, Lb/b/a/h;->m:Lb/b/a/p/e;

    const-class v0, Lb/b/a/l/w/g/c;

    .line 4
    new-instance v2, Lb/b/a/p/e;

    invoke-direct {v2}, Lb/b/a/p/e;-><init>()V

    invoke-virtual {v2, v0}, Lb/b/a/p/a;->c(Ljava/lang/Class;)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    .line 5
    iput-boolean v1, v0, Lb/b/a/p/a;->u:Z

    .line 6
    sget-object v0, Lb/b/a/l/u/k;->b:Lb/b/a/l/u/k;

    .line 7
    new-instance v2, Lb/b/a/p/e;

    invoke-direct {v2}, Lb/b/a/p/e;-><init>()V

    invoke-virtual {v2, v0}, Lb/b/a/p/a;->d(Lb/b/a/l/u/k;)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    .line 8
    sget-object v2, Lb/b/a/e;->e:Lb/b/a/e;

    invoke-virtual {v0, v2}, Lb/b/a/p/a;->h(Lb/b/a/e;)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    invoke-virtual {v0, v1}, Lb/b/a/p/a;->l(Z)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    return-void
.end method

.method public constructor <init>(Lb/b/a/b;Lb/b/a/m/h;Lb/b/a/m/m;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lb/b/a/m/n;

    invoke-direct {v0}, Lb/b/a/m/n;-><init>()V

    .line 1
    iget-object v1, p1, Lb/b/a/b;->h:Lb/b/a/m/d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lb/b/a/m/p;

    invoke-direct {v2}, Lb/b/a/m/p;-><init>()V

    iput-object v2, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    new-instance v2, Lb/b/a/h$a;

    invoke-direct {v2, p0}, Lb/b/a/h$a;-><init>(Lb/b/a/h;)V

    iput-object v2, p0, Lb/b/a/h;->h:Ljava/lang/Runnable;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lb/b/a/h;->i:Landroid/os/Handler;

    iput-object p1, p0, Lb/b/a/h;->b:Lb/b/a/b;

    iput-object p2, p0, Lb/b/a/h;->d:Lb/b/a/m/h;

    iput-object p3, p0, Lb/b/a/h;->f:Lb/b/a/m/m;

    iput-object v0, p0, Lb/b/a/h;->e:Lb/b/a/m/n;

    iput-object p4, p0, Lb/b/a/h;->c:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lb/b/a/h$b;

    invoke-direct {p4, p0, v0}, Lb/b/a/h$b;-><init>(Lb/b/a/h;Lb/b/a/m/n;)V

    check-cast v1, Lb/b/a/m/f;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, La/h/c/a;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p3, v4, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    const-string v5, "ConnectivityMonitor"

    .line 5
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    const-string v4, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v4, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Lb/b/a/m/e;

    invoke-direct {v0, p3, p4}, Lb/b/a/m/e;-><init>(Landroid/content/Context;Lb/b/a/m/c$a;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lb/b/a/m/j;

    invoke-direct {v0}, Lb/b/a/m/j;-><init>()V

    .line 6
    :goto_2
    iput-object v0, p0, Lb/b/a/h;->j:Lb/b/a/m/c;

    invoke-static {}, Lb/b/a/r/j;->g()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p2, p0}, Lb/b/a/m/h;->b(Lb/b/a/m/i;)V

    :goto_3
    invoke-interface {p2, v0}, Lb/b/a/m/h;->b(Lb/b/a/m/i;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    iget-object p3, p1, Lb/b/a/b;->d:Lb/b/a/d;

    .line 8
    iget-object p3, p3, Lb/b/a/d;->e:Ljava/util/List;

    .line 9
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lb/b/a/h;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    iget-object p2, p1, Lb/b/a/b;->d:Lb/b/a/d;

    .line 11
    monitor-enter p2

    :try_start_0
    iget-object p3, p2, Lb/b/a/d;->j:Lb/b/a/p/e;

    if-nez p3, :cond_5

    iget-object p3, p2, Lb/b/a/d;->d:Lb/b/a/b$a;

    check-cast p3, Lb/b/a/c$a;

    .line 12
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lb/b/a/p/e;

    invoke-direct {p3}, Lb/b/a/p/e;-><init>()V

    .line 13
    iput-boolean v1, p3, Lb/b/a/p/a;->u:Z

    .line 14
    iput-object p3, p2, Lb/b/a/d;->j:Lb/b/a/p/e;

    :cond_5
    iget-object p3, p2, Lb/b/a/d;->j:Lb/b/a/p/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p2

    .line 15
    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object p2

    check-cast p2, Lb/b/a/p/e;

    .line 16
    iget-boolean p3, p2, Lb/b/a/p/a;->u:Z

    if-eqz p3, :cond_7

    iget-boolean p3, p2, Lb/b/a/p/a;->w:Z

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    iput-boolean v1, p2, Lb/b/a/p/a;->w:Z

    .line 17
    iput-boolean v1, p2, Lb/b/a/p/a;->u:Z

    .line 18
    iput-object p2, p0, Lb/b/a/h;->l:Lb/b/a/p/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 19
    iget-object p2, p1, Lb/b/a/b;->i:Ljava/util/List;

    monitor-enter p2

    :try_start_2
    iget-object p3, p1, Lb/b/a/b;->i:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p1, p1, Lb/b/a/b;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot register already registered manager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p1

    .line 21
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/h;->m()V

    iget-object v0, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    invoke-virtual {v0}, Lb/b/a/m/p;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/h;->n()V

    iget-object v0, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    invoke-virtual {v0}, Lb/b/a/m/p;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    invoke-virtual {v0}, Lb/b/a/m/p;->i()V

    iget-object v0, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    .line 1
    iget-object v0, v0, Lb/b/a/m/p;->b:Ljava/util/Set;

    invoke-static {v0}, Lb/b/a/r/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/p/h/h;

    invoke-virtual {p0, v1}, Lb/b/a/h;->l(Lb/b/a/p/h/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    .line 3
    iget-object v0, v0, Lb/b/a/m/p;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Lb/b/a/h;->e:Lb/b/a/m/n;

    .line 5
    iget-object v1, v0, Lb/b/a/m/n;->a:Ljava/util/Set;

    invoke-static {v1}, Lb/b/a/r/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/p/b;

    invoke-virtual {v0, v2}, Lb/b/a/m/n;->a(Lb/b/a/p/b;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lb/b/a/m/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lb/b/a/h;->d:Lb/b/a/m/h;

    invoke-interface {v0, p0}, Lb/b/a/m/h;->a(Lb/b/a/m/i;)V

    iget-object v0, p0, Lb/b/a/h;->d:Lb/b/a/m/h;

    iget-object v1, p0, Lb/b/a/h;->j:Lb/b/a/m/c;

    invoke-interface {v0, v1}, Lb/b/a/m/h;->a(Lb/b/a/m/i;)V

    iget-object v0, p0, Lb/b/a/h;->i:Landroid/os/Handler;

    iget-object v1, p0, Lb/b/a/h;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lb/b/a/h;->b:Lb/b/a/b;

    .line 7
    iget-object v1, v0, Lb/b/a/b;->i:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v0, Lb/b/a/b;->i:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lb/b/a/b;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public l(Lb/b/a/p/h/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/p/h/h<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lb/b/a/h;->o(Lb/b/a/p/h/h;)Z

    move-result v0

    invoke-interface {p1}, Lb/b/a/p/h/h;->b()Lb/b/a/p/b;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/b/a/h;->b:Lb/b/a/b;

    .line 2
    iget-object v2, v0, Lb/b/a/b;->i:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lb/b/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/h;

    invoke-virtual {v3, p1}, Lb/b/a/h;->o(Lb/b/a/p/h/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lb/b/a/p/h/h;->h(Lb/b/a/p/b;)V

    invoke-interface {v1}, Lb/b/a/p/b;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized m()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/h;->e:Lb/b/a/m/n;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/b/a/m/n;->c:Z

    iget-object v1, v0, Lb/b/a/m/n;->a:Ljava/util/Set;

    invoke-static {v1}, Lb/b/a/r/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/p/b;

    invoke-interface {v2}, Lb/b/a/p/b;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lb/b/a/p/b;->b()V

    iget-object v3, v0, Lb/b/a/m/n;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized n()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/h;->e:Lb/b/a/m/n;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lb/b/a/m/n;->c:Z

    iget-object v1, v0, Lb/b/a/m/n;->a:Ljava/util/Set;

    invoke-static {v1}, Lb/b/a/r/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/p/b;

    invoke-interface {v2}, Lb/b/a/p/b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lb/b/a/p/b;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lb/b/a/p/b;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lb/b/a/m/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized o(Lb/b/a/p/h/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/p/h/h<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lb/b/a/p/h/h;->b()Lb/b/a/p/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lb/b/a/h;->e:Lb/b/a/m/n;

    invoke-virtual {v2, v0}, Lb/b/a/m/n;->a(Lb/b/a/p/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/h;->g:Lb/b/a/m/p;

    .line 1
    iget-object v0, v0, Lb/b/a/m/p;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lb/b/a/p/h/h;->h(Lb/b/a/p/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/h;->e:Lb/b/a/m/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/h;->f:Lb/b/a/m/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
