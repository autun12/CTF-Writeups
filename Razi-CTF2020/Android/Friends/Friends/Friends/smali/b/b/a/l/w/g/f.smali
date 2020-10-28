.class public Lb/b/a/l/w/g/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/s<",
        "Lb/b/a/l/w/g/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lb/b/a/l/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/a/l/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lb/b/a/l/u/w;II)Lb/b/a/l/u/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/b/a/l/u/w<",
            "Lb/b/a/l/w/g/c;",
            ">;II)",
            "Lb/b/a/l/u/w<",
            "Lb/b/a/l/w/g/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/l/w/g/c;

    invoke-static {p1}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lb/b/a/b;->b:Lb/b/a/l/u/c0/d;

    .line 2
    invoke-virtual {v0}, Lb/b/a/l/w/g/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lb/b/a/l/w/c/e;

    invoke-direct {v3, v2, v1}, Lb/b/a/l/w/c/e;-><init>(Landroid/graphics/Bitmap;Lb/b/a/l/u/c0/d;)V

    iget-object v1, p0, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    invoke-interface {v1, p1, v3, p3, p4}, Lb/b/a/l/s;->a(Landroid/content/Context;Lb/b/a/l/u/w;II)Lb/b/a/l/u/w;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v3}, Lb/b/a/l/w/c/e;->e()V

    :cond_0
    invoke-interface {p1}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    .line 3
    iget-object p4, v0, Lb/b/a/l/w/g/c;->b:Lb/b/a/l/w/g/c$a;

    iget-object p4, p4, Lb/b/a/l/w/g/c$a;->a:Lb/b/a/l/w/g/g;

    invoke-virtual {p4, p3, p1}, Lb/b/a/l/w/g/g;->c(Lb/b/a/l/s;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public b(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    invoke-interface {v0, p1}, Lb/b/a/l/m;->b(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb/b/a/l/w/g/f;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/l/w/g/f;

    iget-object v0, p0, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    iget-object p1, p1, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/g/f;->b:Lb/b/a/l/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
