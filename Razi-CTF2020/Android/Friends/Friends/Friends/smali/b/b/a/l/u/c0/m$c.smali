.class public Lb/b/a/l/u/c0/m$c;
.super Lb/b/a/l/u/c0/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/c0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/l/u/c0/c<",
        "Lb/b/a/l/u/c0/m$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/a/l/u/c0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/l/u/c0/l;
    .locals 1

    .line 1
    new-instance v0, Lb/b/a/l/u/c0/m$b;

    invoke-direct {v0, p0}, Lb/b/a/l/u/c0/m$b;-><init>(Lb/b/a/l/u/c0/m$c;)V

    return-object v0
.end method

.method public d(ILandroid/graphics/Bitmap$Config;)Lb/b/a/l/u/c0/m$b;
    .locals 1

    invoke-virtual {p0}, Lb/b/a/l/u/c0/c;->b()Lb/b/a/l/u/c0/l;

    move-result-object v0

    check-cast v0, Lb/b/a/l/u/c0/m$b;

    .line 1
    iput p1, v0, Lb/b/a/l/u/c0/m$b;->b:I

    iput-object p2, v0, Lb/b/a/l/u/c0/m$b;->c:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
