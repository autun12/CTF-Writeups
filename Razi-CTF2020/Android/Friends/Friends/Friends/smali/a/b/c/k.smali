.class public La/b/c/k;
.super La/b/c/j;
.source ""

# interfaces
.implements La/b/g/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/c/k$f;,
        La/b/c/k$h;,
        La/b/c/k$g;,
        La/b/c/k$e;,
        La/b/c/k$i;,
        La/b/c/k$j;,
        La/b/c/k$c;,
        La/b/c/k$k;,
        La/b/c/k$d;
    }
.end annotation


# static fields
.field public static final Z:La/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final a0:Z

.field public static final b0:[I

.field public static final c0:Z

.field public static final d0:Z

.field public static e0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:[La/b/c/k$j;

.field public G:La/b/c/k$j;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:La/b/c/k$g;

.field public R:La/b/c/k$g;

.field public S:Z

.field public T:I

.field public final U:Ljava/lang/Runnable;

.field public V:Z

.field public W:Landroid/graphics/Rect;

.field public X:Landroid/graphics/Rect;

.field public Y:La/b/c/r;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field public f:Landroid/view/Window;

.field public g:La/b/c/k$e;

.field public final h:La/b/c/i;

.field public i:La/b/c/a;

.field public j:Landroid/view/MenuInflater;

.field public k:Ljava/lang/CharSequence;

.field public l:La/b/h/c0;

.field public m:La/b/c/k$c;

.field public n:La/b/c/k$k;

.field public o:La/b/g/a;

.field public p:Landroidx/appcompat/widget/ActionBarContextView;

.field public q:Landroid/widget/PopupWindow;

.field public r:Ljava/lang/Runnable;

.field public s:La/h/j/s;

.field public t:Z

.field public u:Landroid/view/ViewGroup;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/view/View;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, La/e/h;

    invoke-direct {v0}, La/e/h;-><init>()V

    sput-object v0, La/b/c/k;->Z:La/e/h;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, La/b/c/k;->a0:Z

    new-array v3, v2, [I

    const v4, 0x1010054

    aput v4, v3, v1

    sput-object v3, La/b/c/k;->b0:[I

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "robolectric"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, La/b/c/k;->c0:Z

    sput-boolean v2, La/b/c/k;->d0:Z

    if-eqz v0, :cond_1

    sget-boolean v0, La/b/c/k;->e0:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, La/b/c/k$a;

    invoke-direct {v1, v0}, La/b/c/k$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v2, La/b/c/k;->e0:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;La/b/c/i;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, La/b/c/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/b/c/k;->s:La/h/j/s;

    const/16 v1, -0x64

    iput v1, p0, La/b/c/k;->M:I

    new-instance v2, La/b/c/k$b;

    invoke-direct {v2, p0}, La/b/c/k$b;-><init>(La/b/c/k;)V

    iput-object v2, p0, La/b/c/k;->U:Ljava/lang/Runnable;

    iput-object p1, p0, La/b/c/k;->e:Landroid/content/Context;

    iput-object p3, p0, La/b/c/k;->h:La/b/c/i;

    iput-object p4, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    instance-of p3, p1, La/b/c/h;

    if-eqz p3, :cond_0

    check-cast p1, La/b/c/h;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, La/b/c/h;->n()La/b/c/j;

    move-result-object p1

    invoke-virtual {p1}, La/b/c/j;->f()I

    move-result p1

    iput p1, p0, La/b/c/k;->M:I

    :cond_2
    iget p1, p0, La/b/c/k;->M:I

    if-ne p1, v1, :cond_3

    sget-object p1, La/b/c/k;->Z:La/e/h;

    iget-object p3, p0, La/b/c/k;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p1, p3, v0}, La/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 4
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, La/b/c/k;->M:I

    iget-object p3, p0, La/b/c/k;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, La/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, La/b/c/k;->B(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, La/b/h/j;->e()V

    return-void
.end method


# virtual methods
.method public final A(Z)Z
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, La/b/c/k;->L:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 1
    :cond_0
    iget v0, v1, La/b/c/k;->M:I

    const/16 v3, -0x64

    if-eq v0, v3, :cond_1

    move v3, v0

    .line 2
    :cond_1
    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v1, v0, v3}, La/b/c/k;->R(Landroid/content/Context;I)I

    move-result v0

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v5, v1, La/b/c/k;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v0, v6}, La/b/c/k;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    .line 4
    iget-boolean v0, v1, La/b/c/k;->P:Z

    const/16 v7, 0x18

    const/4 v8, 0x1

    if-nez v0, :cond_6

    iget-object v0, v1, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    const/16 v9, 0x1d

    if-lt v4, v9, :cond_3

    const/high16 v9, 0x100c0000

    goto :goto_0

    :cond_3
    if-lt v4, v7, :cond_4

    const/high16 v9, 0xc0000

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v1, La/b/c/k;->e:Landroid/content/Context;

    iget-object v12, v1, La/b/c/k;->d:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, La/b/c/k;->O:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v9, "AppCompatDelegate"

    const-string v10, "Exception while getting ActivityInfo"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, v1, La/b/c/k;->O:Z

    :cond_6
    :goto_2
    iput-boolean v8, v1, La/b/c/k;->P:Z

    iget-boolean v0, v1, La/b/c/k;->O:Z

    move v9, v0

    .line 5
    :goto_3
    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v0, 0x30

    iget v0, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v0, 0x30

    const/16 v12, 0x1c

    if-eq v10, v5, :cond_10

    if-eqz p1, :cond_10

    if-nez v9, :cond_10

    iget-boolean v0, v1, La/b/c/k;->I:Z

    if-eqz v0, :cond_10

    sget-boolean v0, La/b/c/k;->c0:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, La/b/c/k;->J:Z

    if-eqz v0, :cond_10

    :cond_7
    iget-object v0, v1, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v13, v0, Landroid/app/Activity;

    if-eqz v13, :cond_10

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, La/b/c/k;->d:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/app/Activity;

    .line 6
    sget v0, La/h/b/a;->b:I

    if-lt v4, v12, :cond_8

    goto/16 :goto_8

    .line 7
    :cond_8
    sget-object v0, La/h/b/e;->a:Ljava/lang/Class;

    if-lt v4, v12, :cond_9

    invoke-virtual {v13}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_5

    :cond_9
    invoke-static {}, La/h/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, La/h/b/e;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    goto/16 :goto_6

    :cond_a
    sget-object v0, La/h/b/e;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    sget-object v0, La/h/b/e;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    goto/16 :goto_6

    :cond_b
    :try_start_1
    sget-object v0, La/h/b/e;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    sget-object v14, La/h/b/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v13}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v15

    new-instance v7, La/h/b/e$a;

    invoke-direct {v7, v13}, La/h/b/e$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v15, v7}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v12, La/h/b/e;->g:Landroid/os/Handler;

    new-instance v11, La/h/b/b;

    invoke-direct {v11, v7, v0}, La/h/b/b;-><init>(La/h/b/e$a;Ljava/lang/Object;)V

    invoke-virtual {v12, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, La/h/b/e;->a()Z

    move-result v11

    if-eqz v11, :cond_e

    sget-object v11, La/h/b/e;->f:Ljava/lang/reflect/Method;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/16 v17, 0x0

    aput-object v17, v6, v8

    const/4 v0, 0x2

    aput-object v17, v6, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x3

    aput-object v0, v6, v16

    const/4 v0, 0x4

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v18, v6, v0

    const/4 v0, 0x5

    const/16 v17, 0x0

    aput-object v17, v6, v0

    const/4 v0, 0x6

    aput-object v17, v6, v0

    const/4 v0, 0x7

    aput-object v18, v6, v0

    const/16 v0, 0x8

    aput-object v18, v6, v0

    invoke-virtual {v11, v14, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    invoke-virtual {v13}, Landroid/app/Activity;->recreate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    new-instance v0, La/h/b/c;

    invoke-direct {v0, v15, v7}, La/h/b/c;-><init>(Landroid/app/Application;La/h/b/e$a;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    const/4 v0, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    sget-object v6, La/h/b/e;->g:Landroid/os/Handler;

    new-instance v11, La/h/b/c;

    invoke-direct {v11, v15, v7}, La/h/b/c;-><init>(Landroid/app/Application;La/h/b/e$a;)V

    invoke-virtual {v6, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_f

    .line 8
    :goto_8
    invoke-virtual {v13}, Landroid/app/Activity;->recreate()V

    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_21

    if-eq v10, v5, :cond_21

    .line 9
    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v5

    iput v0, v7, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v0, 0x1a

    const/16 v10, 0x17

    if-ge v4, v0, :cond_1d

    const/16 v11, 0x1c

    if-lt v4, v11, :cond_11

    goto/16 :goto_12

    :cond_11
    const-string v11, "mDrawableCache"

    const-string v12, "ResourcesFlusher"

    const/16 v13, 0x18

    if-lt v4, v13, :cond_17

    .line 10
    sget-boolean v0, La/b/a;->h:Z

    if-nez v0, :cond_12

    :try_start_4
    const-class v0, Landroid/content/res/Resources;

    const-string v13, "mResourcesImpl"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, La/b/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    const-string v13, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    sput-boolean v8, La/b/a;->h:Z

    :cond_12
    sget-object v0, La/b/a;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_13

    goto/16 :goto_12

    :cond_13
    :try_start_5
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v6, v17

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v6, v0

    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v12, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v5

    :goto_b
    if-nez v6, :cond_14

    goto/16 :goto_12

    :cond_14
    sget-boolean v0, La/b/a;->b:Z

    if-nez v0, :cond_15

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, La/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    const-string v11, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    sput-boolean v8, La/b/a;->b:Z

    :cond_15
    sget-object v0, La/b/a;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_16

    :try_start_7
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v6, v0

    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v12, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    move-object v6, v5

    :goto_d
    if-eqz v6, :cond_1d

    invoke-static {v6}, La/b/a;->d(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_17
    const-string v13, "Could not retrieve Resources#mDrawableCache field"

    const-string v14, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v4, v10, :cond_1b

    .line 11
    sget-boolean v0, La/b/a;->b:Z

    if-nez v0, :cond_18

    :try_start_8
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, La/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    sput-boolean v8, La/b/a;->b:Z

    :cond_18
    sget-object v0, La/b/a;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_19

    :try_start_9
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v6, v0

    invoke-static {v12, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    move-object v6, v5

    :goto_f
    if-nez v6, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-static {v6}, La/b/a;->d(Ljava/lang/Object;)V

    goto :goto_12

    :cond_1b
    const/16 v0, 0x15

    if-lt v4, v0, :cond_1d

    .line 12
    sget-boolean v0, La/b/a;->b:Z

    if-nez v0, :cond_1c

    :try_start_a
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, La/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    sput-boolean v8, La/b/a;->b:Z

    :cond_1c
    sget-object v0, La/b/a;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1d

    :try_start_b
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_8

    move-object v6, v0

    goto :goto_11

    :catch_8
    move-exception v0

    invoke-static {v12, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v5

    :goto_11
    if-eqz v6, :cond_1d

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 13
    :cond_1d
    :goto_12
    iget v0, v1, La/b/c/k;->N:I

    if-eqz v0, :cond_1e

    iget-object v5, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->setTheme(I)V

    if-lt v4, v10, :cond_1e

    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v4, v1, La/b/c/k;->N:I

    invoke-virtual {v0, v4, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1e
    if-eqz v9, :cond_22

    iget-object v0, v1, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_22

    check-cast v0, Landroid/app/Activity;

    instance-of v4, v0, La/n/g;

    if-eqz v4, :cond_20

    move-object v4, v0

    check-cast v4, La/n/g;

    invoke-interface {v4}, La/n/g;->a()La/n/d;

    move-result-object v4

    check-cast v4, La/n/h;

    .line 14
    iget-object v4, v4, La/n/h;->b:La/n/d$b;

    .line 15
    sget-object v5, La/n/d$b;->e:La/n/d$b;

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    if-eqz v2, :cond_22

    goto :goto_13

    .line 17
    :cond_20
    iget-boolean v2, v1, La/b/c/k;->K:Z

    if-eqz v2, :cond_22

    :goto_13
    invoke-virtual {v0, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_14

    :cond_21
    move v8, v0

    :cond_22
    :goto_14
    if-eqz v8, :cond_23

    .line 18
    iget-object v0, v1, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v2, v0, La/b/c/h;

    if-eqz v2, :cond_23

    check-cast v0, La/b/c/h;

    invoke-virtual {v0}, La/b/c/h;->q()V

    :cond_23
    if-nez v3, :cond_24

    .line 19
    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, La/b/c/k;->M(Landroid/content/Context;)La/b/c/k$g;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/k$g;->e()V

    goto :goto_15

    :cond_24
    iget-object v0, v1, La/b/c/k;->Q:La/b/c/k$g;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, La/b/c/k$g;->a()V

    :cond_25
    :goto_15
    const/4 v2, 0x3

    if-ne v3, v2, :cond_27

    iget-object v0, v1, La/b/c/k;->e:Landroid/content/Context;

    .line 20
    iget-object v2, v1, La/b/c/k;->R:La/b/c/k$g;

    if-nez v2, :cond_26

    new-instance v2, La/b/c/k$f;

    invoke-direct {v2, v1, v0}, La/b/c/k$f;-><init>(La/b/c/k;Landroid/content/Context;)V

    iput-object v2, v1, La/b/c/k;->R:La/b/c/k$g;

    :cond_26
    iget-object v0, v1, La/b/c/k;->R:La/b/c/k$g;

    .line 21
    invoke-virtual {v0}, La/b/c/k$g;->e()V

    goto :goto_16

    :cond_27
    iget-object v0, v1, La/b/c/k;->R:La/b/c/k$g;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, La/b/c/k$g;->a()V

    :cond_28
    :goto_16
    return v8
.end method

.method public final B(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, La/b/c/k$e;

    if-nez v2, :cond_1

    new-instance v1, La/b/c/k$e;

    invoke-direct {v1, p0, v0}, La/b/c/k$e;-><init>(La/b/c/k;Landroid/view/Window$Callback;)V

    iput-object v1, p0, La/b/c/k;->g:La/b/c/k$e;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, La/b/c/k;->b0:[I

    invoke-static {v0, v1, v2}, La/b/h/x0;->p(Landroid/content/Context;Landroid/util/AttributeSet;[I)La/b/h/x0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/b/h/x0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1
    :cond_0
    iget-object v0, v0, La/b/h/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2
    iput-object p1, p0, La/b/c/k;->f:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(ILa/b/c/k$j;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p2, La/b/c/k$j;->h:La/b/g/i/g;

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, La/b/c/k$j;->m:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-boolean p2, p0, La/b/c/k;->L:Z

    if-nez p2, :cond_2

    iget-object p2, p0, La/b/c/k;->g:La/b/c/k$e;

    .line 1
    iget-object p2, p2, La/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public D(La/b/g/i/g;)V
    .locals 2

    iget-boolean v0, p0, La/b/c/k;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/c/k;->E:Z

    iget-object v0, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {v0}, La/b/h/c0;->j()V

    invoke-virtual {p0}, La/b/c/k;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, La/b/c/k;->L:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, La/b/c/k;->E:Z

    return-void
.end method

.method public E(La/b/c/k$j;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, La/b/c/k$j;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La/b/h/c0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {p0, p1}, La/b/c/k;->D(La/b/g/i/g;)V

    return-void

    :cond_0
    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, La/b/c/k$j;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, La/b/c/k$j;->a:I

    invoke-virtual {p0, p2, p1, v1}, La/b/c/k;->C(ILa/b/c/k$j;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, La/b/c/k$j;->k:Z

    iput-boolean p2, p1, La/b/c/k$j;->l:Z

    iput-boolean p2, p1, La/b/c/k$j;->m:Z

    iput-object v1, p1, La/b/c/k$j;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, La/b/c/k$j;->o:Z

    iget-object p2, p0, La/b/c/k;->G:La/b/c/k$j;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, La/b/c/k;->G:La/b/c/k$j;

    :cond_2
    return-void
.end method

.method public final F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public G(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v1, v0, La/h/j/d$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, La/b/c/q;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, La/h/j/d;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, La/b/c/k;->g:La/b/c/k$e;

    .line 1
    iget-object v0, v0, La/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v4}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-boolean v1, v0, La/b/c/k$j;->m:Z

    if-nez v1, :cond_17

    invoke-virtual {p0, v0, p1}, La/b/c/k;->U(La/b/c/k$j;Landroid/view/KeyEvent;)Z

    goto/16 :goto_9

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, La/b/c/k;->H:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 5
    :cond_9
    iget-object v0, p0, La/b/c/k;->o:La/b/g/a;

    if-eqz v0, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0, v4}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-object v1, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v1, :cond_c

    invoke-interface {v1}, La/b/h/c0;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {v1}, La/b/h/c0;->e()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, La/b/c/k;->L:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, La/b/c/k;->U(La/b/c/k$j;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {p1}, La/b/h/c0;->a()Z

    move-result p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {p1}, La/b/h/c0;->g()Z

    move-result p1

    goto :goto_5

    :cond_c
    iget-boolean v1, v0, La/b/c/k$j;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, La/b/c/k$j;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v1, v0, La/b/c/k$j;->k:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, La/b/c/k$j;->p:Z

    if-eqz v1, :cond_e

    iput-boolean v4, v0, La/b/c/k$j;->k:Z

    invoke-virtual {p0, v0, p1}, La/b/c/k;->U(La/b/c/k$j;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0, v0, p1}, La/b/c/k;->S(La/b/c/k$j;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, La/b/c/k;->E(La/b/c/k$j;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_17

    iget-object p1, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_9

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 6
    :cond_12
    iget-boolean p1, p0, La/b/c/k;->H:Z

    iput-boolean v4, p0, La/b/c/k;->H:Z

    invoke-virtual {p0, v4}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-boolean v1, v0, La/b/c/k$j;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_17

    invoke-virtual {p0, v0, v2}, La/b/c/k;->E(La/b/c/k$j;Z)V

    goto :goto_9

    .line 7
    :cond_13
    iget-object p1, p0, La/b/c/k;->o:La/b/g/a;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, La/b/g/a;->c()V

    goto :goto_7

    .line 8
    :cond_14
    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object p1, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz p1, :cond_16

    .line 9
    check-cast p1, La/b/c/u;

    .line 10
    iget-object v0, p1, La/b/c/u;->e:La/b/h/d0;

    if-eqz v0, :cond_15

    invoke-interface {v0}, La/b/h/d0;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p1, La/b/c/u;->e:La/b/h/d0;

    invoke-interface {p1}, La/b/h/d0;->collapseActionView()V

    const/4 p1, 0x1

    goto :goto_6

    :cond_15
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_16

    :goto_7
    const/4 p1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_7

    :cond_17
    :goto_9
    return v2
.end method

.method public H(I)V
    .locals 3

    invoke-virtual {p0, p1}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-object v1, v0, La/b/c/k$j;->h:La/b/g/i/g;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v2, v1}, La/b/g/i/g;->w(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, La/b/c/k$j;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v1}, La/b/g/i/g;->z()V

    iget-object v1, v0, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v1}, La/b/g/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, La/b/c/k$j;->p:Z

    iput-boolean v1, v0, La/b/c/k$j;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iput-boolean p1, v0, La/b/c/k$j;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, La/b/c/k;->U(La/b/c/k$j;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, La/b/c/k;->s:La/h/j/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/h/j/s;->b()V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 10

    sget-object v0, La/b/b;->j:[I

    iget-boolean v1, p0, La/b/c/k;->t:Z

    if-nez v1, :cond_1d

    .line 1
    iget-object v1, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v5, 0x6c

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6}, La/b/c/k;->t(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, La/b/c/k;->t(I)Z

    :cond_1
    :goto_0
    const/16 v2, 0x74

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v3, 0x6d

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, La/b/c/k;->t(I)Z

    :cond_2
    const/16 v2, 0x75

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, La/b/c/k;->t(I)Z

    :cond_3
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, La/b/c/k;->C:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, La/b/c/k;->K()V

    iget-object v1, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v1, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v2, p0, La/b/c/k;->D:Z

    const/4 v7, 0x0

    if-nez v2, :cond_9

    iget-boolean v2, p0, La/b/c/k;->C:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-boolean v4, p0, La/b/c/k;->A:Z

    iput-boolean v4, p0, La/b/c/k;->z:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v1, p0, La/b/c/k;->z:Z

    if-eqz v1, :cond_8

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v8, 0x7f030009

    invoke-virtual {v2, v8, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_5

    new-instance v2, La/b/g/c;

    iget-object v8, p0, La/b/c/k;->e:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v2, v8, v1}, La/b/g/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, La/b/c/k;->e:Landroid/content/Context;

    :goto_1
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, La/b/h/c0;

    iput-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-virtual {p0}, La/b/c/k;->O()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v2, v8}, La/b/h/c0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v2, p0, La/b/c/k;->A:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {v2, v3}, La/b/h/c0;->h(I)V

    :cond_6
    iget-boolean v2, p0, La/b/c/k;->x:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, La/b/h/c0;->h(I)V

    :cond_7
    iget-boolean v2, p0, La/b/c/k;->y:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, La/b/h/c0;->h(I)V

    goto :goto_3

    :cond_8
    move-object v1, v7

    goto :goto_3

    :cond_9
    iget-boolean v2, p0, La/b/c/k;->B:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0b0016

    goto :goto_2

    :cond_a
    const v2, 0x7f0b0015

    :goto_2
    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_b
    :goto_3
    if-eqz v1, :cond_1b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_c

    new-instance v2, La/b/c/l;

    invoke-direct {v2, p0}, La/b/c/l;-><init>(La/b/c/k;)V

    invoke-static {v1, v2}, La/h/j/n;->s(Landroid/view/View;La/h/j/k;)V

    goto :goto_4

    :cond_c
    instance-of v2, v1, La/b/h/g0;

    if-eqz v2, :cond_d

    move-object v2, v1

    check-cast v2, La/b/h/g0;

    new-instance v3, La/b/c/m;

    invoke-direct {v3, p0}, La/b/c/m;-><init>(La/b/c/k;)V

    invoke-interface {v2, v3}, La/b/h/g0;->setOnFitSystemWindowsListener(La/b/h/g0$a;)V

    :cond_d
    :goto_4
    iget-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    if-nez v2, :cond_e

    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, La/b/c/k;->v:Landroid/widget/TextView;

    .line 2
    :cond_e
    sget-object v2, La/b/h/d1;->a:Ljava/lang/reflect/Method;

    const-string v2, "ViewUtils"

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v8, "makeOptionalFitsSystemWindows"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_f
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    :goto_5
    const-string v8, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v2, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v2, 0x7f080031

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, La/b/c/k;->f:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_11

    :goto_7
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_10

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v9, v3, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_11

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v3, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v3, La/b/c/n;

    invoke-direct {v3, p0}, La/b/c/n;-><init>(La/b/c/k;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 4
    iput-object v1, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    .line 5
    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_12

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_8

    :cond_12
    iget-object v1, p0, La/b/c/k;->k:Ljava/lang/CharSequence;

    .line 6
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v2, :cond_13

    invoke-interface {v2, v1}, La/b/h/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 7
    :cond_13
    iget-object v2, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v2, :cond_14

    .line 8
    check-cast v2, La/b/c/u;

    .line 9
    iget-object v2, v2, La/b/c/u;->e:La/b/h/d0;

    invoke-interface {v2, v1}, La/b/h/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 10
    :cond_14
    iget-object v2, p0, La/b/c/k;->v:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_15
    :goto_9
    iget-object v1, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 12
    iget-object v9, v1, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    invoke-virtual {v9, v3, v7, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    sget-object v2, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 14
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 15
    :cond_16
    iget-object v2, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x7a

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7b

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x79

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    const/16 v2, 0x76

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    const/16 v2, 0x77

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 16
    iput-boolean v6, p0, La/b/c/k;->t:Z

    invoke-virtual {p0, v4}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-boolean v1, p0, La/b/c/k;->L:Z

    if-nez v1, :cond_1d

    iget-object v0, v0, La/b/c/k$j;->h:La/b/g/i/g;

    if-nez v0, :cond_1d

    invoke-virtual {p0, v5}, La/b/c/k;->Q(I)V

    goto :goto_a

    .line 17
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, La/b/c/k;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, La/b/c/k;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, La/b/c/k;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, La/b/c/k;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, La/b/c/k;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_a
    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, La/b/c/k;->B(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L(Landroid/view/Menu;)La/b/c/k$j;
    .locals 5

    iget-object v0, p0, La/b/c/k;->F:[La/b/c/k$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, La/b/c/k$j;->h:La/b/g/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final M(Landroid/content/Context;)La/b/c/k$g;
    .locals 3

    iget-object v0, p0, La/b/c/k;->Q:La/b/c/k$g;

    if-nez v0, :cond_1

    new-instance v0, La/b/c/k$h;

    .line 1
    sget-object v1, La/b/c/t;->d:La/b/c/t;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, La/b/c/t;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, La/b/c/t;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, La/b/c/t;->d:La/b/c/t;

    :cond_0
    sget-object p1, La/b/c/t;->d:La/b/c/t;

    .line 2
    invoke-direct {v0, p0, p1}, La/b/c/k$h;-><init>(La/b/c/k;La/b/c/t;)V

    iput-object v0, p0, La/b/c/k;->Q:La/b/c/k$g;

    :cond_1
    iget-object p1, p0, La/b/c/k;->Q:La/b/c/k$g;

    return-object p1
.end method

.method public N(I)La/b/c/k$j;
    .locals 4

    iget-object v0, p0, La/b/c/k;->F:[La/b/c/k$j;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [La/b/c/k$j;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, La/b/c/k;->F:[La/b/c/k$j;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, La/b/c/k$j;

    invoke-direct {v1, p1}, La/b/c/k$j;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final O()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final P()V
    .locals 3

    invoke-virtual {p0}, La/b/c/k;->J()V

    iget-boolean v0, p0, La/b/c/k;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, La/b/c/u;

    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, La/b/c/k;->A:Z

    invoke-direct {v0, v1, v2}, La/b/c/u;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, La/b/c/k;->i:La/b/c/a;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, La/b/c/u;

    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, La/b/c/u;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, La/b/c/k;->V:Z

    invoke-virtual {v0, v1}, La/b/c/a;->c(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final Q(I)V
    .locals 3

    iget v0, p0, La/b/c/k;->T:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, La/b/c/k;->T:I

    iget-boolean p1, p0, La/b/c/k;->S:Z

    if-nez p1, :cond_0

    iget-object p1, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, La/b/c/k;->U:Ljava/lang/Runnable;

    .line 1
    sget-object v2, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2
    iput-boolean v1, p0, La/b/c/k;->S:Z

    :cond_0
    return-void
.end method

.method public R(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, La/b/c/k;->R:La/b/c/k$g;

    if-nez p2, :cond_0

    new-instance p2, La/b/c/k$f;

    invoke-direct {p2, p0, p1}, La/b/c/k$f;-><init>(La/b/c/k;Landroid/content/Context;)V

    iput-object p2, p0, La/b/c/k;->R:La/b/c/k$g;

    :cond_0
    iget-object p1, p0, La/b/c/k;->R:La/b/c/k$g;

    .line 2
    :goto_0
    invoke-virtual {p1}, La/b/c/k$g;->c()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, La/b/c/k;->M(Landroid/content/Context;)La/b/c/k$g;

    move-result-object p1

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final S(La/b/c/k$j;Landroid/view/KeyEvent;)V
    .locals 12

    iget-boolean v0, p1, La/b/c/k$j;->m:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, La/b/c/k;->L:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v0, p1, La/b/c/k$j;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, La/b/c/k;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, La/b/c/k$j;->a:I

    iget-object v4, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, La/b/c/k;->E(La/b/c/k$j;Z)V

    return-void

    :cond_3
    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, La/b/c/k;->U(La/b/c/k$j;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, La/b/c/k$j;->o:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, La/b/c/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1b

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1b

    const/4 v5, -0x1

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object p2, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, La/b/c/a;->b()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, La/b/c/k;->e:Landroid/content/Context;

    .line 3
    :cond_9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f030002

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f03023f

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    const v4, 0x7f0f0174

    :goto_3
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, La/b/g/c;

    invoke-direct {v4, p2, v2}, La/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, La/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v4, p1, La/b/c/k$j;->j:Landroid/content/Context;

    sget-object p2, La/b/b;->j:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x54

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, La/b/c/k$j;->b:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, La/b/c/k$j;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p2, La/b/c/k$i;

    iget-object v4, p1, La/b/c/k$j;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, La/b/c/k$i;-><init>(La/b/c/k;Landroid/content/Context;)V

    iput-object p2, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, La/b/c/k$j;->c:I

    goto :goto_4

    .line 5
    :cond_c
    iget-boolean v4, p1, La/b/c/k$j;->o:Z

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_d
    :goto_4
    iget-object p2, p1, La/b/c/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, La/b/c/k$j;->f:Landroid/view/View;

    goto :goto_5

    :cond_e
    iget-object p2, p1, La/b/c/k$j;->h:La/b/g/i/g;

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    iget-object p2, p0, La/b/c/k;->n:La/b/c/k$k;

    if-nez p2, :cond_10

    new-instance p2, La/b/c/k$k;

    invoke-direct {p2, p0}, La/b/c/k$k;-><init>(La/b/c/k;)V

    iput-object p2, p0, La/b/c/k;->n:La/b/c/k$k;

    :cond_10
    iget-object p2, p0, La/b/c/k;->n:La/b/c/k$k;

    .line 7
    iget-object v4, p1, La/b/c/k$j;->i:La/b/g/i/e;

    if-nez v4, :cond_11

    new-instance v4, La/b/g/i/e;

    iget-object v5, p1, La/b/c/k$j;->j:Landroid/content/Context;

    const v6, 0x7f0b0010

    invoke-direct {v4, v5, v6}, La/b/g/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, La/b/c/k$j;->i:La/b/g/i/e;

    .line 8
    iput-object p2, v4, La/b/g/i/e;->f:La/b/g/i/m$a;

    .line 9
    iget-object p2, p1, La/b/c/k$j;->h:La/b/g/i/g;

    .line 10
    iget-object v5, p2, La/b/g/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, La/b/g/i/g;->b(La/b/g/i/m;Landroid/content/Context;)V

    .line 11
    :cond_11
    iget-object p2, p1, La/b/c/k$j;->i:La/b/g/i/e;

    iget-object v4, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    .line 12
    iget-object v5, p2, La/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_13

    iget-object v5, p2, La/b/g/i/e;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, La/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v4, p2, La/b/g/i/e;->g:La/b/g/i/e$a;

    if-nez v4, :cond_12

    new-instance v4, La/b/g/i/e$a;

    invoke-direct {v4, p2}, La/b/g/i/e$a;-><init>(La/b/g/i/e;)V

    iput-object v4, p2, La/b/g/i/e;->g:La/b/g/i/e$a;

    :cond_12
    iget-object v4, p2, La/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, La/b/g/i/e;->g:La/b/g/i/e$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, La/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object p2, p2, La/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    iput-object p2, p1, La/b/c/k$j;->f:Landroid/view/View;

    if-eqz p2, :cond_14

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1c

    .line 14
    iget-object p2, p1, La/b/c/k$j;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    :cond_15
    iget-object p2, p1, La/b/c/k$j;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_8

    :cond_16
    iget-object p2, p1, La/b/c/k$j;->i:La/b/g/i/e;

    invoke-virtual {p2}, La/b/g/i/e;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, La/b/g/i/e$a;

    invoke-virtual {p2}, La/b/g/i/e$a;->getCount()I

    move-result p2

    if-lez p2, :cond_17

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_17
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_18

    goto :goto_c

    .line 15
    :cond_18
    iget-object p2, p1, La/b/c/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_19
    iget v4, p1, La/b/c/k$j;->b:I

    iget-object v5, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v4, p1, La/b/c/k$j;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, La/b/c/k$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    iget-object v4, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, La/b/c/k$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, La/b/c/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p1, La/b/c/k$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1b
    const/4 v5, -0x2

    :goto_b
    iput-boolean v2, p1, La/b/c/k$j;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, La/b/c/k$j;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, La/b/c/k$j;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, La/b/c/k$j;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, La/b/c/k$j;->m:Z

    return-void

    :cond_1c
    :goto_c
    iput-boolean v1, p1, La/b/c/k$j;->o:Z

    :cond_1d
    :goto_d
    return-void
.end method

.method public final T(La/b/c/k$j;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, La/b/c/k$j;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, La/b/c/k;->U(La/b/c/k$j;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, La/b/c/k$j;->h:La/b/g/i/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, La/b/g/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, La/b/c/k;->l:La/b/h/c0;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, La/b/c/k;->E(La/b/c/k$j;Z)V

    :cond_3
    return v1
.end method

.method public final U(La/b/c/k$j;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, La/b/c/k;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, La/b/c/k$j;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, La/b/c/k;->G:La/b/c/k$j;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, La/b/c/k;->E(La/b/c/k$j;Z)V

    :cond_2
    invoke-virtual {p0}, La/b/c/k;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, La/b/c/k$j;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, La/b/c/k$j;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, La/b/c/k$j;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v5, :cond_6

    invoke-interface {v5}, La/b/h/c0;->d()V

    :cond_6
    iget-object v5, p1, La/b/c/k$j;->g:Landroid/view/View;

    if-nez v5, :cond_18

    iget-object v5, p1, La/b/c/k$j;->h:La/b/g/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v7, p1, La/b/c/k$j;->p:Z

    if-eqz v7, :cond_12

    :cond_7
    if-nez v5, :cond_d

    .line 1
    iget-object v5, p0, La/b/c/k;->e:Landroid/content/Context;

    iget v7, p1, La/b/c/k$j;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_c

    :cond_8
    iget-object v4, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f030009

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f03000a

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, La/b/g/c;

    invoke-direct {v4, v5, v1}, La/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, La/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    :cond_c
    new-instance v4, La/b/g/i/g;

    invoke-direct {v4, v5}, La/b/g/i/g;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p0, v4, La/b/g/i/g;->e:La/b/g/i/g$a;

    .line 3
    invoke-virtual {p1, v4}, La/b/c/k$j;->a(La/b/g/i/g;)V

    .line 4
    iget-object v4, p1, La/b/c/k$j;->h:La/b/g/i/g;

    if-nez v4, :cond_d

    return v1

    :cond_d
    if-eqz v3, :cond_f

    iget-object v4, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v4, :cond_f

    iget-object v5, p0, La/b/c/k;->m:La/b/c/k$c;

    if-nez v5, :cond_e

    new-instance v5, La/b/c/k$c;

    invoke-direct {v5, p0}, La/b/c/k$c;-><init>(La/b/c/k;)V

    iput-object v5, p0, La/b/c/k;->m:La/b/c/k$c;

    :cond_e
    iget-object v5, p1, La/b/c/k$j;->h:La/b/g/i/g;

    iget-object v7, p0, La/b/c/k;->m:La/b/c/k$c;

    invoke-interface {v4, v5, v7}, La/b/h/c0;->b(Landroid/view/Menu;La/b/g/i/m$a;)V

    :cond_f
    iget-object v4, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v4}, La/b/g/i/g;->z()V

    iget v4, p1, La/b/c/k$j;->a:I

    iget-object v5, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p1, v6}, La/b/c/k$j;->a(La/b/g/i/g;)V

    if-eqz v3, :cond_10

    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz p1, :cond_10

    iget-object p2, p0, La/b/c/k;->m:La/b/c/k$c;

    invoke-interface {p1, v6, p2}, La/b/h/c0;->b(Landroid/view/Menu;La/b/g/i/m$a;)V

    :cond_10
    return v1

    :cond_11
    iput-boolean v1, p1, La/b/c/k$j;->p:Z

    :cond_12
    iget-object v4, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v4}, La/b/g/i/g;->z()V

    iget-object v4, p1, La/b/c/k$j;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    iget-object v5, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v5, v4}, La/b/g/i/g;->v(Landroid/os/Bundle;)V

    iput-object v6, p1, La/b/c/k$j;->q:Landroid/os/Bundle;

    :cond_13
    iget-object v4, p1, La/b/c/k$j;->g:Landroid/view/View;

    iget-object v5, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_14

    iget-object p2, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz p2, :cond_14

    iget-object v0, p0, La/b/c/k;->m:La/b/c/k$c;

    invoke-interface {p2, v6, v0}, La/b/h/c0;->b(Landroid/view/Menu;La/b/g/i/m$a;)V

    :cond_14
    iget-object p1, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {p1}, La/b/g/i/g;->y()V

    return v1

    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_16
    const/4 p2, -0x1

    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_17

    const/4 p2, 0x1

    goto :goto_4

    :cond_17
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, La/b/c/k$j;->n:Z

    iget-object v0, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {v0, p2}, La/b/g/i/g;->setQwertyMode(Z)V

    iget-object p2, p1, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-virtual {p2}, La/b/g/i/g;->y()V

    :cond_18
    iput-boolean v2, p1, La/b/c/k$j;->k:Z

    iput-boolean v1, p1, La/b/c/k$j;->l:Z

    iput-object p1, p0, La/b/c/k;->G:La/b/c/k$j;

    return v2
.end method

.method public final V()Z
    .locals 2

    iget-boolean v0, p0, La/b/c/k;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final W()V
    .locals 2

    iget-boolean v0, p0, La/b/c/k;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final X(La/h/j/w;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/h/j/w;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_13

    iget-object v2, p0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_11

    iget-object v4, p0, La/b/c/k;->W:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, La/b/c/k;->W:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, La/b/c/k;->X:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, La/b/c/k;->W:Landroid/graphics/Rect;

    iget-object v6, p0, La/b/c/k;->X:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, La/h/j/w;->b()I

    move-result p2

    invoke-virtual {p1}, La/h/j/w;->d()I

    move-result v7

    invoke-virtual {p1}, La/h/j/w;->c()I

    move-result v8

    invoke-virtual {p1}, La/h/j/w;->a()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, La/b/h/d1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    .line 1
    sget-object v7, La/h/j/n;->a:Ljava/util/WeakHashMap;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_4

    .line 2
    invoke-virtual {v6}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v6

    .line 3
    invoke-static {v6}, La/h/j/w;->h(Landroid/view/WindowInsets;)La/h/j/w;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    .line 4
    :cond_5
    invoke-virtual {v6}, La/h/j/w;->b()I

    move-result v7

    :goto_3
    if-nez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, La/h/j/w;->c()I

    move-result v6

    :goto_4
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_6
    if-lez p1, :cond_9

    iget-object p1, p0, La/b/c/k;->w:Landroid/view/View;

    if-nez p1, :cond_9

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, La/b/c/k;->w:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    iget-object v6, p0, La/b/c/k;->w:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_9
    iget-object p1, p0, La/b/c/k;->w:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_a

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_a

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_b

    :cond_a
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, La/b/c/k;->w:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_7
    iget-object p1, p0, La/b/c/k;->w:Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, La/b/c/k;->w:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_e

    .line 6
    iget-object v5, p0, La/b/c/k;->e:Landroid/content/Context;

    const v6, 0x7f050006

    goto :goto_a

    :cond_e
    iget-object v5, p0, La/b/c/k;->e:Landroid/content/Context;

    const v6, 0x7f050005

    :goto_a
    invoke-static {v5, v6}, La/h/c/a;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    :cond_f
    iget-boolean p1, p0, La/b/c/k;->B:Z

    if-nez p1, :cond_10

    if-eqz v4, :cond_10

    const/4 v1, 0x0

    :cond_10
    move v5, p2

    goto :goto_b

    :cond_11
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_12

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_14

    iget-object p1, p0, La/b/c/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    :cond_14
    :goto_c
    iget-object p1, p0, La/b/c/k;->w:Landroid/view/View;

    if-eqz p1, :cond_16

    if-eqz v4, :cond_15

    goto :goto_d

    :cond_15
    const/16 v0, 0x8

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return v1
.end method

.method public a(La/b/g/i/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, La/b/h/c0;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {p1}, La/b/h/c0;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, La/b/c/k;->O()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {v2}, La/b/h/c0;->e()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {v0}, La/b/h/c0;->g()Z

    iget-boolean v0, p0, La/b/c/k;->L:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-object v0, v0, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, La/b/c/k;->L:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, La/b/c/k;->S:Z

    if-eqz v2, :cond_2

    iget v2, p0, La/b/c/k;->T:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, La/b/c/k;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, La/b/c/k;->U:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object v0

    iget-object v2, v0, La/b/c/k$j;->h:La/b/g/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, La/b/c/k$j;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, La/b/c/k$j;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, La/b/c/k$j;->h:La/b/g/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, La/b/c/k;->l:La/b/h/c0;

    invoke-interface {p1}, La/b/h/c0;->a()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, La/b/c/k;->N(I)La/b/c/k$j;

    move-result-object p1

    iput-boolean v0, p1, La/b/c/k$j;->o:Z

    invoke-virtual {p0, p1, v1}, La/b/c/k;->E(La/b/c/k$j;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/b/c/k;->S(La/b/c/k$j;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(La/b/g/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, La/b/c/k;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, La/b/c/k;->L:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, La/b/g/i/g;->k()La/b/g/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/c/k;->L(Landroid/view/Menu;)La/b/c/k$j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, La/b/c/k$j;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, La/b/c/k;->J()V

    iget-object v0, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, La/b/c/k;->g:La/b/c/k$e;

    .line 1
    iget-object p1, p1, La/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    iput-boolean v1, p0, La/b/c/k;->I:Z

    .line 1
    iget v2, p0, La/b/c/k;->M:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v2}, La/b/c/k;->R(Landroid/content/Context;I)I

    move-result v2

    sget-boolean v3, La/b/c/k;->d0:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2, v4}, La/b/c/k;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    .line 3
    invoke-virtual {v5, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 4
    :cond_1
    instance-of v3, p1, La/b/g/c;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v2, v4}, La/b/c/k;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v5, p1

    check-cast v5, La/b/g/c;

    invoke-virtual {v5, v3}, La/b/g/c;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    :cond_2
    sget-boolean v3, La/b/c/k;->c0:Z

    if-nez v3, :cond_3

    return-object p1

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 5
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    if-eqz v5, :cond_1c

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_2

    :cond_4
    iget v7, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    iput v8, v6, Landroid/content/res/Configuration;->fontScale:F

    :cond_5
    iget v7, v3, Landroid/content/res/Configuration;->mcc:I

    iget v8, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v7, v8, :cond_6

    iput v8, v6, Landroid/content/res/Configuration;->mcc:I

    :cond_6
    iget v7, v3, Landroid/content/res/Configuration;->mnc:I

    iget v8, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v7, v8, :cond_7

    iput v8, v6, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    const/16 v7, 0x18

    if-lt v0, v7, :cond_8

    .line 6
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v8}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iget-object v7, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 7
    :cond_8
    iget-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 8
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 9
    iget-object v7, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_9
    :goto_1
    iget v7, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v7, v8, :cond_a

    iput v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    iget v7, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v8, :cond_b

    iput v8, v6, Landroid/content/res/Configuration;->keyboard:I

    :cond_b
    iget v7, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v7, v8, :cond_c

    iput v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c
    iget v7, v3, Landroid/content/res/Configuration;->navigation:I

    iget v8, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v7, v8, :cond_d

    iput v8, v6, Landroid/content/res/Configuration;->navigation:I

    :cond_d
    iget v7, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v7, v8, :cond_e

    iput v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_e
    iget v7, v3, Landroid/content/res/Configuration;->orientation:I

    iget v8, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v8, :cond_f

    iput v8, v6, Landroid/content/res/Configuration;->orientation:I

    :cond_f
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v7, v8, :cond_10

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0xc0

    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v7, v8, :cond_11

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v7, v8, :cond_12

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v7, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v7, v7, 0x300

    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v7, v8, :cond_13

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    const/16 v7, 0x1a

    if-lt v0, v7, :cond_15

    .line 10
    iget v7, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0x3

    iget v8, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0x3

    if-eq v7, v8, :cond_14

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v7, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v7, v7, 0xc

    iget v8, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0xc

    if-eq v7, v8, :cond_15

    iget v7, v6, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 11
    :cond_15
    iget v7, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0xf

    iget v8, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0xf

    if-eq v7, v8, :cond_16

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v7, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    iget v8, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-eq v7, v8, :cond_17

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v7, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v7, v8, :cond_18

    iput v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v7, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v7, v8, :cond_19

    iput v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v7, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v7, v8, :cond_1a

    iput v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 12
    :cond_1a
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v5, :cond_1c

    iput v5, v6, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1b
    move-object v6, v4

    .line 13
    :cond_1c
    :goto_2
    invoke-virtual {p0, p1, v2, v6}, La/b/c/k;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    new-instance v3, La/b/g/c;

    const v5, 0x7f0f0180

    invoke-direct {v3, p1, v5}, La/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, La/b/g/c;->a(Landroid/content/res/Configuration;)V

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_3

    :catch_2
    :cond_1d
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_21

    invoke-virtual {v3}, La/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_1e

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_7

    :cond_1e
    const/16 v5, 0x17

    if-lt v0, v5, :cond_21

    .line 15
    sget-object v0, La/h/c/b/h$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    sget-boolean v5, La/h/c/b/h$a;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_1f

    :try_start_5
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, La/h/c/b/h$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_6
    const-string v6, "ResourcesCompat"

    const-string v7, "Failed to retrieve rebase() method"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    sput-boolean v1, La/h/c/b/h$a;->c:Z

    :cond_1f
    sget-object v1, La/h/c/b/h$a;->b:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_20

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_5
    :try_start_8
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to invoke rebase() method via reflection"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, La/h/c/b/h$a;->b:Ljava/lang/reflect/Method;

    :cond_20
    :goto_6
    monitor-exit v0

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1

    :cond_21
    :goto_7
    return-object v3

    :catch_6
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application failed to obtain resources from itself"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, La/b/c/k;->J()V

    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, La/b/c/k;->M:I

    return v0
.end method

.method public g()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, La/b/c/k;->j:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, La/b/c/k;->P()V

    new-instance v0, La/b/g/f;

    iget-object v1, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, La/b/c/a;->b()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/b/c/k;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, La/b/g/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/c/k;->j:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, p0, La/b/c/k;->j:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public h()La/b/c/a;
    .locals 1

    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, La/h/b/f;->c0(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, La/b/c/k;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, La/b/c/k;->Q(I)V

    return-void
.end method

.method public k(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean p1, p0, La/b/c/k;->z:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, La/b/c/k;->t:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object p1, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, La/b/c/u;

    .line 3
    iget-object v0, p1, La/b/c/u;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, La/b/c/u;->f(Z)V

    .line 6
    :cond_0
    invoke-static {}, La/b/h/j;->a()La/b/h/j;

    move-result-object p1

    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    .line 7
    monitor-enter p1

    :try_start_0
    iget-object v1, p1, La/b/h/j;->a:La/b/h/n0;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, La/b/h/n0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/e/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, La/e/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit p1

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, La/b/c/k;->A(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/c/k;->I:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/b/c/k;->A(Z)Z

    invoke-virtual {p0}, La/b/c/k;->K()V

    iget-object v0, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, La/h/b/f;->E(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    if-nez v0, :cond_0

    .line 3
    iput-boolean p1, p0, La/b/c/k;->V:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, La/b/c/a;->c(Z)V

    .line 4
    :cond_1
    :goto_1
    sget-object v0, La/b/c/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, La/b/c/j;->s(La/b/c/j;)V

    sget-object v1, La/b/c/j;->b:La/e/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, La/e/c;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 5
    :cond_2
    :goto_2
    iput-boolean p1, p0, La/b/c/k;->J:Z

    return-void
.end method

.method public m()V
    .locals 3

    sget-object v0, La/b/c/k;->Z:La/e/h;

    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, La/b/c/j;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, La/b/c/j;->s(La/b/c/j;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2
    :cond_0
    :goto_0
    iget-boolean v1, p0, La/b/c/k;->S:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, La/b/c/k;->U:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, La/b/c/k;->K:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, La/b/c/k;->L:Z

    iget v1, p0, La/b/c/k;->M:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_2

    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, La/b/c/k;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, La/b/c/k;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_3
    iget-object v0, p0, La/b/c/k;->Q:La/b/c/k$g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, La/b/c/k$g;->a()V

    :cond_4
    iget-object v0, p0, La/b/c/k;->R:La/b/c/k$g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, La/b/c/k$g;->a()V

    :cond_5
    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, La/b/c/k;->J()V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    check-cast v0, La/b/c/u;

    .line 3
    iput-boolean v1, v0, La/b/c/u;->u:Z

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, La/b/c/k;->Y:La/b/c/r;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, La/b/c/k;->e:Landroid/content/Context;

    sget-object v2, La/b/b;->j:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x72

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, La/b/c/r;

    invoke-direct {v0}, La/b/c/r;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/c/r;

    iput-object v2, p0, La/b/c/k;->Y:La/b/c/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, La/b/c/r;

    invoke-direct {v0}, La/b/c/r;-><init>()V

    :goto_0
    iput-object v0, p0, La/b/c/k;->Y:La/b/c/r;

    :cond_1
    :goto_1
    sget-boolean v0, La/b/c/k;->a0:Z

    if-eqz v0, :cond_7

    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_6

    goto :goto_3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_3

    goto :goto_4

    .line 2
    :cond_3
    iget-object v3, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_2
    if-nez v0, :cond_4

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    if-eq v0, v3, :cond_6

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 3
    sget-object v5, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 4
    :cond_5
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_4
    move v7, v1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 5
    :goto_5
    iget-object v2, p0, La/b/c/k;->Y:La/b/c/r;

    sget-boolean v8, La/b/c/k;->a0:Z

    const/4 v9, 0x1

    sget v0, La/b/h/c1;->a:I

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, La/b/c/r;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, La/b/c/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/c/k;->K:Z

    invoke-virtual {p0}, La/b/c/k;->z()Z

    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/c/k;->K:Z

    .line 1
    invoke-virtual {p0}, La/b/c/k;->P()V

    iget-object v1, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, La/b/c/u;

    .line 3
    iput-boolean v0, v1, La/b/c/u;->u:Z

    iget-object v0, v1, La/b/c/u;->t:La/b/g/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/b/g/g;->a()V

    :cond_0
    return-void
.end method

.method public t(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, La/b/c/k;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, La/b/c/k;->z:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, La/b/c/k;->z:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, La/b/c/k;->f:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, La/b/c/k;->W()V

    iput-boolean v4, p0, La/b/c/k;->A:Z

    return v4

    :cond_5
    invoke-virtual {p0}, La/b/c/k;->W()V

    iput-boolean v4, p0, La/b/c/k;->z:Z

    return v4

    :cond_6
    invoke-virtual {p0}, La/b/c/k;->W()V

    iput-boolean v4, p0, La/b/c/k;->B:Z

    return v4

    :cond_7
    invoke-virtual {p0}, La/b/c/k;->W()V

    iput-boolean v4, p0, La/b/c/k;->y:Z

    return v4

    :cond_8
    invoke-virtual {p0}, La/b/c/k;->W()V

    iput-boolean v4, p0, La/b/c/k;->x:Z

    return v4

    :cond_9
    invoke-virtual {p0}, La/b/c/k;->W()V

    iput-boolean v4, p0, La/b/c/k;->D:Z

    return v4
.end method

.method public u(I)V
    .locals 2

    invoke-virtual {p0}, La/b/c/k;->J()V

    iget-object v0, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, La/b/c/k;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, La/b/c/k;->g:La/b/c/k$e;

    .line 1
    iget-object p1, p1, La/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, La/b/c/k;->J()V

    iget-object v0, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, La/b/c/k;->g:La/b/c/k$e;

    .line 1
    iget-object p1, p1, La/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, La/b/c/k;->J()V

    iget-object v0, p0, La/b/c/k;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, La/b/c/k;->g:La/b/c/k$e;

    .line 1
    iget-object p1, p1, La/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, La/b/c/k;->N:I

    return-void
.end method

.method public final y(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, La/b/c/k;->k:Ljava/lang/CharSequence;

    iget-object v0, p0, La/b/c/k;->l:La/b/h/c0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, La/b/h/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, La/b/c/k;->i:La/b/c/a;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, La/b/c/u;

    .line 3
    iget-object v0, v0, La/b/c/u;->e:La/b/h/d0;

    invoke-interface {v0, p1}, La/b/h/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, La/b/c/k;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/b/c/k;->A(Z)Z

    move-result v0

    return v0
.end method
