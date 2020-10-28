.class public Lb/b/a/g;
.super Lb/b/a/p/a;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lb/b/a/p/a<",
        "Lb/b/a/g<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Object<",
        "Lb/b/a/g<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public final B:Landroid/content/Context;

.field public final C:Lb/b/a/h;

.field public final D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final E:Lb/b/a/d;

.field public F:Lb/b/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/i<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public G:Ljava/lang/Object;

.field public H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/p/d<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public I:Z

.field public J:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/b/a/p/e;

    invoke-direct {v0}, Lb/b/a/p/e;-><init>()V

    sget-object v1, Lb/b/a/l/u/k;->b:Lb/b/a/l/u/k;

    invoke-virtual {v0, v1}, Lb/b/a/p/a;->d(Lb/b/a/l/u/k;)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    sget-object v1, Lb/b/a/e;->e:Lb/b/a/e;

    invoke-virtual {v0, v1}, Lb/b/a/p/a;->h(Lb/b/a/e;)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/a/p/a;->l(Z)Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/p/e;

    return-void
.end method

.method public constructor <init>(Lb/b/a/b;Lb/b/a/h;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/b;",
            "Lb/b/a/h;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lb/b/a/p/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/g;->I:Z

    iput-object p2, p0, Lb/b/a/g;->C:Lb/b/a/h;

    iput-object p3, p0, Lb/b/a/g;->D:Ljava/lang/Class;

    iput-object p4, p0, Lb/b/a/g;->B:Landroid/content/Context;

    .line 1
    iget-object p4, p2, Lb/b/a/h;->b:Lb/b/a/b;

    .line 2
    iget-object p4, p4, Lb/b/a/b;->d:Lb/b/a/d;

    .line 3
    iget-object v0, p4, Lb/b/a/d;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/i;

    if-nez v0, :cond_1

    iget-object p4, p4, Lb/b/a/d;->f:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/i;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lb/b/a/d;->k:Lb/b/a/i;

    .line 4
    :cond_2
    iput-object v0, p0, Lb/b/a/g;->F:Lb/b/a/i;

    .line 5
    iget-object p1, p1, Lb/b/a/b;->d:Lb/b/a/d;

    .line 6
    iput-object p1, p0, Lb/b/a/g;->E:Lb/b/a/d;

    .line 7
    iget-object p1, p2, Lb/b/a/h;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/b/a/p/d;

    if-eqz p3, :cond_3

    .line 9
    iget-object p4, p0, Lb/b/a/g;->H:Ljava/util/List;

    if-nez p4, :cond_4

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lb/b/a/g;->H:Ljava/util/List;

    :cond_4
    iget-object p4, p0, Lb/b/a/g;->H:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_5
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lb/b/a/h;->l:Lb/b/a/p/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 11
    invoke-virtual {p0, p1}, Lb/b/a/g;->p(Lb/b/a/p/a;)Lb/b/a/g;

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic a(Lb/b/a/p/a;)Lb/b/a/p/a;
    .locals 0

    invoke-virtual {p0, p1}, Lb/b/a/g;->p(Lb/b/a/p/a;)Lb/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public b()Lb/b/a/p/a;
    .locals 2

    .line 1
    invoke-super {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/g;

    iget-object v1, v0, Lb/b/a/g;->F:Lb/b/a/i;

    invoke-virtual {v1}, Lb/b/a/i;->a()Lb/b/a/i;

    move-result-object v1

    iput-object v1, v0, Lb/b/a/g;->F:Lb/b/a/i;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    check-cast v0, Lb/b/a/g;

    iget-object v1, v0, Lb/b/a/g;->F:Lb/b/a/i;

    invoke-virtual {v1}, Lb/b/a/i;->a()Lb/b/a/i;

    move-result-object v1

    iput-object v1, v0, Lb/b/a/g;->F:Lb/b/a/i;

    return-object v0
.end method

.method public p(Lb/b/a/p/a;)Lb/b/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/p/a<",
            "*>;)",
            "Lb/b/a/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lb/b/a/p/a;->a(Lb/b/a/p/a;)Lb/b/a/p/a;

    move-result-object p1

    check-cast p1, Lb/b/a/g;

    return-object p1
.end method

.method public final q(Ljava/lang/Object;Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/c;Lb/b/a/i;Lb/b/a/e;IILb/b/a/p/a;Ljava/util/concurrent/Executor;)Lb/b/a/p/b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb/b/a/p/h/h<",
            "TTranscodeType;>;",
            "Lb/b/a/p/d<",
            "TTranscodeType;>;",
            "Lb/b/a/p/c;",
            "Lb/b/a/i<",
            "*-TTranscodeType;>;",
            "Lb/b/a/e;",
            "II",
            "Lb/b/a/p/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/b/a/p/b;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1
    invoke-virtual/range {v0 .. v10}, Lb/b/a/g;->t(Ljava/lang/Object;Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/a;Lb/b/a/p/c;Lb/b/a/i;Lb/b/a/e;IILjava/util/concurrent/Executor;)Lb/b/a/p/b;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/a;Ljava/util/concurrent/Executor;)Lb/b/a/p/h/h;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lb/b/a/p/h/h<",
            "TTranscodeType;>;>(TY;",
            "Lb/b/a/p/d<",
            "TTranscodeType;>;",
            "Lb/b/a/p/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    move-object/from16 v13, p3

    const-string v1, "Argument must not be null"

    .line 1
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v1, v12, Lb/b/a/g;->J:Z

    if-eqz v1, :cond_5

    .line 3
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v6, v12, Lb/b/a/g;->F:Lb/b/a/i;

    .line 4
    iget-object v7, v13, Lb/b/a/p/a;->e:Lb/b/a/e;

    .line 5
    iget v8, v13, Lb/b/a/p/a;->l:I

    .line 6
    iget v9, v13, Lb/b/a/p/a;->k:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 7
    invoke-virtual/range {v1 .. v11}, Lb/b/a/g;->q(Ljava/lang/Object;Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/c;Lb/b/a/i;Lb/b/a/e;IILb/b/a/p/a;Ljava/util/concurrent/Executor;)Lb/b/a/p/b;

    move-result-object v1

    .line 8
    invoke-interface {p1}, Lb/b/a/p/h/h;->b()Lb/b/a/p/b;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lb/b/a/p/g;

    invoke-virtual {v3, v2}, Lb/b/a/p/g;->j(Lb/b/a/p/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iget-boolean v4, v13, Lb/b/a/p/a;->j:Z

    if-nez v4, :cond_0

    .line 10
    invoke-interface {v2}, Lb/b/a/p/b;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    const-string v1, "Argument must not be null"

    .line 11
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {v2}, Lb/b/a/p/b;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2}, Lb/b/a/p/b;->d()V

    :cond_1
    return-object v0

    :cond_2
    iget-object v2, v12, Lb/b/a/g;->C:Lb/b/a/h;

    invoke-virtual {v2, p1}, Lb/b/a/h;->l(Lb/b/a/p/h/h;)V

    invoke-interface {p1, v1}, Lb/b/a/p/h/h;->h(Lb/b/a/p/b;)V

    iget-object v2, v12, Lb/b/a/g;->C:Lb/b/a/h;

    .line 13
    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Lb/b/a/h;->g:Lb/b/a/m/p;

    .line 14
    iget-object v4, v4, Lb/b/a/m/p;->b:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v4, v2, Lb/b/a/h;->e:Lb/b/a/m/n;

    .line 16
    iget-object v5, v4, Lb/b/a/m/n;->a:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v4, Lb/b/a/m/n;->c:Z

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lb/b/a/p/g;->d()V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lb/b/a/p/g;->clear()V

    const/4 v3, 0x2

    const-string v5, "RequestTracker"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Paused, delaying request"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, v4, Lb/b/a/m/n;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s(Landroid/widget/ImageView;)Lb/b/a/p/h/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lb/b/a/p/h/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lb/b/a/r/j;->a()V

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lb/b/a/p/a;->b:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lb/b/a/p/a;->o:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lb/b/a/g$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lb/b/a/g;->b()Lb/b/a/p/a;

    move-result-object v0

    .line 5
    sget-object v2, Lb/b/a/l/w/c/l;->b:Lb/b/a/l/w/c/l;

    new-instance v3, Lb/b/a/l/w/c/j;

    invoke-direct {v3}, Lb/b/a/l/w/c/j;-><init>()V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lb/b/a/g;->b()Lb/b/a/p/a;

    move-result-object v0

    .line 7
    sget-object v2, Lb/b/a/l/w/c/l;->a:Lb/b/a/l/w/c/l;

    new-instance v3, Lb/b/a/l/w/c/q;

    invoke-direct {v3}, Lb/b/a/l/w/c/q;-><init>()V

    .line 8
    invoke-virtual {v0, v2, v3}, Lb/b/a/p/a;->f(Lb/b/a/l/w/c/l;Lb/b/a/l/s;)Lb/b/a/p/a;

    move-result-object v0

    iput-boolean v1, v0, Lb/b/a/p/a;->z:Z

    goto :goto_2

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lb/b/a/g;->b()Lb/b/a/p/a;

    move-result-object v0

    .line 10
    sget-object v2, Lb/b/a/l/w/c/l;->b:Lb/b/a/l/w/c/l;

    new-instance v3, Lb/b/a/l/w/c/j;

    invoke-direct {v3}, Lb/b/a/l/w/c/j;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {v0, v2, v3}, Lb/b/a/p/a;->f(Lb/b/a/l/w/c/l;Lb/b/a/l/s;)Lb/b/a/p/a;

    move-result-object v0

    iput-boolean v1, v0, Lb/b/a/p/a;->z:Z

    goto :goto_2

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lb/b/a/g;->b()Lb/b/a/p/a;

    move-result-object v0

    .line 13
    sget-object v1, Lb/b/a/l/w/c/l;->c:Lb/b/a/l/w/c/l;

    new-instance v2, Lb/b/a/l/w/c/i;

    invoke-direct {v2}, Lb/b/a/l/w/c/i;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/b/a/p/a;->f(Lb/b/a/l/w/c/l;Lb/b/a/l/s;)Lb/b/a/p/a;

    move-result-object v0

    goto :goto_2

    :cond_0
    :goto_1
    move-object v0, p0

    .line 14
    :goto_2
    iget-object v1, p0, Lb/b/a/g;->E:Lb/b/a/d;

    iget-object v2, p0, Lb/b/a/g;->D:Ljava/lang/Class;

    .line 15
    iget-object v1, v1, Lb/b/a/d;->c:Lb/b/a/p/h/f;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lb/b/a/p/h/b;

    invoke-direct {v1, p1}, Lb/b/a/p/h/b;-><init>(Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lb/b/a/p/h/d;

    invoke-direct {v1, p1}, Lb/b/a/p/h/d;-><init>(Landroid/widget/ImageView;)V

    :goto_3
    const/4 p1, 0x0

    .line 17
    sget-object v2, Lb/b/a/r/e;->a:Ljava/util/concurrent/Executor;

    .line 18
    invoke-virtual {p0, v1, p1, v0, v2}, Lb/b/a/g;->r(Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/a;Ljava/util/concurrent/Executor;)Lb/b/a/p/h/h;

    return-object v1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Ljava/lang/Object;Lb/b/a/p/h/h;Lb/b/a/p/d;Lb/b/a/p/a;Lb/b/a/p/c;Lb/b/a/i;Lb/b/a/e;IILjava/util/concurrent/Executor;)Lb/b/a/p/b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb/b/a/p/h/h<",
            "TTranscodeType;>;",
            "Lb/b/a/p/d<",
            "TTranscodeType;>;",
            "Lb/b/a/p/a<",
            "*>;",
            "Lb/b/a/p/c;",
            "Lb/b/a/i<",
            "*-TTranscodeType;>;",
            "Lb/b/a/e;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lb/b/a/p/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lb/b/a/g;->B:Landroid/content/Context;

    iget-object v3, v0, Lb/b/a/g;->E:Lb/b/a/d;

    iget-object v5, v0, Lb/b/a/g;->G:Ljava/lang/Object;

    iget-object v6, v0, Lb/b/a/g;->D:Ljava/lang/Class;

    iget-object v13, v0, Lb/b/a/g;->H:Ljava/util/List;

    .line 1
    iget-object v15, v3, Lb/b/a/d;->g:Lb/b/a/l/u/l;

    .line 2
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lb/b/a/p/i/a;->b:Lb/b/a/p/i/c;

    .line 3
    new-instance v18, Lb/b/a/p/g;

    move-object/from16 v1, v18

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p7

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p5

    move-object/from16 v17, p10

    invoke-direct/range {v1 .. v17}, Lb/b/a/p/g;-><init>(Landroid/content/Context;Lb/b/a/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lb/b/a/p/a;IILb/b/a/e;Lb/b/a/p/h/h;Lb/b/a/p/d;Ljava/util/List;Lb/b/a/p/c;Lb/b/a/l/u/l;Lb/b/a/p/i/c;Ljava/util/concurrent/Executor;)V

    return-object v18
.end method
