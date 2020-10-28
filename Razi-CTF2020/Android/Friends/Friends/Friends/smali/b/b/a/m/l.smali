.class public Lb/b/a/m/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/m/l$b;
    }
.end annotation


# static fields
.field public static final f:Lb/b/a/m/l$b;


# instance fields
.field public volatile a:Lb/b/a/h;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lb/b/a/m/k;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/l/a/j;",
            "Lb/b/a/m/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Handler;

.field public final e:Lb/b/a/m/l$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/m/l$a;

    invoke-direct {v0}, Lb/b/a/m/l$a;-><init>()V

    sput-object v0, Lb/b/a/m/l;->f:Lb/b/a/m/l$b;

    return-void
.end method

.method public constructor <init>(Lb/b/a/m/l$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/b/a/m/l;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/b/a/m/l;->c:Ljava/util/Map;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lb/b/a/m/l;->f:Lb/b/a/m/l$b;

    :goto_0
    iput-object p1, p0, Lb/b/a/m/l;->e:Lb/b/a/m/l$b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lb/b/a/m/l;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lb/b/a/m/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lb/b/a/m/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Lb/b/a/h;
    .locals 5

    if-eqz p1, :cond_b

    invoke-static {}, Lb/b/a/r/j;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_8

    instance-of v0, p1, La/l/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, La/l/a/e;

    .line 1
    invoke-static {}, Lb/b/a/r/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/m/l;->b(Landroid/content/Context;)Lb/b/a/h;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p1, La/l/a/e;->g:La/l/a/g;

    .line 4
    iget-object v0, v0, La/l/a/g;->a:La/l/a/i;

    iget-object v0, v0, La/l/a/i;->f:La/l/a/k;

    .line 5
    invoke-static {p1}, Lb/b/a/m/l;->e(Landroid/content/Context;)Z

    move-result v2

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lb/b/a/m/l;->d(La/l/a/j;Landroidx/fragment/app/Fragment;Z)Lb/b/a/m/o;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lb/b/a/m/o;->Y:Lb/b/a/h;

    if-nez v1, :cond_1

    .line 8
    invoke-static {p1}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/m/l;->e:Lb/b/a/m/l$b;

    .line 9
    iget-object v3, v0, Lb/b/a/m/o;->U:Lb/b/a/m/a;

    .line 10
    iget-object v4, v0, Lb/b/a/m/o;->V:Lb/b/a/m/m;

    .line 11
    check-cast v2, Lb/b/a/m/l$a;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lb/b/a/h;

    invoke-direct {v2, v1, v3, v4, p1}, Lb/b/a/h;-><init>(Lb/b/a/b;Lb/b/a/m/h;Lb/b/a/m/m;Landroid/content/Context;)V

    .line 13
    iput-object v2, v0, Lb/b/a/m/o;->Y:Lb/b/a/h;

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/app/Activity;

    .line 16
    invoke-static {}, Lb/b/a/r/j;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/m/l;->b(Landroid/content/Context;)Lb/b/a/h;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lb/b/a/m/l;->e(Landroid/content/Context;)Z

    move-result v2

    .line 19
    invoke-virtual {p0, v0, v1, v2}, Lb/b/a/m/l;->c(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lb/b/a/m/k;

    move-result-object v0

    .line 20
    iget-object v1, v0, Lb/b/a/m/k;->e:Lb/b/a/h;

    if-nez v1, :cond_5

    .line 21
    invoke-static {p1}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/m/l;->e:Lb/b/a/m/l$b;

    .line 22
    iget-object v3, v0, Lb/b/a/m/k;->b:Lb/b/a/m/a;

    .line 23
    iget-object v4, v0, Lb/b/a/m/k;->c:Lb/b/a/m/m;

    .line 24
    check-cast v2, Lb/b/a/m/l$a;

    .line 25
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lb/b/a/h;

    invoke-direct {v2, v1, v3, v4, p1}, Lb/b/a/h;-><init>(Lb/b/a/b;Lb/b/a/m/h;Lb/b/a/m/m;Landroid/content/Context;)V

    .line 26
    iput-object v2, v0, Lb/b/a/m/k;->e:Lb/b/a/h;

    move-object p1, v2

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    return-object p1

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/m/l;->b(Landroid/content/Context;)Lb/b/a/h;

    move-result-object p1

    return-object p1

    .line 29
    :cond_8
    iget-object v0, p0, Lb/b/a/m/l;->a:Lb/b/a/h;

    if-nez v0, :cond_a

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/m/l;->a:Lb/b/a/h;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/m/l;->e:Lb/b/a/m/l$b;

    new-instance v2, Lb/b/a/m/b;

    invoke-direct {v2}, Lb/b/a/m/b;-><init>()V

    new-instance v3, Lb/b/a/m/g;

    invoke-direct {v3}, Lb/b/a/m/g;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast v1, Lb/b/a/m/l$a;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lb/b/a/h;

    invoke-direct {v1, v0, v2, v3, p1}, Lb/b/a/h;-><init>(Lb/b/a/b;Lb/b/a/m/h;Lb/b/a/m/m;Landroid/content/Context;)V

    .line 31
    iput-object v1, p0, Lb/b/a/m/l;->a:Lb/b/a/h;

    :cond_9
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_a
    :goto_2
    iget-object p1, p0, Lb/b/a/m/l;->a:Lb/b/a/h;

    return-object p1

    .line 32
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lb/b/a/m/k;
    .locals 3

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lb/b/a/m/k;

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/b/a/m/l;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/m/k;

    if-nez v1, :cond_2

    new-instance v1, Lb/b/a/m/k;

    invoke-direct {v1}, Lb/b/a/m/k;-><init>()V

    .line 1
    iput-object p2, v1, Lb/b/a/m/k;->g:Landroid/app/Fragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {v1, p2}, Lb/b/a/m/k;->a(Landroid/app/Activity;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    iget-object p2, v1, Lb/b/a/m/k;->b:Lb/b/a/m/a;

    .line 3
    invoke-virtual {p2}, Lb/b/a/m/a;->d()V

    :cond_1
    iget-object p2, p0, Lb/b/a/m/l;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p2, p0, Lb/b/a/m/l;->d:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-object v1
.end method

.method public final d(La/l/a/j;Landroidx/fragment/app/Fragment;Z)Lb/b/a/m/o;
    .locals 4

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, La/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lb/b/a/m/o;

    if-nez v0, :cond_11

    iget-object v0, p0, Lb/b/a/m/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/m/o;

    if-nez v0, :cond_11

    new-instance v0, Lb/b/a/m/o;

    invoke-direct {v0}, Lb/b/a/m/o;-><init>()V

    .line 1
    iput-object p2, v0, Lb/b/a/m/o;->Z:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->j()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p2

    .line 2
    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->r:La/l/a/k;

    if-nez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->j()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lb/b/a/m/o;->U(Landroid/content/Context;La/l/a/j;)V

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 5
    iget-object p2, v0, Lb/b/a/m/o;->U:Lb/b/a/m/a;

    .line 6
    invoke-virtual {p2}, Lb/b/a/m/a;->d()V

    :cond_4
    iget-object p2, p0, Lb/b/a/m/l;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, La/l/a/j;->a()La/l/a/r;

    move-result-object p2

    const-string p3, "com.bumptech.glide.manager"

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, La/l/a/a;

    .line 8
    const-class v1, Lb/b/a/m/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_5
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t change tag of fragment "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": was "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " now "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    new-instance p3, La/l/a/r$a;

    const/4 v1, 0x1

    invoke-direct {p3, v1, v0}, La/l/a/r$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, p3}, La/l/a/r;->b(La/l/a/r$a;)V

    .line 9
    iget-object p3, p2, La/l/a/a;->q:La/l/a/k;

    iput-object p3, v0, Landroidx/fragment/app/Fragment;->r:La/l/a/k;

    .line 10
    iget-boolean v2, p2, La/l/a/a;->r:Z

    if-nez v2, :cond_f

    sget-object v2, La/l/a/k;->H:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, La/l/a/a;->r:Z

    iget-boolean v1, p2, La/l/a/r;->h:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_b

    .line 11
    monitor-enter p3

    :try_start_0
    iget-object v1, p3, La/l/a/k;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, p3, La/l/a/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p3, La/l/a/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v1, p3, La/l/a/k;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p3, La/l/a/k;->m:Ljava/util/ArrayList;

    :cond_a
    iget-object v1, p3, La/l/a/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p3, La/l/a/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move v2, v1

    monitor-exit p3

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_b
    :goto_5
    iput v2, p2, La/l/a/a;->s:I

    iget-object p3, p2, La/l/a/a;->q:La/l/a/k;

    .line 13
    monitor-enter p3

    :try_start_1
    iget-boolean v1, p3, La/l/a/k;->x:Z

    if-nez v1, :cond_e

    iget-object v1, p3, La/l/a/k;->q:La/l/a/i;

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, p3, La/l/a/k;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p3, La/l/a/k;->d:Ljava/util/ArrayList;

    :cond_d
    iget-object v1, p3, La/l/a/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, La/l/a/k;->k0()V

    :cond_e
    :goto_6
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object p2, p0, Lb/b/a/m/l;->d:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 16
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "commit already called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    invoke-static {p2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_7
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, La/l/a/j;

    iget-object p1, p0, Lb/b/a/m/l;->c:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    iget-object p1, p0, Lb/b/a/m/l;->b:Ljava/util/Map;

    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method
