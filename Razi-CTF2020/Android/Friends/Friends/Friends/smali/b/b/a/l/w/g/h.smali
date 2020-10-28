.class public final Lb/b/a/l/w/g/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/q<",
        "Lb/b/a/k/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/c0/d;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/c0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/g/h;->a:Lb/b/a/l/u/c0/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 0

    check-cast p1, Lb/b/a/k/a;

    .line 1
    invoke-interface {p1}, Lb/b/a/k/a;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lb/b/a/l/w/g/h;->a:Lb/b/a/l/u/c0/d;

    invoke-static {p1, p2}, Lb/b/a/l/w/c/e;->f(Landroid/graphics/Bitmap;Lb/b/a/l/u/c0/d;)Lb/b/a/l/w/c/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 0

    check-cast p1, Lb/b/a/k/a;

    const/4 p1, 0x1

    return p1
.end method
