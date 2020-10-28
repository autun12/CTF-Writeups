.class public La/h/d/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:La/h/d/j;

.field public static final b:La/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/f<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, La/h/d/i;

    invoke-direct {v0}, La/h/d/i;-><init>()V

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, La/h/d/h;

    invoke-direct {v0}, La/h/d/h;-><init>()V

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    new-instance v0, La/h/d/g;

    invoke-direct {v0}, La/h/d/g;-><init>()V

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    .line 1
    sget-object v1, La/h/d/f;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    const-string v2, "TypefaceCompatApi24Impl"

    const-string v3, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 2
    new-instance v0, La/h/d/f;

    invoke-direct {v0}, La/h/d/f;-><init>()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    new-instance v0, La/h/d/e;

    invoke-direct {v0}, La/h/d/e;-><init>()V

    goto :goto_1

    :cond_6
    new-instance v0, La/h/d/j;

    invoke-direct {v0}, La/h/d/j;-><init>()V

    .line 3
    :goto_1
    sput-object v0, La/h/d/d;->a:La/h/d/j;

    .line 4
    new-instance v0, La/e/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La/e/f;-><init>(I)V

    sput-object v0, La/h/d/d;->b:La/e/f;

    return-void
.end method

.method public static a(Landroid/content/Context;La/h/c/b/b;Landroid/content/res/Resources;IILa/h/c/b/g;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 4

    instance-of v0, p1, La/h/c/b/e;

    if-eqz v0, :cond_c

    check-cast p1, La/h/c/b/e;

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    .line 1
    iget v1, p1, La/h/c/b/e;->c:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz p7, :cond_2

    .line 2
    iget p7, p1, La/h/c/b/e;->b:I

    goto :goto_1

    :cond_2
    const/4 p7, -0x1

    .line 3
    :goto_1
    iget-object p1, p1, La/h/c/b/e;->a:La/h/g/a;

    .line 4
    sget-object v2, La/h/g/e;->a:La/e/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v3, p1, La/h/g/a;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, La/h/g/e;->a:La/e/f;

    invoke-virtual {v3, v2}, La/e/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_3

    if-eqz p5, :cond_e

    invoke-virtual {p5, v3}, La/h/c/b/g;->d(Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    :cond_3
    if-eqz v0, :cond_6

    if-ne p7, v1, :cond_6

    invoke-static {p0, p1, p4}, La/h/g/e;->b(Landroid/content/Context;La/h/g/a;I)La/h/g/e$d;

    move-result-object p0

    if-eqz p5, :cond_5

    iget p1, p0, La/h/g/e$d;->b:I

    if-nez p1, :cond_4

    iget-object p1, p0, La/h/g/e$d;->a:Landroid/graphics/Typeface;

    invoke-virtual {p5, p1, p6}, La/h/c/b/g;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p5, p1, p6}, La/h/c/b/g;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    iget-object v3, p0, La/h/g/e$d;->a:Landroid/graphics/Typeface;

    goto/16 :goto_4

    :cond_6
    new-instance v1, La/h/g/b;

    invoke-direct {v1, p0, p1, p4, v2}, La/h/g/b;-><init>(Landroid/content/Context;La/h/g/a;ILjava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    :try_start_0
    sget-object p0, La/h/g/e;->b:La/h/g/f;

    invoke-virtual {p0, v1, p7}, La/h/g/f;->b(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/h/g/e$d;

    iget-object v3, p0, La/h/g/e$d;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :cond_7
    if-nez p5, :cond_8

    move-object p0, v3

    goto :goto_3

    :cond_8
    new-instance p0, La/h/g/c;

    invoke-direct {p0, p5, p6}, La/h/g/c;-><init>(La/h/c/b/g;Landroid/os/Handler;)V

    :goto_3
    sget-object p7, La/h/g/e;->c:Ljava/lang/Object;

    monitor-enter p7

    :try_start_1
    sget-object p1, La/h/g/e;->d:La/e/h;

    .line 7
    invoke-virtual {p1, v2, v3}, La/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 8
    check-cast p5, Ljava/util/ArrayList;

    if-eqz p5, :cond_a

    if-eqz p0, :cond_9

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit p7

    goto :goto_4

    :cond_a
    if-eqz p0, :cond_b

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2, p5}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, La/h/g/e;->b:La/h/g/f;

    new-instance p1, La/h/g/d;

    invoke-direct {p1, v2}, La/h/g/d;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    new-instance p6, La/h/g/g;

    invoke-direct {p6, p0, v1, p5, p1}, La/h/g/g;-><init>(La/h/g/f;Ljava/util/concurrent/Callable;Landroid/os/Handler;La/h/g/f$c;)V

    invoke-virtual {p0, p6}, La/h/g/f;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 11
    :cond_c
    sget-object p7, La/h/d/d;->a:La/h/d/j;

    check-cast p1, La/h/c/b/c;

    invoke-virtual {p7, p0, p1, p2, p4}, La/h/d/j;->a(Landroid/content/Context;La/h/c/b/c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz p5, :cond_e

    if-eqz v3, :cond_d

    invoke-virtual {p5, v3, p6}, La/h/c/b/g;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_4

    :cond_d
    const/4 p0, -0x3

    invoke-virtual {p5, p0, p6}, La/h/c/b/g;->a(ILandroid/os/Handler;)V

    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    sget-object p0, La/h/d/d;->b:La/e/f;

    invoke-static {p2, p3, p4}, La/h/d/d;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, La/e/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v3
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, La/h/d/d;->a:La/h/d/j;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, La/h/d/j;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, La/h/d/d;->c(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, La/h/d/d;->b:La/e/f;

    invoke-virtual {p2, p1, p0}, La/e/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
