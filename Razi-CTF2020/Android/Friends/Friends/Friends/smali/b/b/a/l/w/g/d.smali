.class public Lb/b/a/l/w/g/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/r<",
        "Lb/b/a/l/w/g/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/o;)Lb/b/a/l/c;
    .locals 0

    sget-object p1, Lb/b/a/l/c;->b:Lb/b/a/l/c;

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/io/File;Lb/b/a/l/o;)Z
    .locals 0

    check-cast p1, Lb/b/a/l/u/w;

    .line 1
    invoke-interface {p1}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/l/w/g/c;

    .line 2
    :try_start_0
    iget-object p1, p1, Lb/b/a/l/w/g/c;->b:Lb/b/a/l/w/g/c$a;

    iget-object p1, p1, Lb/b/a/l/w/g/c$a;->a:Lb/b/a/l/w/g/g;

    .line 3
    iget-object p1, p1, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-interface {p1}, Lb/b/a/k/a;->e()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-static {p1, p2}, Lb/b/a/r/a;->b(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    const-string p3, "GifEncoder"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to encode GIF drawable data"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
