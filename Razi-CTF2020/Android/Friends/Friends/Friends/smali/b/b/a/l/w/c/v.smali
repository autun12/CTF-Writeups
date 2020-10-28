.class public final Lb/b/a/l/w/c/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/q<",
        "Landroid/os/ParcelFileDescriptor;",
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

    iput-object p1, p0, Lb/b/a/l/w/c/v;->a:Lb/b/a/l/w/c/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 6

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1
    iget-object v0, p0, Lb/b/a/l/w/c/v;->a:Lb/b/a/l/w/c/m;

    .line 2
    new-instance v1, Lb/b/a/l/w/c/s$b;

    iget-object v2, v0, Lb/b/a/l/w/c/m;->d:Ljava/util/List;

    iget-object v3, v0, Lb/b/a/l/w/c/m;->c:Lb/b/a/l/u/c0/b;

    invoke-direct {v1, p1, v2, v3}, Lb/b/a/l/w/c/s$b;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lb/b/a/l/u/c0/b;)V

    sget-object v5, Lb/b/a/l/w/c/m;->k:Lb/b/a/l/w/c/m$b;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lb/b/a/l/w/c/m;->a(Lb/b/a/l/w/c/s;IILb/b/a/l/o;Lb/b/a/l/w/c/m$b;)Lb/b/a/l/u/w;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1
    iget-object p1, p0, Lb/b/a/l/w/c/v;->a:Lb/b/a/l/w/c/m;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lb/b/a/l/t/m;->c()Z

    move-result p1

    return p1
.end method
