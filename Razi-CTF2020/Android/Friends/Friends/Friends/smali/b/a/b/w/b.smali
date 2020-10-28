.class public Lb/a/b/w/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/i;


# static fields
.field public static final c:Z


# instance fields
.field public final a:Lb/a/b/w/a;

.field public final b:Lb/a/b/w/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lb/a/b/v;->a:Z

    sput-boolean v0, Lb/a/b/w/b;->c:Z

    return-void
.end method

.method public constructor <init>(Lb/a/b/w/a;)V
    .locals 2

    new-instance v0, Lb/a/b/w/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lb/a/b/w/c;-><init>(I)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/w/b;->a:Lb/a/b/w/a;

    iput-object v0, p0, Lb/a/b/w/b;->b:Lb/a/b/w/c;

    return-void
.end method

.method public static a(Ljava/lang/String;Lb/a/b/o;Lb/a/b/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb/a/b/o<",
            "*>;",
            "Lb/a/b/u;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lb/a/b/o;->l:Lb/a/b/f;

    .line 2
    iget v1, v0, Lb/a/b/f;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 3
    :try_start_0
    iget v5, v0, Lb/a/b/f;->b:I

    add-int/2addr v5, v3

    iput v5, v0, Lb/a/b/f;->b:I

    int-to-float v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v1

    iput v6, v0, Lb/a/b/f;->a:I
    :try_end_0
    .catch Lb/a/b/u; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v5, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v3

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb/a/b/o;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    :try_start_1
    throw p2
    :try_end_1
    .catch Lb/a/b/u; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb/a/b/o;->a(Ljava/lang/String;)V

    throw p2
.end method

.method public static b(Ljava/util/List;Lb/a/b/b$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;",
            "Lb/a/b/b$a;",
            ")",
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/h;

    .line 1
    iget-object v2, v2, Lb/a/b/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p1, Lb/a/b/b$a;->h:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lb/a/b/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/h;

    .line 3
    iget-object v2, p1, Lb/a/b/h;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lb/a/b/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lb/a/b/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lb/a/b/h;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lb/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final c(Lb/a/b/b$a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/b$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lb/a/b/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "If-None-Match"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v1, p1, Lb/a/b/b$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 1
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {p1, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "If-Modified-Since"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final d(Ljava/io/InputStream;I)[B
    .locals 5

    new-instance v0, Lb/a/b/w/i;

    iget-object v1, p0, Lb/a/b/w/b;->b:Lb/a/b/w/c;

    invoke-direct {v0, v1, p2}, Lb/a/b/w/i;-><init>(Lb/a/b/w/c;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lb/a/b/w/b;->b:Lb/a/b/w/c;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lb/a/b/w/c;->a(I)[B

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2, v1, v3}, Lb/a/b/w/i;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lb/a/b/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lb/a/b/w/b;->b:Lb/a/b/w/c;

    invoke-virtual {p1, v2}, Lb/a/b/w/c;->b([B)V

    invoke-virtual {v0}, Lb/a/b/w/i;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lb/a/b/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lb/a/b/w/b;->b:Lb/a/b/w/c;

    invoke-virtual {p1, v2}, Lb/a/b/w/c;->b([B)V

    invoke-virtual {v0}, Lb/a/b/w/i;->close()V

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method public final e(JLb/a/b/o;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb/a/b/o<",
            "*>;[BI)V"
        }
    .end annotation

    sget-boolean v0, Lb/a/b/w/b;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_1

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 1
    iget-object p2, p3, Lb/a/b/o;->l:Lb/a/b/f;

    .line 2
    iget p2, p2, Lb/a/b/f;->b:I

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p1, v0}, Lb/a/b/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public f(Lb/a/b/o;)Lb/a/b/l;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/b/o<",
            "*>;)",
            "Lb/a/b/l;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v0, v8, Lb/a/b/o;->m:Lb/a/b/b$a;

    .line 2
    invoke-virtual {v7, v0}, Lb/a/b/w/b;->c(Lb/a/b/b$a;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v7, Lb/a/b/w/b;->a:Lb/a/b/w/a;

    invoke-virtual {v3, v8, v0}, Lb/a/b/w/a;->a(Lb/a/b/o;Ljava/util/Map;)Lb/a/b/w/e;

    move-result-object v12
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3
    :try_start_1
    iget v14, v12, Lb/a/b/w/e;->a:I

    .line 4
    iget-object v0, v12, Lb/a/b/w/e;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v0, 0x130

    if-ne v14, v0, :cond_1

    .line 5
    :try_start_2
    iget-object v0, v8, Lb/a/b/o;->m:Lb/a/b/b$a;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lb/a/b/l;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v0

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Lb/a/b/l;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_0
    invoke-static {v13, v0}, Lb/a/b/w/b;->b(Ljava/util/List;Lb/a/b/b$a;)Ljava/util/List;

    move-result-object v27

    new-instance v1, Lb/a/b/l;

    const/16 v22, 0x130

    iget-object v0, v0, Lb/a/b/b$a;->a:[B

    const/16 v24, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v25, v3, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lb/a/b/l;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    :try_start_3
    iget-object v0, v12, Lb/a/b/w/e;->d:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_2

    .line 8
    :try_start_4
    iget v1, v12, Lb/a/b/w/e;->c:I

    .line 9
    invoke-virtual {v7, v0, v1}, Lb/a/b/w/b;->d(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    move-object v14, v2

    move-object v2, v12

    move-object/from16 v18, v13

    goto :goto_5

    :cond_2
    :try_start_5
    new-array v0, v11, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    move-object/from16 v20, v0

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lb/a/b/w/b;->e(JLb/a/b/o;[BI)V

    const/16 v0, 0xc8

    if-lt v14, v0, :cond_3

    const/16 v0, 0x12b

    if-gt v14, v0, :cond_3

    new-instance v0, Lb/a/b/l;

    const/16 v16, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    sub-long v17, v1, v9

    move-object v1, v13

    move-object v13, v0

    move-object/from16 v15, v20

    move-object/from16 v19, v1

    :try_start_7
    invoke-direct/range {v13 .. v19}, Lb/a/b/l;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_3
    move-object v1, v13

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v13

    :goto_3
    move-object/from16 v18, v1

    move-object v2, v12

    move-object/from16 v14, v20

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v13

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    move-object/from16 v18, v1

    move-object v14, v2

    move-object v2, v12

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v18, v1

    move-object v14, v2

    :goto_5
    if-eqz v2, :cond_a

    .line 10
    iget v0, v2, Lb/a/b/w/e;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x1

    .line 12
    iget-object v3, v8, Lb/a/b/o;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Unexpected response code %d for %s"

    .line 13
    invoke-static {v2, v1}, Lb/a/b/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_9

    new-instance v1, Lb/a/b/l;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v16, v2, v9

    move-object v12, v1

    move v13, v0

    invoke-direct/range {v12 .. v18}, Lb/a/b/l;-><init>(I[BZJLjava/util/List;)V

    const/16 v2, 0x191

    if-eq v0, v2, :cond_8

    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    goto :goto_7

    :cond_4
    const/16 v2, 0x190

    if-lt v0, v2, :cond_6

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_5

    goto :goto_6

    :cond_5
    new-instance v0, Lb/a/b/e;

    invoke-direct {v0, v1}, Lb/a/b/e;-><init>(Lb/a/b/l;)V

    throw v0

    :cond_6
    :goto_6
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_7

    const/16 v2, 0x257

    if-gt v0, v2, :cond_7

    new-instance v0, Lb/a/b/s;

    invoke-direct {v0, v1}, Lb/a/b/s;-><init>(Lb/a/b/l;)V

    throw v0

    :cond_7
    new-instance v0, Lb/a/b/s;

    invoke-direct {v0, v1}, Lb/a/b/s;-><init>(Lb/a/b/l;)V

    throw v0

    :cond_8
    :goto_7
    new-instance v0, Lb/a/b/a;

    invoke-direct {v0, v1}, Lb/a/b/a;-><init>(Lb/a/b/l;)V

    const-string v1, "auth"

    goto :goto_8

    :cond_9
    new-instance v0, Lb/a/b/k;

    invoke-direct {v0}, Lb/a/b/k;-><init>()V

    const-string v1, "network"

    goto :goto_8

    :cond_a
    new-instance v1, Lb/a/b/m;

    invoke-direct {v1, v0}, Lb/a/b/m;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad URL "

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14
    iget-object v3, v8, Lb/a/b/o;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    new-instance v0, Lb/a/b/t;

    invoke-direct {v0}, Lb/a/b/t;-><init>()V

    const-string v1, "socket"

    :goto_8
    invoke-static {v1, v8, v0}, Lb/a/b/w/b;->a(Ljava/lang/String;Lb/a/b/o;Lb/a/b/u;)V

    goto/16 :goto_0
.end method
