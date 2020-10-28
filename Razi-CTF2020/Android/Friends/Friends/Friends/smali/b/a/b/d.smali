.class public Lb/a/b/d;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/d$a;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lb/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lb/a/b/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lb/a/b/b;

.field public final e:Lb/a/b/r;

.field public volatile f:Z

.field public final g:Lb/a/b/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lb/a/b/v;->a:Z

    sput-boolean v0, Lb/a/b/d;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lb/a/b/b;Lb/a/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lb/a/b/o<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lb/a/b/o<",
            "*>;>;",
            "Lb/a/b/b;",
            "Lb/a/b/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/b/d;->f:Z

    iput-object p1, p0, Lb/a/b/d;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lb/a/b/d;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lb/a/b/d;->d:Lb/a/b/b;

    iput-object p4, p0, Lb/a/b/d;->e:Lb/a/b/r;

    new-instance p1, Lb/a/b/d$a;

    invoke-direct {p1, p0}, Lb/a/b/d$a;-><init>(Lb/a/b/d;)V

    iput-object p1, p0, Lb/a/b/d;->g:Lb/a/b/d$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    iget-object v0, p0, Lb/a/b/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/o;

    const-string v1, "cache-queue-take"

    .line 1
    invoke-virtual {v0, v1}, Lb/a/b/o;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/b/o;->h()Z

    iget-object v1, p0, Lb/a/b/d;->d:Lb/a/b/b;

    invoke-virtual {v0}, Lb/a/b/o;->f()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lb/a/b/w/d;

    .line 2
    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lb/a/b/w/d;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/w/d$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lb/a/b/w/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x2

    :try_start_1
    new-instance v9, Lb/a/b/w/d$b;

    new-instance v10, Ljava/io/BufferedInputStream;

    .line 3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-direct {v9, v10, v11, v12}, Lb/a/b/w/d$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v9}, Lb/a/b/w/d$a;->a(Lb/a/b/w/d$b;)Lb/a/b/w/d$a;

    move-result-object v10

    iget-object v11, v10, Lb/a/b/w/d$a;->b:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v3, "%s: key=%s, found=%s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    aput-object v2, v11, v6

    iget-object v10, v10, Lb/a/b/w/d$a;->b:Ljava/lang/String;

    aput-object v10, v11, v8

    invoke-static {v3, v11}, Lb/a/b/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v3, v1, Lb/a/b/w/d;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/w/d$a;

    if-eqz v3, :cond_1

    iget-wide v10, v1, Lb/a/b/w/d;->b:J

    iget-wide v12, v3, Lb/a/b/w/d$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, v1, Lb/a/b/w/d;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 7
    :cond_2
    :try_start_4
    iget-wide v10, v9, Lb/a/b/w/d$b;->b:J

    iget-wide v12, v9, Lb/a/b/w/d$b;->c:J

    sub-long/2addr v10, v12

    .line 8
    invoke-static {v9, v10, v11}, Lb/a/b/w/d;->k(Lb/a/b/w/d$b;J)[B

    move-result-object v10

    invoke-virtual {v3, v10}, Lb/a/b/w/d$a;->b([B)Lb/a/b/b$a;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v3

    :try_start_7
    const-string v9, "%s: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-static {v9, v8}, Lb/a/b/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lb/a/b/w/d;->j(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_0
    monitor-exit v1

    move-object v3, v4

    :goto_1
    if-nez v3, :cond_3

    const-string v1, "cache-miss"

    .line 9
    invoke-virtual {v0, v1}, Lb/a/b/o;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/b/d;->g:Lb/a/b/d$a;

    invoke-static {v1, v0}, Lb/a/b/d$a;->a(Lb/a/b/d$a;Lb/a/b/o;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_2
    iget-object v1, p0, Lb/a/b/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 10
    :cond_3
    iget-wide v1, v3, Lb/a/b/b$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v1, v7

    if-gez v9, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    const-string v1, "cache-hit-expired"

    .line 11
    invoke-virtual {v0, v1}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 12
    iput-object v3, v0, Lb/a/b/o;->m:Lb/a/b/b$a;

    .line 13
    iget-object v1, p0, Lb/a/b/d;->g:Lb/a/b/d$a;

    invoke-static {v1, v0}, Lb/a/b/d$a;->a(Lb/a/b/d$a;Lb/a/b/o;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_5
    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lb/a/b/o;->a(Ljava/lang/String;)V

    new-instance v1, Lb/a/b/l;

    iget-object v9, v3, Lb/a/b/b$a;->a:[B

    iget-object v10, v3, Lb/a/b/b$a;->g:Ljava/util/Map;

    if-nez v10, :cond_6

    move-object v11, v4

    goto :goto_6

    .line 14
    :cond_6
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    new-instance v11, Lb/a/b/h;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Lb/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    :goto_5
    move-object v11, v2

    :goto_6
    const/16 v8, 0xc8

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v7, v1

    .line 15
    invoke-direct/range {v7 .. v14}, Lb/a/b/l;-><init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V

    .line 16
    invoke-virtual {v0, v1}, Lb/a/b/o;->k(Lb/a/b/l;)Lb/a/b/q;

    move-result-object v1

    const-string v2, "cache-hit-parsed"

    invoke-virtual {v0, v2}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 17
    iget-wide v7, v3, Lb/a/b/b$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-nez v5, :cond_b

    .line 18
    :cond_a
    iget-object v2, p0, Lb/a/b/d;->e:Lb/a/b/r;

    goto :goto_7

    :cond_b
    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {v0, v2}, Lb/a/b/o;->a(Ljava/lang/String;)V

    .line 19
    iput-object v3, v0, Lb/a/b/o;->m:Lb/a/b/b$a;

    .line 20
    iput-boolean v6, v1, Lb/a/b/q;->d:Z

    iget-object v2, p0, Lb/a/b/d;->g:Lb/a/b/d$a;

    invoke-static {v2, v0}, Lb/a/b/d$a;->a(Lb/a/b/d$a;Lb/a/b/o;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lb/a/b/d;->e:Lb/a/b/r;

    new-instance v3, Lb/a/b/c;

    invoke-direct {v3, p0, v0}, Lb/a/b/c;-><init>(Lb/a/b/d;Lb/a/b/o;)V

    check-cast v2, Lb/a/b/g;

    invoke-virtual {v2, v0, v1, v3}, Lb/a/b/g;->a(Lb/a/b/o;Lb/a/b/q;Ljava/lang/Runnable;)V

    goto :goto_8

    :goto_7
    check-cast v2, Lb/a/b/g;

    .line 21
    invoke-virtual {v2, v0, v1, v4}, Lb/a/b/g;->a(Lb/a/b/o;Lb/a/b/q;Ljava/lang/Runnable;)V

    :cond_c
    :goto_8
    return-void

    :catchall_1
    move-exception v0

    .line 22
    monitor-exit v1

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public run()V
    .locals 11

    sget-boolean v0, Lb/a/b/d;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lb/a/b/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lb/a/b/d;->d:Lb/a/b/b;

    check-cast v0, Lb/a/b/w/d;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lb/a/b/w/d;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lb/a/b/w/d;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Unable to create cache dir %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lb/a/b/w/d;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lb/a/b/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lb/a/b/w/d;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_3

    :cond_3
    :try_start_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance v8, Lb/a/b/w/d$b;

    new-instance v9, Ljava/io/BufferedInputStream;

    .line 2
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9, v6, v7}, Lb/a/b/w/d$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v8}, Lb/a/b/w/d$a;->a(Lb/a/b/w/d$b;)Lb/a/b/w/d$a;

    move-result-object v9

    iput-wide v6, v9, Lb/a/b/w/d$a;->a:J

    iget-object v6, v9, Lb/a/b/w/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v9}, Lb/a/b/w/d;->e(Ljava/lang/String;Lb/a/b/w/d$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lb/a/b/d;->a()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    iget-boolean v0, p0, Lb/a/b/d;->f:Z

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_4
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lb/a/b/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 5
    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
