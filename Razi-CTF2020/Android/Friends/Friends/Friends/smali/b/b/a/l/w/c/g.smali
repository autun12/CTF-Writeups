.class public Lb/b/a/l/w/c/g;
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
.field public final a:Lb/b/a/l/w/c/m;


# direct methods
.method public constructor <init>(Lb/b/a/l/w/c/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/c/g;->a:Lb/b/a/l/w/c/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 7

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1
    sget-object v0, Lb/b/a/r/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lb/b/a/r/a$a;

    invoke-direct {v2, p1}, Lb/b/a/r/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object v1, p0, Lb/b/a/l/w/c/g;->a:Lb/b/a/l/w/c/m;

    .line 3
    sget-object v6, Lb/b/a/l/w/c/m;->k:Lb/b/a/l/w/c/m$b;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lb/b/a/l/w/c/m;->b(Ljava/io/InputStream;IILb/b/a/l/o;Lb/b/a/l/w/c/m$b;)Lb/b/a/l/u/w;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1
    iget-object p1, p0, Lb/b/a/l/w/c/g;->a:Lb/b/a/l/w/c/m;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
