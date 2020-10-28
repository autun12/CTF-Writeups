.class public final Lb/b/a/l/w/c/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/q<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/w/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/w/c/d;

    invoke-direct {v0}, Lb/b/a/l/w/c/d;-><init>()V

    iput-object v0, p0, Lb/b/a/l/w/c/h;->a:Lb/b/a/l/w/c/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lb/b/a/l/w/c/h;->a:Lb/b/a/l/w/c/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/b/a/l/w/a;->c(Landroid/graphics/ImageDecoder$Source;IILb/b/a/l/o;)Lb/b/a/l/u/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
