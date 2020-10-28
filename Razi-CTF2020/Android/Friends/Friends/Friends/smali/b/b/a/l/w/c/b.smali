.class public Lb/b/a/l/w/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/r<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/c0/d;

.field public final b:Lb/b/a/l/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/r<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/c0/d;",
            "Lb/b/a/l/r<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/c/b;->a:Lb/b/a/l/u/c0/d;

    iput-object p2, p0, Lb/b/a/l/w/c/b;->b:Lb/b/a/l/r;

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/o;)Lb/b/a/l/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/c/b;->b:Lb/b/a/l/r;

    invoke-interface {v0, p1}, Lb/b/a/l/r;->a(Lb/b/a/l/o;)Lb/b/a/l/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/io/File;Lb/b/a/l/o;)Z
    .locals 3

    check-cast p1, Lb/b/a/l/u/w;

    .line 1
    iget-object v0, p0, Lb/b/a/l/w/c/b;->b:Lb/b/a/l/r;

    new-instance v1, Lb/b/a/l/w/c/e;

    invoke-interface {p1}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lb/b/a/l/w/c/b;->a:Lb/b/a/l/u/c0/d;

    invoke-direct {v1, p1, v2}, Lb/b/a/l/w/c/e;-><init>(Landroid/graphics/Bitmap;Lb/b/a/l/u/c0/d;)V

    invoke-interface {v0, v1, p2, p3}, Lb/b/a/l/d;->b(Ljava/lang/Object;Ljava/io/File;Lb/b/a/l/o;)Z

    move-result p1

    return p1
.end method
