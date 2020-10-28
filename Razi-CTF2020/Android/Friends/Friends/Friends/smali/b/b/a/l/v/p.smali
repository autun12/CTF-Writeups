.class public Lb/b/a/l/v/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/p$a;
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/v/r;

.field public final b:Lb/b/a/l/v/p$a;


# direct methods
.method public constructor <init>(La/h/i/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h/i/c<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lb/b/a/l/v/r;

    invoke-direct {v0, p1}, Lb/b/a/l/v/r;-><init>(La/h/i/c;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/b/a/l/v/p$a;

    invoke-direct {p1}, Lb/b/a/l/v/p$a;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/p;->b:Lb/b/a/l/v/p$a;

    iput-object v0, p0, Lb/b/a/l/v/p;->a:Lb/b/a/l/v/r;

    return-void
.end method
