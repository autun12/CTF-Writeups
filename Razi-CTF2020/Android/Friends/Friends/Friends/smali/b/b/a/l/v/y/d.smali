.class public Lb/b/a/l/v/y/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/y/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/l/v/y/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 2

    check-cast p1, Landroid/net/Uri;

    .line 1
    invoke-static {p2, p3}, La/h/b/f;->L(II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Lb/b/a/l/w/c/b0;->d:Lb/b/a/l/n;

    invoke-virtual {p4, p2}, Lb/b/a/l/o;->c(Lb/b/a/l/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Lb/b/a/l/v/n$a;

    new-instance p3, Lb/b/a/q/b;

    invoke-direct {p3, p1}, Lb/b/a/q/b;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lb/b/a/l/v/y/d;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lb/b/a/l/t/p/b$b;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/a/l/t/p/b$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p4, p1, v0}, Lb/b/a/l/t/p/b;->c(Landroid/content/Context;Landroid/net/Uri;Lb/b/a/l/t/p/c;)Lb/b/a/l/t/p/b;

    move-result-object p1

    .line 5
    invoke-direct {p2, p3, p1}, Lb/b/a/l/v/n$a;-><init>(Lb/b/a/l/m;Lb/b/a/l/t/d;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    .line 1
    invoke-static {p1}, La/h/b/f;->K(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const-string v0, "video"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
