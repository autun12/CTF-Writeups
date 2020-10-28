.class public final Lb/b/a/l/v/y/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/y/e$a;,
        Lb/b/a/l/v/y/e$b;,
        Lb/b/a/l/v/y/e$c;,
        Lb/b/a/l/v/y/e$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/b/a/l/v/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/v/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/b/a/l/v/n;Lb/b/a/l/v/n;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/b/a/l/v/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lb/b/a/l/v/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/l/v/y/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/b/a/l/v/y/e;->b:Lb/b/a/l/v/n;

    iput-object p3, p0, Lb/b/a/l/v/y/e;->c:Lb/b/a/l/v/n;

    iput-object p4, p0, Lb/b/a/l/v/y/e;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 11

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    .line 1
    new-instance p1, Lb/b/a/l/v/n$a;

    new-instance v9, Lb/b/a/q/b;

    invoke-direct {v9, v4}, Lb/b/a/q/b;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lb/b/a/l/v/y/e$d;

    iget-object v1, p0, Lb/b/a/l/v/y/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lb/b/a/l/v/y/e;->b:Lb/b/a/l/v/n;

    iget-object v3, p0, Lb/b/a/l/v/y/e;->c:Lb/b/a/l/v/n;

    iget-object v8, p0, Lb/b/a/l/v/y/e;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lb/b/a/l/v/y/e$d;-><init>(Landroid/content/Context;Lb/b/a/l/v/n;Lb/b/a/l/v/n;Landroid/net/Uri;IILb/b/a/l/o;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lb/b/a/l/v/n$a;-><init>(Lb/b/a/l/m;Lb/b/a/l/t/d;)V

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroid/net/Uri;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, La/h/b/f;->K(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
