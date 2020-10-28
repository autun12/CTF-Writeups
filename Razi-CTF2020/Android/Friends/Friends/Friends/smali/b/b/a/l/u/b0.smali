.class public Lb/b/a/l/u/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/g;
.implements Lb/b/a/l/u/g$a;


# instance fields
.field public final b:Lb/b/a/l/u/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/u/g$a;

.field public d:I

.field public e:Lb/b/a/l/u/d;

.field public f:Ljava/lang/Object;

.field public volatile g:Lb/b/a/l/v/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lb/b/a/l/u/e;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/h<",
            "*>;",
            "Lb/b/a/l/u/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    iput-object p2, p0, Lb/b/a/l/u/b0;->c:Lb/b/a/l/u/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 11

    iget-object v0, p0, Lb/b/a/l/u/b0;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lb/b/a/l/u/b0;->f:Ljava/lang/Object;

    const-string v2, "SourceGenerator"

    .line 1
    sget v3, Lb/b/a/r/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 2
    :try_start_0
    iget-object v5, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    invoke-virtual {v5, v0}, Lb/b/a/l/u/h;->e(Ljava/lang/Object;)Lb/b/a/l/d;

    move-result-object v5

    new-instance v6, Lb/b/a/l/u/f;

    iget-object v7, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    .line 3
    iget-object v7, v7, Lb/b/a/l/u/h;->i:Lb/b/a/l/o;

    .line 4
    invoke-direct {v6, v5, v0, v7}, Lb/b/a/l/u/f;-><init>(Lb/b/a/l/d;Ljava/lang/Object;Lb/b/a/l/o;)V

    new-instance v7, Lb/b/a/l/u/e;

    iget-object v8, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v8, v8, Lb/b/a/l/v/n$a;->a:Lb/b/a/l/m;

    iget-object v9, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    .line 5
    iget-object v10, v9, Lb/b/a/l/u/h;->n:Lb/b/a/l/m;

    .line 6
    invoke-direct {v7, v8, v10}, Lb/b/a/l/u/e;-><init>(Lb/b/a/l/m;Lb/b/a/l/m;)V

    iput-object v7, p0, Lb/b/a/l/u/b0;->h:Lb/b/a/l/u/e;

    invoke-virtual {v9}, Lb/b/a/l/u/h;->b()Lb/b/a/l/u/d0/a;

    move-result-object v7

    iget-object v8, p0, Lb/b/a/l/u/b0;->h:Lb/b/a/l/u/e;

    invoke-interface {v7, v8, v6}, Lb/b/a/l/u/d0/a;->a(Lb/b/a/l/m;Lb/b/a/l/u/d0/a$b;)V

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished encoding source to cache, key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lb/b/a/l/u/b0;->h:Lb/b/a/l/u/e;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lb/b/a/r/f;->a(J)D

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v0}, Lb/b/a/l/t/d;->b()V

    new-instance v0, Lb/b/a/l/u/d;

    iget-object v2, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v2, v2, Lb/b/a/l/v/n$a;->a:Lb/b/a/l/m;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    invoke-direct {v0, v2, v3, p0}, Lb/b/a/l/u/d;-><init>(Ljava/util/List;Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V

    iput-object v0, p0, Lb/b/a/l/u/b0;->e:Lb/b/a/l/u/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v1, v1, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v1}, Lb/b/a/l/t/d;->b()V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/a/l/u/b0;->e:Lb/b/a/l/u/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/b/a/l/u/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iput-object v1, p0, Lb/b/a/l/u/b0;->e:Lb/b/a/l/u/d;

    iput-object v1, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 8
    iget v3, p0, Lb/b/a/l/u/b0;->d:I

    iget-object v4, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    invoke-virtual {v4}, Lb/b/a/l/u/h;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 9
    iget-object v3, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    invoke-virtual {v3}, Lb/b/a/l/u/h;->c()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lb/b/a/l/u/b0;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lb/b/a/l/u/b0;->d:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/l/v/n$a;

    iput-object v3, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v3, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    .line 10
    iget-object v3, v3, Lb/b/a/l/u/h;->p:Lb/b/a/l/u/k;

    .line 11
    iget-object v4, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v4, v4, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v4}, Lb/b/a/l/t/d;->e()Lb/b/a/l/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/a/l/u/k;->c(Lb/b/a/l/a;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    iget-object v4, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v4, v4, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v4}, Lb/b/a/l/t/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/a/l/u/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    iget-object v1, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    .line 12
    iget-object v3, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v3, v3, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    iget-object v4, p0, Lb/b/a/l/u/b0;->b:Lb/b/a/l/u/h;

    .line 13
    iget-object v4, v4, Lb/b/a/l/u/h;->o:Lb/b/a/e;

    .line 14
    new-instance v5, Lb/b/a/l/u/a0;

    invoke-direct {v5, p0, v1}, Lb/b/a/l/u/a0;-><init>(Lb/b/a/l/u/b0;Lb/b/a/l/v/n$a;)V

    invoke-interface {v3, v4, v5}, Lb/b/a/l/t/d;->d(Lb/b/a/e;Lb/b/a/l/t/d$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public b()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(Lb/b/a/l/m;Ljava/lang/Object;Lb/b/a/l/t/d;Lb/b/a/l/a;Lb/b/a/l/m;)V
    .locals 6
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

    iget-object v0, p0, Lb/b/a/l/u/b0;->c:Lb/b/a/l/u/g$a;

    iget-object p4, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object p4, p4, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {p4}, Lb/b/a/l/t/d;->e()Lb/b/a/l/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lb/b/a/l/u/g$a;->c(Lb/b/a/l/m;Ljava/lang/Object;Lb/b/a/l/t/d;Lb/b/a/l/a;Lb/b/a/l/m;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v0}, Lb/b/a/l/t/d;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Lb/b/a/l/m;Ljava/lang/Exception;Lb/b/a/l/t/d;Lb/b/a/l/a;)V
    .locals 1
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

    iget-object p4, p0, Lb/b/a/l/u/b0;->c:Lb/b/a/l/u/g$a;

    iget-object v0, p0, Lb/b/a/l/u/b0;->g:Lb/b/a/l/v/n$a;

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v0}, Lb/b/a/l/t/d;->e()Lb/b/a/l/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lb/b/a/l/u/g$a;->d(Lb/b/a/l/m;Ljava/lang/Exception;Lb/b/a/l/t/d;Lb/b/a/l/a;)V

    return-void
.end method
