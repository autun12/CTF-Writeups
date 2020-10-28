.class public final Lb/b/a/p/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/p/b;
.implements Lb/b/a/p/h/g;
.implements Lb/b/a/p/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/p/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/p/b;",
        "Lb/b/a/p/h/g;",
        "Lb/b/a/p/f;"
    }
.end annotation


# static fields
.field public static final D:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/RuntimeException;

.field public final a:Ljava/lang/String;

.field public final b:Lb/b/a/r/k/d;

.field public final c:Ljava/lang/Object;

.field public final d:Lb/b/a/p/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/p/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Lb/b/a/p/c;

.field public final f:Landroid/content/Context;

.field public final g:Lb/b/a/d;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final j:Lb/b/a/p/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/p/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public final m:Lb/b/a/e;

.field public final n:Lb/b/a/p/h/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/p/h/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/p/d<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final p:Lb/b/a/p/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/p/i/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Lb/b/a/l/u/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/w<",
            "TR;>;"
        }
    .end annotation
.end field

.field public s:Lb/b/a/l/u/l$d;

.field public t:J

.field public volatile u:Lb/b/a/l/u/l;

.field public v:Lb/b/a/p/g$a;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lb/b/a/p/g;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/b/a/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lb/b/a/p/a;IILb/b/a/e;Lb/b/a/p/h/h;Lb/b/a/p/d;Ljava/util/List;Lb/b/a/p/c;Lb/b/a/l/u/l;Lb/b/a/p/i/c;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/b/a/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lb/b/a/p/a<",
            "*>;II",
            "Lb/b/a/e;",
            "Lb/b/a/p/h/h<",
            "TR;>;",
            "Lb/b/a/p/d<",
            "TR;>;",
            "Ljava/util/List<",
            "Lb/b/a/p/d<",
            "TR;>;>;",
            "Lb/b/a/p/c;",
            "Lb/b/a/l/u/l;",
            "Lb/b/a/p/i/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v2, Lb/b/a/p/g;->D:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lb/b/a/p/g;->a:Ljava/lang/String;

    .line 1
    new-instance v2, Lb/b/a/r/k/d$b;

    invoke-direct {v2}, Lb/b/a/r/k/d$b;-><init>()V

    .line 2
    iput-object v2, v0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    move-object v2, p3

    iput-object v2, v0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    move-object v2, p1

    iput-object v2, v0, Lb/b/a/p/g;->f:Landroid/content/Context;

    iput-object v1, v0, Lb/b/a/p/g;->g:Lb/b/a/d;

    move-object v2, p4

    iput-object v2, v0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Lb/b/a/p/g;->i:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    move v2, p7

    iput v2, v0, Lb/b/a/p/g;->k:I

    move v2, p8

    iput v2, v0, Lb/b/a/p/g;->l:I

    move-object v2, p9

    iput-object v2, v0, Lb/b/a/p/g;->m:Lb/b/a/e;

    move-object v2, p10

    iput-object v2, v0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    move-object v2, p11

    iput-object v2, v0, Lb/b/a/p/g;->d:Lb/b/a/p/d;

    move-object v2, p12

    iput-object v2, v0, Lb/b/a/p/g;->o:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    move-object/from16 v2, p14

    iput-object v2, v0, Lb/b/a/p/g;->u:Lb/b/a/l/u/l;

    move-object/from16 v2, p15

    iput-object v2, v0, Lb/b/a/p/g;->p:Lb/b/a/p/i/c;

    move-object/from16 v2, p16

    iput-object v2, v0, Lb/b/a/p/g;->q:Ljava/util/concurrent/Executor;

    sget-object v2, Lb/b/a/p/g$a;->b:Lb/b/a/p/g$a;

    iput-object v2, v0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    iget-object v2, v0, Lb/b/a/p/g;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 3
    iget-boolean v1, v1, Lb/b/a/d;->h:Z

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lb/b/a/p/g;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    sget-object v2, Lb/b/a/p/g$a;->e:Lb/b/a/p/g$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/p/g;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/g;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    sget-object v2, Lb/b/a/p/g$a;->g:Lb/b/a/p/g$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 5

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/p/g;->f()V

    iget-object v1, p0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v1}, Lb/b/a/r/k/d;->a()V

    iget-object v1, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    sget-object v2, Lb/b/a/p/g$a;->g:Lb/b/a/p/g$a;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/a/p/g;->g()V

    iget-object v1, p0, Lb/b/a/p/g;->r:Lb/b/a/l/u/w;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, Lb/b/a/p/g;->r:Lb/b/a/l/u/w;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 1
    :goto_0
    iget-object v3, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz v3, :cond_3

    invoke-interface {v3, p0}, Lb/b/a/p/c;->f(Lb/b/a/p/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    .line 2
    iget-object v3, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-virtual {p0}, Lb/b/a/p/g;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lb/b/a/p/h/h;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iput-object v2, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    iget-object v0, p0, Lb/b/a/p/g;->u:Lb/b/a/l/u/l;

    invoke-virtual {v0, v1}, Lb/b/a/l/u/l;->f(Lb/b/a/l/u/w;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/p/g;->f()V

    iget-object v1, p0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v1}, Lb/b/a/r/k/d;->a()V

    .line 1
    sget v1, Lb/b/a/r/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2
    iput-wide v1, p0, Lb/b/a/p/g;->t:J

    iget-object v1, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget v1, p0, Lb/b/a/p/g;->k:I

    iget v2, p0, Lb/b/a/p/g;->l:I

    invoke-static {v1, v2}, Lb/b/a/r/j;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lb/b/a/p/g;->k:I

    iput v1, p0, Lb/b/a/p/g;->z:I

    iget v1, p0, Lb/b/a/p/g;->l:I

    iput v1, p0, Lb/b/a/p/g;->A:I

    :cond_0
    invoke-virtual {p0}, Lb/b/a/p/g;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    new-instance v2, Lb/b/a/l/u/r;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lb/b/a/l/u/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lb/b/a/p/g;->n(Lb/b/a/l/u/r;I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    sget-object v2, Lb/b/a/p/g$a;->c:Lb/b/a/p/g$a;

    if-eq v1, v2, :cond_a

    sget-object v3, Lb/b/a/p/g$a;->e:Lb/b/a/p/g$a;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lb/b/a/p/g;->r:Lb/b/a/l/u/w;

    sget-object v2, Lb/b/a/l/a;->f:Lb/b/a/l/a;

    invoke-virtual {p0, v1, v2}, Lb/b/a/p/g;->o(Lb/b/a/l/u/w;Lb/b/a/l/a;)V

    monitor-exit v0

    return-void

    :cond_3
    sget-object v1, Lb/b/a/p/g$a;->d:Lb/b/a/p/g$a;

    iput-object v1, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    iget v3, p0, Lb/b/a/p/g;->k:I

    iget v4, p0, Lb/b/a/p/g;->l:I

    invoke-static {v3, v4}, Lb/b/a/r/j;->i(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lb/b/a/p/g;->k:I

    iget v4, p0, Lb/b/a/p/g;->l:I

    invoke-virtual {p0, v3, v4}, Lb/b/a/p/g;->e(II)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-interface {v3, p0}, Lb/b/a/p/h/h;->e(Lb/b/a/p/h/g;)V

    :goto_1
    iget-object v3, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    if-eq v3, v2, :cond_5

    if-ne v3, v1, :cond_8

    .line 3
    :cond_5
    iget-object v1, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz v1, :cond_7

    invoke-interface {v1, p0}, Lb/b/a/p/c;->e(Lb/b/a/p/b;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 4
    iget-object v1, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-virtual {p0}, Lb/b/a/p/g;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lb/b/a/p/h/h;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    sget-boolean v1, Lb/b/a/p/g;->D:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/b/a/p/g;->t:J

    invoke-static {v2, v3}, Lb/b/a/r/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb/b/a/p/g;->m(Ljava/lang/String;)V

    :cond_9
    monitor-exit v0

    return-void

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(II)V
    .locals 24

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    iget-object v2, v15, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v2}, Lb/b/a/r/k/d;->a()V

    iget-object v14, v15, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v21, Lb/b/a/p/g;->D:Z

    if-eqz v21, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v15, Lb/b/a/p/g;->t:J

    invoke-static {v3, v4}, Lb/b/a/r/f;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lb/b/a/p/g;->m(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v15, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    sget-object v3, Lb/b/a/p/g$a;->d:Lb/b/a/p/g$a;

    if-eq v2, v3, :cond_1

    monitor-exit v14

    return-void

    :cond_1
    sget-object v13, Lb/b/a/p/g$a;->c:Lb/b/a/p/g$a;

    iput-object v13, v15, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    iget-object v2, v15, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    .line 1
    iget v2, v2, Lb/b/a/p/a;->c:F

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    :goto_0
    iput v0, v15, Lb/b/a/p/g;->z:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v2, v2, v0

    .line 4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5
    :goto_1
    iput v0, v15, Lb/b/a/p/g;->A:I

    if-eqz v21, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lb/b/a/p/g;->t:J

    invoke-static {v1, v2}, Lb/b/a/r/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lb/b/a/p/g;->m(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v15, Lb/b/a/p/g;->u:Lb/b/a/l/u/l;

    iget-object v2, v15, Lb/b/a/p/g;->g:Lb/b/a/d;

    iget-object v3, v15, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v0, v15, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    .line 6
    iget-object v4, v0, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    .line 7
    iget v5, v15, Lb/b/a/p/g;->z:I

    iget v6, v15, Lb/b/a/p/g;->A:I

    .line 8
    iget-object v7, v0, Lb/b/a/p/a;->t:Ljava/lang/Class;

    .line 9
    iget-object v8, v15, Lb/b/a/p/g;->i:Ljava/lang/Class;

    iget-object v9, v15, Lb/b/a/p/g;->m:Lb/b/a/e;

    .line 10
    iget-object v10, v0, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    .line 11
    iget-object v11, v0, Lb/b/a/p/a;->s:Ljava/util/Map;

    .line 12
    iget-boolean v12, v0, Lb/b/a/p/a;->n:Z

    move-object/from16 v16, v13

    .line 13
    iget-boolean v13, v0, Lb/b/a/p/a;->z:Z

    move/from16 v17, v13

    .line 14
    iget-object v13, v0, Lb/b/a/p/a;->r:Lb/b/a/l/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v14

    .line 15
    :try_start_1
    iget-boolean v14, v0, Lb/b/a/p/a;->j:Z

    move/from16 v19, v14

    .line 16
    iget-boolean v14, v0, Lb/b/a/p/a;->x:Z

    move/from16 v20, v14

    .line 17
    iget-boolean v14, v0, Lb/b/a/p/a;->A:Z

    .line 18
    iget-boolean v0, v0, Lb/b/a/p/a;->y:Z

    move/from16 p1, v0

    .line 19
    iget-object v0, v15, Lb/b/a/p/g;->q:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v22, v16

    move-object/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v23, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, p1

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    :try_start_2
    invoke-virtual/range {v1 .. v20}, Lb/b/a/l/u/l;->b(Lb/b/a/d;Ljava/lang/Object;Lb/b/a/l/m;IILjava/lang/Class;Ljava/lang/Class;Lb/b/a/e;Lb/b/a/l/u/k;Ljava/util/Map;ZZLb/b/a/l/o;ZZZZLb/b/a/p/f;Ljava/util/concurrent/Executor;)Lb/b/a/l/u/l$d;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    iput-object v0, v1, Lb/b/a/p/g;->s:Lb/b/a/l/u/l$d;

    iget-object v0, v1, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    move-object/from16 v2, v22

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    iput-object v0, v1, Lb/b/a/p/g;->s:Lb/b/a/l/u/l$d;

    :cond_5
    if-eqz v21, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lb/b/a/p/g;->t:J

    invoke-static {v2, v3}, Lb/b/a/r/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/b/a/p/g;->m(Ljava/lang/String;)V

    :cond_6
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    move-object/from16 v23, v18

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v23, v14

    move-object v1, v15

    :goto_2
    move-object/from16 v14, v23

    :goto_3
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lb/b/a/p/g;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Lb/b/a/p/g;->f()V

    iget-object v0, p0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    iget-object v0, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-interface {v0, p0}, Lb/b/a/p/h/h;->d(Lb/b/a/p/h/g;)V

    iget-object v0, p0, Lb/b/a/p/g;->s:Lb/b/a/l/u/l$d;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lb/b/a/l/u/l$d;->c:Lb/b/a/l/u/l;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lb/b/a/l/u/l$d;->a:Lb/b/a/l/u/m;

    iget-object v0, v0, Lb/b/a/l/u/l$d;->b:Lb/b/a/p/f;

    invoke-virtual {v2, v0}, Lb/b/a/l/u/m;->h(Lb/b/a/p/f;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/b/a/p/g;->s:Lb/b/a/l/u/l$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lb/b/a/p/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    .line 1
    iget-object v1, v0, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object v1, p0, Lb/b/a/p/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 3
    iget v0, v0, Lb/b/a/p/a;->q:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lb/b/a/p/g;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/p/g;->y:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lb/b/a/p/g;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final i()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lb/b/a/p/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    .line 1
    iget-object v1, v0, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object v1, p0, Lb/b/a/p/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 3
    iget v0, v0, Lb/b/a/p/a;->i:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lb/b/a/p/g;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/p/g;->x:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lb/b/a/p/g;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    sget-object v2, Lb/b/a/p/g$a;->c:Lb/b/a/p/g$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lb/b/a/p/g$a;->d:Lb/b/a/p/g$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Lb/b/a/p/b;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lb/b/a/p/g;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, v1, Lb/b/a/p/g;->k:I

    iget v5, v1, Lb/b/a/p/g;->l:I

    iget-object v6, v1, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v7, v1, Lb/b/a/p/g;->i:Ljava/lang/Class;

    iget-object v8, v1, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    iget-object v9, v1, Lb/b/a/p/g;->m:Lb/b/a/e;

    iget-object v10, v1, Lb/b/a/p/g;->o:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast v0, Lb/b/a/p/g;

    iget-object v11, v0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v2, v0, Lb/b/a/p/g;->k:I

    iget v12, v0, Lb/b/a/p/g;->l:I

    iget-object v13, v0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v14, v0, Lb/b/a/p/g;->i:Ljava/lang/Class;

    iget-object v15, v0, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    iget-object v3, v0, Lb/b/a/p/g;->m:Lb/b/a/e;

    iget-object v0, v0, Lb/b/a/p/g;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    if-ne v4, v2, :cond_6

    if-ne v5, v12, :cond_6

    .line 1
    sget-object v2, Lb/b/a/r/j;->a:[C

    if-nez v6, :cond_4

    if-nez v13, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    instance-of v2, v6, Lb/b/a/l/v/l;

    if-eqz v2, :cond_5

    check-cast v6, Lb/b/a/l/v/l;

    invoke-interface {v6, v13}, Lb/b/a/l/v/l;->a(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    .line 2
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v8, v15}, Lb/b/a/p/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v9, v3, :cond_6

    if-ne v10, v0, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lb/b/a/p/c;->b()Lb/b/a/p/c;

    move-result-object v0

    invoke-interface {v0}, Lb/b/a/p/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public final l(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    .line 1
    iget-object v0, v0, Lb/b/a/p/a;->v:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/a/p/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lb/b/a/p/g;->g:Lb/b/a/d;

    .line 3
    invoke-static {v1, v1, p1, v0}, Lb/b/a/l/w/e/a;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/b/a/p/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final n(Lb/b/a/l/u/r;I)V
    .locals 8

    iget-object v0, p0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    iget-object v0, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lb/b/a/p/g;->g:Lb/b/a/d;

    .line 3
    iget v1, v1, Lb/b/a/d;->i:I

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lb/b/a/p/g;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lb/b/a/p/g;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    invoke-virtual {p1, p2}, Lb/b/a/l/u/r;->e(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lb/b/a/p/g;->s:Lb/b/a/l/u/l$d;

    sget-object p2, Lb/b/a/p/g$a;->f:Lb/b/a/p/g$a;

    iput-object p2, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/b/a/p/g;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lb/b/a/p/g;->o:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/p/d;

    iget-object v5, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v6, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-virtual {p0}, Lb/b/a/p/g;->k()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lb/b/a/p/d;->b(Lb/b/a/l/u/r;Ljava/lang/Object;Lb/b/a/p/h/h;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    iget-object v2, p0, Lb/b/a/p/g;->d:Lb/b/a/p/d;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v5, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-virtual {p0}, Lb/b/a/p/g;->k()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lb/b/a/p/d;->b(Lb/b/a/l/u/r;Ljava/lang/Object;Lb/b/a/p/h/h;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    or-int p1, v3, p2

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lb/b/a/p/g;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lb/b/a/p/g;->B:Z

    .line 5
    iget-object p1, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lb/b/a/p/c;->c(Lb/b/a/p/b;)V

    .line 6
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lb/b/a/p/g;->B:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public o(Lb/b/a/l/u/w;Lb/b/a/l/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/w<",
            "*>;",
            "Lb/b/a/l/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/p/g;->b:Lb/b/a/r/k/d;

    invoke-virtual {v0}, Lb/b/a/r/k/d;->a()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/b/a/p/g;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v0, p0, Lb/b/a/p/g;->s:Lb/b/a/l/u/l$d;

    const/4 v2, 0x5

    if-nez p1, :cond_0

    new-instance p1, Lb/b/a/l/u/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/a/p/g;->i:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inside, but instead got null."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/l/u/r;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, v2}, Lb/b/a/p/g;->n(Lb/b/a/l/u/r;I)V

    .line 2
    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {p1}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lb/b/a/p/g;->i:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v2, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lb/b/a/p/c;->a(Lb/b/a/p/b;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 4
    :try_start_2
    iput-object v0, p0, Lb/b/a/p/g;->r:Lb/b/a/l/u/w;

    sget-object p2, Lb/b/a/p/g$a;->e:Lb/b/a/p/g$a;

    iput-object p2, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p2, p0, Lb/b/a/p/g;->u:Lb/b/a/l/u/l;

    invoke-virtual {p2, p1}, Lb/b/a/l/u/l;->f(Lb/b/a/l/u/w;)V

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, v3, p2}, Lb/b/a/p/g;->p(Lb/b/a/l/u/w;Ljava/lang/Object;Lb/b/a/l/a;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_5
    :goto_2
    :try_start_4
    iput-object v0, p0, Lb/b/a/p/g;->r:Lb/b/a/l/u/w;

    new-instance p2, Lb/b/a/l/u/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to receive an object of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/a/p/g;->i:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but instead got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "} inside Resource{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v3, ""

    goto :goto_4

    :cond_7
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lb/b/a/l/u/r;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2, v2}, Lb/b/a/p/g;->n(Lb/b/a/l/u/r;I)V

    .line 6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p2, p0, Lb/b/a/p/g;->u:Lb/b/a/l/u/l;

    invoke-virtual {p2, p1}, Lb/b/a/l/u/l;->f(Lb/b/a/l/u/w;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    iget-object p2, p0, Lb/b/a/p/g;->u:Lb/b/a/l/u/l;

    invoke-virtual {p2, v0}, Lb/b/a/l/u/l;->f(Lb/b/a/l/u/w;)V

    :cond_8
    throw p1
.end method

.method public final p(Lb/b/a/l/u/w;Ljava/lang/Object;Lb/b/a/l/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/w<",
            "TR;>;TR;",
            "Lb/b/a/l/a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/a/p/g;->k()Z

    move-result v6

    sget-object v0, Lb/b/a/p/g$a;->e:Lb/b/a/p/g$a;

    iput-object v0, p0, Lb/b/a/p/g;->v:Lb/b/a/p/g$a;

    iput-object p1, p0, Lb/b/a/p/g;->r:Lb/b/a/l/u/w;

    iget-object p1, p0, Lb/b/a/p/g;->g:Lb/b/a/d;

    .line 1
    iget p1, p1, Lb/b/a/d;->i:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string p1, "Finished loading "

    .line 2
    invoke-static {p1}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/b/a/p/g;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/b/a/p/g;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lb/b/a/p/g;->t:J

    invoke-static {v0, v1}, Lb/b/a/r/f;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/a/p/g;->B:Z

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lb/b/a/p/g;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/p/d;

    iget-object v2, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lb/b/a/p/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lb/b/a/p/h/h;Lb/b/a/l/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :cond_2
    iget-object v0, p0, Lb/b/a/p/g;->d:Lb/b/a/p/d;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    iget-object v3, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lb/b/a/p/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lb/b/a/p/h/h;Lb/b/a/l/a;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_4

    iget-object p1, p0, Lb/b/a/p/g;->p:Lb/b/a/p/i/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lb/b/a/p/i/a;->a:Lb/b/a/p/i/a;

    :try_start_1
    iget-object p3, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-interface {p3, p2, p1}, Lb/b/a/p/h/h;->j(Ljava/lang/Object;Lb/b/a/p/i/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iput-boolean v7, p0, Lb/b/a/p/g;->B:Z

    .line 3
    iget-object p1, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lb/b/a/p/c;->g(Lb/b/a/p/b;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 4
    iput-boolean v7, p0, Lb/b/a/p/g;->B:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/p/g;->e:Lb/b/a/p/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lb/b/a/p/c;->e(Lb/b/a/p/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb/b/a/p/g;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lb/b/a/p/g;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lb/b/a/p/g;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/b/a/p/g;->j:Lb/b/a/p/a;

    .line 4
    iget-object v1, v0, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object v1, p0, Lb/b/a/p/g;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 6
    iget v0, v0, Lb/b/a/p/a;->g:I

    if-lez v0, :cond_4

    .line 7
    invoke-virtual {p0, v0}, Lb/b/a/p/g;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/p/g;->w:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lb/b/a/p/g;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lb/b/a/p/g;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lb/b/a/p/g;->n:Lb/b/a/p/h/h;

    invoke-interface {v1, v0}, Lb/b/a/p/h/h;->k(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
