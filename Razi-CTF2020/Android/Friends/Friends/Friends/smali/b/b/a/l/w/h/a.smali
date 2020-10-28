.class public Lb/b/a/l/w/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/w/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/w/h/e<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap$CompressFormat;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/b/a/l/w/h/a;->a:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lb/b/a/l/w/h/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/u/w;Lb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/w<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lb/b/a/l/o;",
            ")",
            "Lb/b/a/l/u/w<",
            "[B>;"
        }
    .end annotation

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lb/b/a/l/w/h/a;->a:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lb/b/a/l/w/h/a;->b:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, Lb/b/a/l/u/w;->e()V

    new-instance p1, Lb/b/a/l/w/d/b;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/l/w/d/b;-><init>([B)V

    return-object p1
.end method
