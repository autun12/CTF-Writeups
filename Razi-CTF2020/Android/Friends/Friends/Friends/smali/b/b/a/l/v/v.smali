.class public Lb/b/a/l/v/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/v$a;,
        Lb/b/a/l/v/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lb/b/a/l/v/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/v/v;

    invoke-direct {v0}, Lb/b/a/l/v/v;-><init>()V

    sput-object v0, Lb/b/a/l/v/v;->a:Lb/b/a/l/v/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lb/b/a/l/o;",
            ")",
            "Lb/b/a/l/v/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lb/b/a/l/v/n$a;

    new-instance p3, Lb/b/a/q/b;

    invoke-direct {p3, p1}, Lb/b/a/q/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lb/b/a/l/v/v$b;

    invoke-direct {p4, p1}, Lb/b/a/l/v/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lb/b/a/l/v/n$a;-><init>(Lb/b/a/l/m;Lb/b/a/l/t/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
