.class public Lb/b/a/l/w/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/w;
.implements Lb/b/a/l/u/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/w<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lb/b/a/l/u/s;"
    }
.end annotation


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lb/b/a/l/u/c0/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lb/b/a/l/u/c0/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/l/w/c/e;->b:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb/b/a/l/w/c/e;->c:Lb/b/a/l/u/c0/d;

    return-void
.end method

.method public static f(Landroid/graphics/Bitmap;Lb/b/a/l/u/c0/d;)Lb/b/a/l/w/c/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lb/b/a/l/w/c/e;

    invoke-direct {v0, p0, p1}, Lb/b/a/l/w/c/e;-><init>(Landroid/graphics/Bitmap;Lb/b/a/l/u/c0/d;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/c/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/c/e;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lb/b/a/r/j;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/l/w/c/e;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/c/e;->c:Lb/b/a/l/u/c0/d;

    iget-object v1, p0, Lb/b/a/l/w/c/e;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lb/b/a/l/u/c0/d;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method
