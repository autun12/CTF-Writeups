.class public Lb/b/a/l/v/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lb/b/a/l/v/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/n<",
            "Lb/b/a/l/v/g;",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http"

    const-string v2, "https"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lb/b/a/l/v/x;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lb/b/a/l/v/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/n<",
            "Lb/b/a/l/v/g;",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/x;->a:Lb/b/a/l/v/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 1

    check-cast p1, Landroid/net/Uri;

    .line 1
    new-instance v0, Lb/b/a/l/v/g;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/b/a/l/v/g;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lb/b/a/l/v/x;->a:Lb/b/a/l/v/n;

    invoke-interface {p1, v0, p2, p3, p4}, Lb/b/a/l/v/n;->a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    .line 1
    sget-object v0, Lb/b/a/l/v/x;->b:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
