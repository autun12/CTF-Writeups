.class public final Lb/b/a/r/k/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/r/k/a$c;,
        Lb/b/a/r/k/a$d;,
        Lb/b/a/r/k/a$e;,
        Lb/b/a/r/k/a$b;
    }
.end annotation


# static fields
.field public static final a:Lb/b/a/r/k/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/r/k/a$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/r/k/a$a;

    invoke-direct {v0}, Lb/b/a/r/k/a$a;-><init>()V

    sput-object v0, Lb/b/a/r/k/a;->a:Lb/b/a/r/k/a$e;

    return-void
.end method

.method public static a(ILb/b/a/r/k/a$b;)La/h/i/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/b/a/r/k/a$d;",
            ">(I",
            "Lb/b/a/r/k/a$b<",
            "TT;>;)",
            "La/h/i/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La/h/i/e;

    invoke-direct {v0, p0}, La/h/i/e;-><init>(I)V

    .line 1
    sget-object p0, Lb/b/a/r/k/a;->a:Lb/b/a/r/k/a$e;

    .line 2
    new-instance v1, Lb/b/a/r/k/a$c;

    invoke-direct {v1, v0, p1, p0}, Lb/b/a/r/k/a$c;-><init>(La/h/i/c;Lb/b/a/r/k/a$b;Lb/b/a/r/k/a$e;)V

    return-object v1
.end method
