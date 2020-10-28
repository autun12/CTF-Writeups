.class public final Lb/b/a/l/w/c/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/w/c/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/w/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lb/b/a/l/t/k;

.field public final b:Lb/b/a/l/u/c0/b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lb/b/a/l/u/c0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lb/b/a/l/u/c0/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p3, p0, Lb/b/a/l/w/c/s$a;->b:Lb/b/a/l/u/c0/b;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb/b/a/l/w/c/s$a;->c:Ljava/util/List;

    new-instance p2, Lb/b/a/l/t/k;

    invoke-direct {p2, p1, p3}, Lb/b/a/l/t/k;-><init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V

    iput-object p2, p0, Lb/b/a/l/w/c/s$a;->a:Lb/b/a/l/t/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/c/s$a;->a:Lb/b/a/l/t/k;

    invoke-virtual {v0}, Lb/b/a/l/t/k;->c()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    iget-object v0, p0, Lb/b/a/l/w/c/s$a;->c:Ljava/util/List;

    iget-object v1, p0, Lb/b/a/l/w/c/s$a;->a:Lb/b/a/l/t/k;

    invoke-virtual {v1}, Lb/b/a/l/t/k;->c()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/l/w/c/s$a;->b:Lb/b/a/l/u/c0/b;

    invoke-static {v0, v1, v2}, La/h/b/f;->H(Ljava/util/List;Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/c/s$a;->a:Lb/b/a/l/t/k;

    .line 1
    iget-object v0, v0, Lb/b/a/l/t/k;->a:Lb/b/a/l/w/c/w;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/w/c/w;->b:[B

    array-length v1, v1

    iput v1, v0, Lb/b/a/l/w/c/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lb/b/a/l/w/c/s$a;->c:Ljava/util/List;

    iget-object v1, p0, Lb/b/a/l/w/c/s$a;->a:Lb/b/a/l/t/k;

    invoke-virtual {v1}, Lb/b/a/l/t/k;->c()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/l/w/c/s$a;->b:Lb/b/a/l/u/c0/b;

    invoke-static {v0, v1, v2}, La/h/b/f;->A(Ljava/util/List;Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)I

    move-result v0

    return v0
.end method
