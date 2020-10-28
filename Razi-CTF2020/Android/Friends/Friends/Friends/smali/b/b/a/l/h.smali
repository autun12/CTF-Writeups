.class public Lb/b/a/l/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/l;


# instance fields
.field public final synthetic a:Lb/b/a/l/t/m;

.field public final synthetic b:Lb/b/a/l/u/c0/b;


# direct methods
.method public constructor <init>(Lb/b/a/l/t/m;Lb/b/a/l/u/c0/b;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/h;->a:Lb/b/a/l/t/m;

    iput-object p2, p0, Lb/b/a/l/h;->b:Lb/b/a/l/u/c0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lb/b/a/l/w/c/w;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lb/b/a/l/h;->a:Lb/b/a/l/t/m;

    invoke-virtual {v3}, Lb/b/a/l/t/m;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lb/b/a/l/h;->b:Lb/b/a/l/u/c0/b;

    invoke-direct {v1, v2, v3}, Lb/b/a/l/w/c/w;-><init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lb/b/a/l/w/c/w;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    iget-object v0, p0, Lb/b/a/l/h;->a:Lb/b/a/l/t/m;

    invoke-virtual {v0}, Lb/b/a/l/t/m;->d()Landroid/os/ParcelFileDescriptor;

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lb/b/a/l/w/c/w;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    iget-object v0, p0, Lb/b/a/l/h;->a:Lb/b/a/l/t/m;

    invoke-virtual {v0}, Lb/b/a/l/t/m;->d()Landroid/os/ParcelFileDescriptor;

    throw p1
.end method
