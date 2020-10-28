.class public final Lb/b/a/l/w/c/s$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/c0/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/t/m;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lb/b/a/l/u/c0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
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
    iput-object p3, p0, Lb/b/a/l/w/c/s$b;->a:Lb/b/a/l/u/c0/b;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb/b/a/l/w/c/s$b;->b:Ljava/util/List;

    new-instance p2, Lb/b/a/l/t/m;

    invoke-direct {p2, p1}, Lb/b/a/l/t/m;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lb/b/a/l/w/c/s$b;->c:Lb/b/a/l/t/m;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/c/s$b;->c:Lb/b/a/l/t/m;

    invoke-virtual {v0}, Lb/b/a/l/t/m;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4

    iget-object v0, p0, Lb/b/a/l/w/c/s$b;->b:Ljava/util/List;

    iget-object v1, p0, Lb/b/a/l/w/c/s$b;->c:Lb/b/a/l/t/m;

    iget-object v2, p0, Lb/b/a/l/w/c/s$b;->a:Lb/b/a/l/u/c0/b;

    .line 1
    new-instance v3, Lb/b/a/l/h;

    invoke-direct {v3, v1, v2}, Lb/b/a/l/h;-><init>(Lb/b/a/l/t/m;Lb/b/a/l/u/c0/b;)V

    invoke-static {v0, v3}, La/h/b/f;->I(Ljava/util/List;Lb/b/a/l/l;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 4

    iget-object v0, p0, Lb/b/a/l/w/c/s$b;->b:Ljava/util/List;

    iget-object v1, p0, Lb/b/a/l/w/c/s$b;->c:Lb/b/a/l/t/m;

    iget-object v2, p0, Lb/b/a/l/w/c/s$b;->a:Lb/b/a/l/u/c0/b;

    .line 1
    new-instance v3, Lb/b/a/l/j;

    invoke-direct {v3, v1, v2}, Lb/b/a/l/j;-><init>(Lb/b/a/l/t/m;Lb/b/a/l/u/c0/b;)V

    invoke-static {v0, v3}, La/h/b/f;->B(Ljava/util/List;Lb/b/a/l/k;)I

    move-result v0

    return v0
.end method
