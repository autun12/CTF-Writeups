.class public Lb/b/a/l/u/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/g;
.implements Lb/b/a/l/t/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/g;",
        "Lb/b/a/l/t/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lb/b/a/l/u/g$a;

.field public final c:Lb/b/a/l/u/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/h<",
            "*>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Lb/b/a/l/m;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/l/v/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:I

.field public volatile i:Lb/b/a/l/v/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/io/File;

.field public k:Lb/b/a/l/u/y;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V
    .locals 1
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

    const/4 v0, -0x1

    iput v0, p0, Lb/b/a/l/u/x;->e:I

    iput-object p1, p0, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    iput-object p2, p0, Lb/b/a/l/u/x;->b:Lb/b/a/l/u/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    invoke-virtual {v0}, Lb/b/a/l/u/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 1
    iget-object v4, v2, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 2
    iget-object v4, v4, Lb/b/a/d;->b:Lb/b/a/f;

    .line 3
    iget-object v5, v2, Lb/b/a/l/u/h;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Lb/b/a/l/u/h;->g:Ljava/lang/Class;

    iget-object v2, v2, Lb/b/a/l/u/h;->k:Ljava/lang/Class;

    .line 4
    iget-object v7, v4, Lb/b/a/f;->h:Lb/b/a/o/d;

    .line 5
    iget-object v8, v7, Lb/b/a/o/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/a/r/i;

    if-nez v8, :cond_1

    new-instance v8, Lb/b/a/r/i;

    invoke-direct {v8, v5, v6, v2}, Lb/b/a/r/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 6
    :cond_1
    iput-object v5, v8, Lb/b/a/r/i;->a:Ljava/lang/Class;

    iput-object v6, v8, Lb/b/a/r/i;->b:Ljava/lang/Class;

    iput-object v2, v8, Lb/b/a/r/i;->c:Ljava/lang/Class;

    .line 7
    :goto_0
    iget-object v10, v7, Lb/b/a/o/d;->b:La/e/a;

    monitor-enter v10

    :try_start_0
    iget-object v11, v7, Lb/b/a/o/d;->b:La/e/a;

    .line 8
    invoke-virtual {v11, v8, v9}, La/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 9
    check-cast v11, Ljava/util/List;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v7, v7, Lb/b/a/o/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_5

    .line 10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v4, Lb/b/a/f;->a:Lb/b/a/l/v/p;

    .line 11
    monitor-enter v7

    :try_start_1
    iget-object v8, v7, Lb/b/a/l/v/p;->a:Lb/b/a/l/v/r;

    invoke-virtual {v8, v5}, Lb/b/a/l/v/r;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 12
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    iget-object v10, v4, Lb/b/a/f;->c:Lb/b/a/o/e;

    invoke-virtual {v10, v8, v6}, Lb/b/a/o/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    iget-object v12, v4, Lb/b/a/f;->f:Lb/b/a/l/w/h/f;

    invoke-virtual {v12, v10, v2}, Lb/b/a/l/w/h/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v4, v4, Lb/b/a/f;->h:Lb/b/a/o/d;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 13
    iget-object v8, v4, Lb/b/a/o/d;->b:La/e/a;

    monitor-enter v8

    :try_start_2
    iget-object v4, v4, Lb/b/a/o/d;->b:La/e/a;

    new-instance v10, Lb/b/a/r/i;

    invoke-direct {v10, v5, v6, v2}, Lb/b/a/r/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v7}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 14
    monitor-exit v7

    throw v0

    .line 15
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v0, Ljava/io/File;

    iget-object v2, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 16
    iget-object v2, v2, Lb/b/a/l/u/h;->k:Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find any load path from "

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 18
    iget-object v3, v3, Lb/b/a/l/u/h;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 20
    iget-object v3, v3, Lb/b/a/l/u/h;->k:Ljava/lang/Class;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object v2, v1, Lb/b/a/l/u/x;->g:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 22
    iget v4, v1, Lb/b/a/l/u/x;->h:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    goto :goto_7

    .line 23
    :cond_9
    iput-object v9, v1, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    const/4 v0, 0x0

    :cond_a
    :goto_5
    if-nez v0, :cond_c

    .line 24
    iget v2, v1, Lb/b/a/l/u/x;->h:I

    iget-object v3, v1, Lb/b/a/l/u/x;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_c

    .line 25
    iget-object v2, v1, Lb/b/a/l/u/x;->g:Ljava/util/List;

    iget v3, v1, Lb/b/a/l/u/x;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lb/b/a/l/u/x;->h:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/l/v/n;

    iget-object v3, v1, Lb/b/a/l/u/x;->j:Ljava/io/File;

    iget-object v4, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 26
    iget v5, v4, Lb/b/a/l/u/h;->e:I

    .line 27
    iget v6, v4, Lb/b/a/l/u/h;->f:I

    .line 28
    iget-object v4, v4, Lb/b/a/l/u/h;->i:Lb/b/a/l/o;

    .line 29
    invoke-interface {v2, v3, v5, v6, v4}, Lb/b/a/l/v/n;->a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;

    move-result-object v2

    iput-object v2, v1, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    iget-object v2, v1, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    iget-object v3, v1, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    iget-object v3, v3, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v3}, Lb/b/a/l/t/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/b/a/l/u/h;->g(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v1, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    iget-object v2, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 30
    iget-object v2, v2, Lb/b/a/l/u/h;->o:Lb/b/a/e;

    .line 31
    invoke-interface {v0, v2, v1}, Lb/b/a/l/t/d;->d(Lb/b/a/e;Lb/b/a/l/t/d$a;)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    return v0

    :cond_d
    :goto_7
    iget v2, v1, Lb/b/a/l/u/x;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lb/b/a/l/u/x;->e:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    iget v2, v1, Lb/b/a/l/u/x;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lb/b/a/l/u/x;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_e

    return v3

    :cond_e
    iput v3, v1, Lb/b/a/l/u/x;->e:I

    :cond_f
    iget v2, v1, Lb/b/a/l/u/x;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/l/m;

    iget v4, v1, Lb/b/a/l/u/x;->e:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    invoke-virtual {v5, v4}, Lb/b/a/l/u/h;->f(Ljava/lang/Class;)Lb/b/a/l/s;

    move-result-object v18

    new-instance v5, Lb/b/a/l/u/y;

    iget-object v6, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 32
    iget-object v7, v6, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 33
    iget-object v13, v7, Lb/b/a/d;->a:Lb/b/a/l/u/c0/b;

    .line 34
    iget-object v15, v6, Lb/b/a/l/u/h;->n:Lb/b/a/l/m;

    .line 35
    iget v7, v6, Lb/b/a/l/u/h;->e:I

    .line 36
    iget v8, v6, Lb/b/a/l/u/h;->f:I

    .line 37
    iget-object v10, v6, Lb/b/a/l/u/h;->i:Lb/b/a/l/o;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    .line 38
    invoke-direct/range {v12 .. v20}, Lb/b/a/l/u/y;-><init>(Lb/b/a/l/u/c0/b;Lb/b/a/l/m;Lb/b/a/l/m;IILb/b/a/l/s;Ljava/lang/Class;Lb/b/a/l/o;)V

    iput-object v5, v1, Lb/b/a/l/u/x;->k:Lb/b/a/l/u/y;

    invoke-virtual {v6}, Lb/b/a/l/u/h;->b()Lb/b/a/l/u/d0/a;

    move-result-object v4

    iget-object v5, v1, Lb/b/a/l/u/x;->k:Lb/b/a/l/u/y;

    invoke-interface {v4, v5}, Lb/b/a/l/u/d0/a;->b(Lb/b/a/l/m;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lb/b/a/l/u/x;->j:Ljava/io/File;

    if-eqz v4, :cond_7

    iput-object v2, v1, Lb/b/a/l/u/x;->f:Lb/b/a/l/m;

    iget-object v2, v1, Lb/b/a/l/u/x;->c:Lb/b/a/l/u/h;

    .line 39
    iget-object v2, v2, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 40
    iget-object v2, v2, Lb/b/a/d;->b:Lb/b/a/f;

    .line 41
    invoke-virtual {v2, v4}, Lb/b/a/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 42
    iput-object v2, v1, Lb/b/a/l/u/x;->g:Ljava/util/List;

    iput v3, v1, Lb/b/a/l/u/x;->h:I

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    .line 43
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lb/b/a/l/u/x;->b:Lb/b/a/l/u/g$a;

    iget-object v1, p0, Lb/b/a/l/u/x;->k:Lb/b/a/l/u/y;

    iget-object v2, p0, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    iget-object v2, v2, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    sget-object v3, Lb/b/a/l/a;->e:Lb/b/a/l/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lb/b/a/l/u/g$a;->d(Lb/b/a/l/m;Ljava/lang/Exception;Lb/b/a/l/t/d;Lb/b/a/l/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v0}, Lb/b/a/l/t/d;->cancel()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lb/b/a/l/u/x;->b:Lb/b/a/l/u/g$a;

    iget-object v1, p0, Lb/b/a/l/u/x;->f:Lb/b/a/l/m;

    iget-object v2, p0, Lb/b/a/l/u/x;->i:Lb/b/a/l/v/n$a;

    iget-object v3, v2, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    sget-object v4, Lb/b/a/l/a;->e:Lb/b/a/l/a;

    iget-object v5, p0, Lb/b/a/l/u/x;->k:Lb/b/a/l/u/y;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lb/b/a/l/u/g$a;->c(Lb/b/a/l/m;Ljava/lang/Object;Lb/b/a/l/t/d;Lb/b/a/l/a;Lb/b/a/l/m;)V

    return-void
.end method
