.class public Lb/b/a/l/u/k$b;
.super Lb/b/a/l/u/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/a/l/u/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lb/b/a/l/a;)Z
    .locals 1

    sget-object v0, Lb/b/a/l/a;->d:Lb/b/a/l/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lb/b/a/l/a;->f:Lb/b/a/l/a;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(ZLb/b/a/l/a;Lb/b/a/l/c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
