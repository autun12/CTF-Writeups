.class public Lb/b/a/l/t/p/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/t/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/t/p/b$a;,
        Lb/b/a/l/t/p/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/t/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Lb/b/a/l/t/p/d;

.field public d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lb/b/a/l/t/p/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/t/p/b;->b:Landroid/net/Uri;

    iput-object p2, p0, Lb/b/a/l/t/p/b;->c:Lb/b/a/l/t/p/d;

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;Lb/b/a/l/t/p/c;)Lb/b/a/l/t/p/b;
    .locals 3

    invoke-static {p0}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lb/b/a/b;->f:Lb/b/a/l/u/c0/b;

    .line 2
    new-instance v1, Lb/b/a/l/t/p/d;

    invoke-static {p0}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lb/b/a/b;->e:Lb/b/a/f;

    .line 4
    invoke-virtual {v2}, Lb/b/a/f;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lb/b/a/l/t/p/d;-><init>(Ljava/util/List;Lb/b/a/l/t/p/c;Lb/b/a/l/u/c0/b;Landroid/content/ContentResolver;)V

    new-instance p0, Lb/b/a/l/t/p/b;

    invoke-direct {p0, p1, v1}, Lb/b/a/l/t/p/b;-><init>(Landroid/net/Uri;Lb/b/a/l/t/p/d;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/t/p/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public d(Lb/b/a/e;Lb/b/a/l/t/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/e;",
            "Lb/b/a/l/t/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/l/t/p/b;->f()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/l/t/p/b;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, Lb/b/a/l/t/d$a;->f(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find thumbnail file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, p1}, Lb/b/a/l/t/d$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public e()Lb/b/a/l/a;
    .locals 1

    sget-object v0, Lb/b/a/l/a;->b:Lb/b/a/l/a;

    return-object v0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 12

    const-string v0, "ThumbStreamOpener"

    iget-object v1, p0, Lb/b/a/l/t/p/b;->c:Lb/b/a/l/t/p/d;

    iget-object v2, p0, Lb/b/a/l/t/p/b;->b:Landroid/net/Uri;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 2
    :try_start_0
    iget-object v6, v1, Lb/b/a/l/t/p/d;->a:Lb/b/a/l/t/p/c;

    invoke-interface {v6, v2}, Lb/b/a/l/t/p/c;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_9

    :catch_0
    move-exception v7

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    :goto_0
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to query for thumbnail for Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v5

    .line 3
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    move-object v1, v5

    goto :goto_4

    .line 4
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x0

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :try_start_3
    iget-object v1, v1, Lb/b/a/l/t/p/d;->c:Landroid/content/ContentResolver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    const/4 v2, -0x1

    if-eqz v1, :cond_8

    .line 8
    iget-object v3, p0, Lb/b/a/l/t/p/b;->c:Lb/b/a/l/t/p/d;

    iget-object v6, p0, Lb/b/a/l/t/p/b;->b:Landroid/net/Uri;

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_4
    iget-object v7, v3, Lb/b/a/l/t/p/d;->c:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    iget-object v7, v3, Lb/b/a/l/t/p/d;->d:Ljava/util/List;

    iget-object v3, v3, Lb/b/a/l/t/p/d;->b:Lb/b/a/l/u/c0/b;

    invoke-static {v7, v5, v3}, La/h/b/f;->A(Ljava/util/List;Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_9

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    nop

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v3

    goto :goto_5

    :catch_4
    move-exception v3

    :goto_5
    :try_start_6
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to open uri: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    if-eqz v5, :cond_8

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :goto_6
    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_7
    throw v0

    :catch_6
    :cond_8
    :goto_7
    const/4 v0, -0x1

    :cond_9
    :goto_8
    if-eq v0, v2, :cond_a

    .line 10
    new-instance v2, Lb/b/a/l/t/g;

    invoke-direct {v2, v1, v0}, Lb/b/a/l/t/g;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v2

    :cond_a
    return-object v1

    :catch_7
    move-exception v0

    .line 11
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE opening uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/FileNotFoundException;

    throw v0

    :goto_9
    if-eqz v5, :cond_b

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_b
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method
