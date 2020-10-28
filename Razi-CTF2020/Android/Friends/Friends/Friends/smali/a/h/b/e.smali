.class public final La/h/b/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/h/b/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/reflect/Field;

.field public static final c:Ljava/lang/reflect/Field;

.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, La/h/b/e;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    .line 2
    :goto_0
    sput-object v2, La/h/b/e;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    .line 3
    :try_start_1
    const-class v3, Landroid/app/Activity;

    const-string v4, "mMainThread"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v3, v1

    .line 4
    :goto_1
    sput-object v3, La/h/b/e;->b:Ljava/lang/reflect/Field;

    .line 5
    :try_start_2
    const-class v3, Landroid/app/Activity;

    const-string v4, "mToken"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-object v3, v1

    .line 6
    :goto_2
    sput-object v3, La/h/b/e;->c:Ljava/lang/reflect/Field;

    sget-object v3, La/h/b/e;->a:Ljava/lang/Class;

    const/4 v4, 0x3

    const-string v5, "performStopActivity"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v3, :cond_0

    :catchall_3
    move-object v3, v1

    goto :goto_3

    :cond_0
    :try_start_3
    new-array v8, v4, [Ljava/lang/Class;

    .line 7
    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v7

    aput-object v0, v8, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8
    :goto_3
    sput-object v3, La/h/b/e;->d:Ljava/lang/reflect/Method;

    sget-object v3, La/h/b/e;->a:Ljava/lang/Class;

    if-nez v3, :cond_1

    :catchall_4
    move-object v3, v1

    goto :goto_4

    :cond_1
    :try_start_4
    new-array v8, v6, [Ljava/lang/Class;

    .line 9
    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v7

    aput-object v0, v8, v2

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 10
    :goto_4
    sput-object v3, La/h/b/e;->e:Ljava/lang/reflect/Method;

    sget-object v3, La/h/b/e;->a:Ljava/lang/Class;

    .line 11
    invoke-static {}, La/h/b/e;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    :try_start_5
    const-string v5, "requestRelaunchActivity"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v7

    const-class v7, Ljava/util/List;

    aput-object v7, v8, v2

    const-class v7, Ljava/util/List;

    aput-object v7, v8, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v8, v4

    const/4 v4, 0x4

    aput-object v0, v8, v4

    const/4 v4, 0x5

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v8, v4

    const/4 v4, 0x6

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v8, v4

    const/4 v4, 0x7

    aput-object v0, v8, v4

    const/16 v4, 0x8

    aput-object v0, v8, v4

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v1, v0

    .line 12
    :catchall_5
    :cond_3
    :goto_5
    sput-object v1, La/h/b/e;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

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
