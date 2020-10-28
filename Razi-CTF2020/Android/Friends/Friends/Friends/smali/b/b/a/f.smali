.class public Lb/b/a/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/f$b;,
        Lb/b/a/f$a;,
        Lb/b/a/f$e;,
        Lb/b/a/f$d;,
        Lb/b/a/f$c;
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/v/p;

.field public final b:Lb/b/a/o/a;

.field public final c:Lb/b/a/o/e;

.field public final d:Lb/b/a/o/f;

.field public final e:Lb/b/a/l/t/f;

.field public final f:Lb/b/a/l/w/h/f;

.field public final g:Lb/b/a/o/b;

.field public final h:Lb/b/a/o/d;

.field public final i:Lb/b/a/o/c;

.field public final j:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/o/d;

    invoke-direct {v0}, Lb/b/a/o/d;-><init>()V

    iput-object v0, p0, Lb/b/a/f;->h:Lb/b/a/o/d;

    new-instance v0, Lb/b/a/o/c;

    invoke-direct {v0}, Lb/b/a/o/c;-><init>()V

    iput-object v0, p0, Lb/b/a/f;->i:Lb/b/a/o/c;

    .line 1
    new-instance v0, La/h/i/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, La/h/i/e;-><init>(I)V

    new-instance v1, Lb/b/a/r/k/b;

    invoke-direct {v1}, Lb/b/a/r/k/b;-><init>()V

    new-instance v2, Lb/b/a/r/k/c;

    invoke-direct {v2}, Lb/b/a/r/k/c;-><init>()V

    .line 2
    new-instance v3, Lb/b/a/r/k/a$c;

    invoke-direct {v3, v0, v1, v2}, Lb/b/a/r/k/a$c;-><init>(La/h/i/c;Lb/b/a/r/k/a$b;Lb/b/a/r/k/a$e;)V

    .line 3
    iput-object v3, p0, Lb/b/a/f;->j:La/h/i/c;

    new-instance v0, Lb/b/a/l/v/p;

    invoke-direct {v0, v3}, Lb/b/a/l/v/p;-><init>(La/h/i/c;)V

    iput-object v0, p0, Lb/b/a/f;->a:Lb/b/a/l/v/p;

    new-instance v0, Lb/b/a/o/a;

    invoke-direct {v0}, Lb/b/a/o/a;-><init>()V

    iput-object v0, p0, Lb/b/a/f;->b:Lb/b/a/o/a;

    new-instance v0, Lb/b/a/o/e;

    invoke-direct {v0}, Lb/b/a/o/e;-><init>()V

    iput-object v0, p0, Lb/b/a/f;->c:Lb/b/a/o/e;

    new-instance v1, Lb/b/a/o/f;

    invoke-direct {v1}, Lb/b/a/o/f;-><init>()V

    iput-object v1, p0, Lb/b/a/f;->d:Lb/b/a/o/f;

    new-instance v1, Lb/b/a/l/t/f;

    invoke-direct {v1}, Lb/b/a/l/t/f;-><init>()V

    iput-object v1, p0, Lb/b/a/f;->e:Lb/b/a/l/t/f;

    new-instance v1, Lb/b/a/l/w/h/f;

    invoke-direct {v1}, Lb/b/a/l/w/h/f;-><init>()V

    iput-object v1, p0, Lb/b/a/f;->f:Lb/b/a/l/w/h/f;

    new-instance v1, Lb/b/a/o/b;

    invoke-direct {v1}, Lb/b/a/o/b;-><init>()V

    iput-object v1, p0, Lb/b/a/f;->g:Lb/b/a/o/b;

    const-string v1, "Gif"

    const-string v2, "Bitmap"

    const-string v3, "BitmapDrawable"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "legacy_prepend_all"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "legacy_append"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lb/b/a/o/e;->a:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lb/b/a/o/e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lb/b/a/o/e;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lb/b/a/o/e;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lb/b/a/l/d;)Lb/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lb/b/a/l/d<",
            "TData;>;)",
            "Lb/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->b:Lb/b/a/o/a;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/o/a;->a:Ljava/util/List;

    new-instance v2, Lb/b/a/o/a$a;

    invoke-direct {v2, p1, p2}, Lb/b/a/o/a$a;-><init>(Ljava/lang/Class;Lb/b/a/l/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b(Ljava/lang/Class;Lb/b/a/l/r;)Lb/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lb/b/a/l/r<",
            "TTResource;>;)",
            "Lb/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->d:Lb/b/a/o/f;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/o/f;->a:Ljava/util/List;

    new-instance v2, Lb/b/a/o/f$a;

    invoke-direct {v2, p1, p2}, Lb/b/a/o/f$a;-><init>(Ljava/lang/Class;Lb/b/a/l/r;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lb/b/a/l/v/o<",
            "TModel;TData;>;)",
            "Lb/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->a:Lb/b/a/l/v/p;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/v/p;->a:Lb/b/a/l/v/r;

    .line 2
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Lb/b/a/l/v/r$b;

    invoke-direct {v2, p1, p2, p3}, Lb/b/a/l/v/r$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)V

    iget-object p1, v1, Lb/b/a/l/v/r;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit v1

    .line 5
    iget-object p1, v0, Lb/b/a/l/v/p;->b:Lb/b/a/l/v/p$a;

    .line 6
    iget-object p1, p1, Lb/b/a/l/v/p$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lb/b/a/l/q<",
            "TData;TTResource;>;)",
            "Lb/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->c:Lb/b/a/o/e;

    .line 1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Lb/b/a/o/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lb/b/a/o/e$a;

    invoke-direct {v1, p2, p3, p4}, Lb/b/a/o/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->g:Lb/b/a/o/b;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/o/b;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lb/b/a/f$b;

    invoke-direct {v0}, Lb/b/a/f$b;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0

    throw v1
.end method

.method public f(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lb/b/a/l/v/n<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->a:Lb/b/a/l/v/p;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lb/b/a/l/v/p;->b:Lb/b/a/l/v/p$a;

    .line 4
    iget-object v2, v2, Lb/b/a/l/v/p$a;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/l/v/p$a$a;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lb/b/a/l/v/p$a$a;->a:Ljava/util/List;

    :goto_0
    if-nez v2, :cond_2

    .line 5
    iget-object v2, v0, Lb/b/a/l/v/p;->a:Lb/b/a/l/v/r;

    invoke-virtual {v2, v1}, Lb/b/a/l/v/r;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lb/b/a/l/v/p;->b:Lb/b/a/l/v/p$a;

    .line 6
    iget-object v3, v3, Lb/b/a/l/v/p$a;->a:Ljava/util/Map;

    new-instance v4, Lb/b/a/l/v/p$a$a;

    invoke-direct {v4, v2}, Lb/b/a/l/v/p$a$a;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/l/v/p$a$a;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already cached loaders for model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :goto_1
    monitor-exit v0

    .line 8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/a/l/v/n;

    invoke-interface {v6, p1}, Lb/b/a/l/v/n;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lb/b/a/f$c;

    invoke-direct {v0, p1, v2}, Lb/b/a/f$c;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw v0

    :cond_7
    new-instance v0, Lb/b/a/f$c;

    invoke-direct {v0, p1}, Lb/b/a/f$c;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public g(Lb/b/a/l/t/e$a;)Lb/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/t/e$a<",
            "*>;)",
            "Lb/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->e:Lb/b/a/l/t/f;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/t/f;->a:Ljava/util/Map;

    invoke-interface {p1}, Lb/b/a/l/t/e$a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/w/h/e;)Lb/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lb/b/a/l/w/h/e<",
            "TTResource;TTranscode;>;)",
            "Lb/b/a/f;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/f;->f:Lb/b/a/l/w/h/f;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/w/h/f;->a:Ljava/util/List;

    new-instance v2, Lb/b/a/l/w/h/f$a;

    invoke-direct {v2, p1, p2, p3}, Lb/b/a/l/w/h/f$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/w/h/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
