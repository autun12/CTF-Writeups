.class public Lrazi/apa/ctf/friends/cdf45;
.super La/b/c/h;
.source ""

# interfaces
.implements Lrazi/apa/ctf/friends/fsdfdsc3423qd$a;


# instance fields
.field public o:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "bgjh76nh"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/c/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, La/b/c/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, La/b/c/h;->setContentView(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lrazi/apa/ctf/friends/cdf45;->p:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lrazi/apa/ctf/friends/cdf45;->stringFromJNI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p1, p0, Lrazi/apa/ctf/friends/cdf45;->q:Ljava/lang/String;

    .line 1
    new-instance p1, Lb/a/b/w/b;

    new-instance v0, Lb/a/b/w/f;

    invoke-direct {v0}, Lb/a/b/w/f;-><init>()V

    invoke-direct {p1, v0}, Lb/a/b/w/b;-><init>(Lb/a/b/w/a;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "volley"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lb/a/b/p;

    new-instance v3, Lb/a/b/w/d;

    invoke-direct {v3, v0}, Lb/a/b/w/d;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, p1}, Lb/a/b/p;-><init>(Lb/a/b/b;Lb/a/b/i;)V

    .line 3
    iget-object p1, v2, Lb/a/b/p;->i:Lb/a/b/d;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v0, p1, Lb/a/b/d;->f:Z

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 5
    :cond_0
    iget-object p1, v2, Lb/a/b/p;->h:[Lb/a/b/j;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    .line 6
    iput-boolean v0, v5, Lb/a/b/j;->f:Z

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lb/a/b/d;

    iget-object v0, v2, Lb/a/b/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, v2, Lb/a/b/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, v2, Lb/a/b/p;->e:Lb/a/b/b;

    iget-object v5, v2, Lb/a/b/p;->g:Lb/a/b/r;

    invoke-direct {p1, v0, v3, v4, v5}, Lb/a/b/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lb/a/b/b;Lb/a/b/r;)V

    iput-object p1, v2, Lb/a/b/p;->i:Lb/a/b/d;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object p1, v2, Lb/a/b/p;->h:[Lb/a/b/j;

    array-length p1, p1

    if-ge v1, p1, :cond_3

    new-instance p1, Lb/a/b/j;

    iget-object v0, v2, Lb/a/b/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, v2, Lb/a/b/p;->f:Lb/a/b/i;

    iget-object v4, v2, Lb/a/b/p;->e:Lb/a/b/b;

    iget-object v5, v2, Lb/a/b/p;->g:Lb/a/b/r;

    invoke-direct {p1, v0, v3, v4, v5}, Lb/a/b/j;-><init>(Ljava/util/concurrent/BlockingQueue;Lb/a/b/i;Lb/a/b/b;Lb/a/b/r;)V

    iget-object v0, v2, Lb/a/b/p;->h:[Lb/a/b/j;

    aput-object p1, v0, v1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lb/a/b/w/g;

    const/4 v4, 0x1

    iget-object v5, p0, Lrazi/apa/ctf/friends/cdf45;->q:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lrazi/apa/ctf/friends/cdf45$a;

    invoke-direct {v7, p0}, Lrazi/apa/ctf/friends/cdf45$a;-><init>(Lrazi/apa/ctf/friends/cdf45;)V

    new-instance v8, Lrazi/apa/ctf/friends/cdf45$b;

    invoke-direct {v8, p0}, Lrazi/apa/ctf/friends/cdf45$b;-><init>(Lrazi/apa/ctf/friends/cdf45;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lb/a/b/w/g;-><init>(ILjava/lang/String;Lorg/json/JSONArray;Lb/a/b/q$b;Lb/a/b/q$a;)V

    .line 9
    iput-object v2, p1, Lb/a/b/o;->i:Lb/a/b/p;

    .line 10
    iget-object v0, v2, Lb/a/b/p;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, v2, Lb/a/b/p;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v2, Lb/a/b/p;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lb/a/b/o;->h:Ljava/lang/Integer;

    const-string v0, "add-to-queue"

    .line 13
    invoke-virtual {p1, v0}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p1, Lb/a/b/o;->j:Z

    if-nez v0, :cond_4

    .line 15
    iget-object v0, v2, Lb/a/b/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lb/a/b/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
