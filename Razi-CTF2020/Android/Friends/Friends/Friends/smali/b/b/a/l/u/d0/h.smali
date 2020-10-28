.class public Lb/b/a/l/u/d0/h;
.super Lb/b/a/r/g;
.source ""

# interfaces
.implements Lb/b/a/l/u/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/r/g<",
        "Lb/b/a/l/m;",
        "Lb/b/a/l/u/w<",
        "*>;>;",
        "Lb/b/a/l/u/d0/i;"
    }
.end annotation


# instance fields
.field public d:Lb/b/a/l/u/d0/i$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/b/a/r/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/b/a/l/u/w;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lb/b/a/l/u/w;->b()I

    move-result p1

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lb/b/a/l/m;

    check-cast p2, Lb/b/a/l/u/w;

    .line 1
    iget-object p1, p0, Lb/b/a/l/u/d0/h;->d:Lb/b/a/l/u/d0/i$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    check-cast p1, Lb/b/a/l/u/l;

    .line 2
    iget-object p1, p1, Lb/b/a/l/u/l;->e:Lb/b/a/l/u/z;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lb/b/a/l/u/z;->a(Lb/b/a/l/u/w;Z)V

    :cond_0
    return-void
.end method
