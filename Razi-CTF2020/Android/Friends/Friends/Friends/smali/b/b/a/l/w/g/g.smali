.class public Lb/b/a/l/w/g/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/w/g/g$a;,
        Lb/b/a/l/w/g/g$c;,
        Lb/b/a/l/w/g/g$b;
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/k/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/l/w/g/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/b/a/h;

.field public final e:Lb/b/a/l/u/c0/d;

.field public f:Z

.field public g:Z

.field public h:Lb/b/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lb/b/a/l/w/g/g$a;

.field public j:Z

.field public k:Lb/b/a/l/w/g/g$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lb/b/a/l/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lb/b/a/l/w/g/g$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lb/b/a/b;Lb/b/a/k/a;IILb/b/a/l/s;Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b;",
            "Lb/b/a/k/a;",
            "II",
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lb/b/a/b;->b:Lb/b/a/l/u/c0/d;

    .line 2
    iget-object v1, p1, Lb/b/a/b;->d:Lb/b/a/d;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lb/b/a/b;->d(Landroid/content/Context;)Lb/b/a/h;

    move-result-object v1

    .line 4
    iget-object p1, p1, Lb/b/a/b;->d:Lb/b/a/d;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lb/b/a/b;->d(Landroid/content/Context;)Lb/b/a/h;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroid/graphics/Bitmap;

    .line 7
    new-instance v3, Lb/b/a/g;

    iget-object v4, p1, Lb/b/a/h;->b:Lb/b/a/b;

    iget-object v5, p1, Lb/b/a/h;->c:Landroid/content/Context;

    invoke-direct {v3, v4, p1, v2, v5}, Lb/b/a/g;-><init>(Lb/b/a/b;Lb/b/a/h;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    sget-object p1, Lb/b/a/h;->m:Lb/b/a/p/e;

    invoke-virtual {v3, p1}, Lb/b/a/g;->p(Lb/b/a/p/a;)Lb/b/a/g;

    move-result-object p1

    .line 9
    sget-object v2, Lb/b/a/l/u/k;->a:Lb/b/a/l/u/k;

    .line 10
    new-instance v3, Lb/b/a/p/e;

    invoke-direct {v3}, Lb/b/a/p/e;-><init>()V

    invoke-virtual {v3, v2}, Lb/b/a/p/a;->d(Lb/b/a/l/u/k;)Lb/b/a/p/a;

    move-result-object v2

    check-cast v2, Lb/b/a/p/e;

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Lb/b/a/p/a;->o(Z)Lb/b/a/p/a;

    move-result-object v2

    check-cast v2, Lb/b/a/p/e;

    invoke-virtual {v2, v3}, Lb/b/a/p/a;->l(Z)Lb/b/a/p/a;

    move-result-object v2

    check-cast v2, Lb/b/a/p/e;

    invoke-virtual {v2, p3, p4}, Lb/b/a/p/a;->g(II)Lb/b/a/p/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lb/b/a/g;->p(Lb/b/a/p/a;)Lb/b/a/g;

    move-result-object p1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lb/b/a/l/w/g/g;->c:Ljava/util/List;

    iput-object v1, p0, Lb/b/a/l/w/g/g;->d:Lb/b/a/h;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lb/b/a/l/w/g/g$c;

    invoke-direct {v1, p0}, Lb/b/a/l/w/g/g$c;-><init>(Lb/b/a/l/w/g/g;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lb/b/a/l/w/g/g;->e:Lb/b/a/l/u/c0/d;

    iput-object p3, p0, Lb/b/a/l/w/g/g;->b:Landroid/os/Handler;

    iput-object p1, p0, Lb/b/a/l/w/g/g;->h:Lb/b/a/g;

    iput-object p2, p0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-virtual {p0, p5, p6}, Lb/b/a/l/w/g/g;->c(Lb/b/a/l/s;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-boolean v0, p0, Lb/b/a/l/w/g/g;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lb/b/a/l/w/g/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lb/b/a/l/w/g/g;->n:Lb/b/a/l/w/g/g$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Lb/b/a/l/w/g/g;->n:Lb/b/a/l/w/g/g$a;

    invoke-virtual {p0, v1}, Lb/b/a/l/w/g/g;->b(Lb/b/a/l/w/g/g$a;)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lb/b/a/l/w/g/g;->g:Z

    iget-object v1, p0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-interface {v1}, Lb/b/a/k/a;->d()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-object v1, p0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-interface {v1}, Lb/b/a/k/a;->g()V

    new-instance v1, Lb/b/a/l/w/g/g$a;

    iget-object v5, p0, Lb/b/a/l/w/g/g;->b:Landroid/os/Handler;

    iget-object v6, p0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-interface {v6}, Lb/b/a/k/a;->a()I

    move-result v6

    invoke-direct {v1, v5, v6, v3, v4}, Lb/b/a/l/w/g/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v1, p0, Lb/b/a/l/w/g/g;->k:Lb/b/a/l/w/g/g$a;

    iget-object v1, p0, Lb/b/a/l/w/g/g;->h:Lb/b/a/g;

    .line 1
    new-instance v3, Lb/b/a/q/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lb/b/a/q/b;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v4, Lb/b/a/p/e;

    invoke-direct {v4}, Lb/b/a/p/e;-><init>()V

    invoke-virtual {v4, v3}, Lb/b/a/p/a;->k(Lb/b/a/l/m;)Lb/b/a/p/a;

    move-result-object v3

    check-cast v3, Lb/b/a/p/e;

    .line 3
    invoke-virtual {v1, v3}, Lb/b/a/g;->p(Lb/b/a/p/a;)Lb/b/a/g;

    move-result-object v1

    iget-object v3, p0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    .line 4
    iput-object v3, v1, Lb/b/a/g;->G:Ljava/lang/Object;

    iput-boolean v0, v1, Lb/b/a/g;->J:Z

    .line 5
    iget-object v0, p0, Lb/b/a/l/w/g/g;->k:Lb/b/a/l/w/g/g$a;

    .line 6
    sget-object v3, Lb/b/a/r/e;->a:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v1, v0, v2, v1, v3}, Lb/b/a/g;->r(Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/a;Ljava/util/concurrent/Executor;)Lb/b/a/p/h/h;

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lb/b/a/l/w/g/g$a;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/l/w/g/g;->g:Z

    iget-boolean v0, p0, Lb/b/a/l/w/g/g;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/w/g/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lb/b/a/l/w/g/g;->f:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lb/b/a/l/w/g/g;->n:Lb/b/a/l/w/g/g$a;

    return-void

    .line 1
    :cond_1
    iget-object v0, p1, Lb/b/a/l/w/g/g$a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lb/b/a/l/w/g/g;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lb/b/a/l/w/g/g;->e:Lb/b/a/l/u/c0/d;

    invoke-interface {v2, v0}, Lb/b/a/l/u/c0/d;->e(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/l/w/g/g;->l:Landroid/graphics/Bitmap;

    .line 3
    :cond_2
    iget-object v0, p0, Lb/b/a/l/w/g/g;->i:Lb/b/a/l/w/g/g$a;

    iput-object p1, p0, Lb/b/a/l/w/g/g;->i:Lb/b/a/l/w/g/g$a;

    iget-object p1, p0, Lb/b/a/l/w/g/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    iget-object v2, p0, Lb/b/a/l/w/g/g;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/l/w/g/g$b;

    invoke-interface {v2}, Lb/b/a/l/w/g/g$b;->a()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lb/b/a/l/w/g/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-virtual {p0}, Lb/b/a/l/w/g/g;->a()V

    return-void
.end method

.method public c(Lb/b/a/l/s;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/l/w/g/g;->m:Lb/b/a/l/s;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb/b/a/l/w/g/g;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lb/b/a/l/w/g/g;->h:Lb/b/a/g;

    new-instance v1, Lb/b/a/p/e;

    invoke-direct {v1}, Lb/b/a/p/e;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p1, v2}, Lb/b/a/p/a;->m(Lb/b/a/l/s;Z)Lb/b/a/p/a;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lb/b/a/g;->p(Lb/b/a/p/a;)Lb/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/l/w/g/g;->h:Lb/b/a/g;

    invoke-static {p2}, Lb/b/a/r/j;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lb/b/a/l/w/g/g;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lb/b/a/l/w/g/g;->p:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lb/b/a/l/w/g/g;->q:I

    return-void
.end method
