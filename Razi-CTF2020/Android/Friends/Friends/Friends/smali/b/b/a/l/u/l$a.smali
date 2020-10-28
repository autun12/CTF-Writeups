.class public Lb/b/a/l/u/l$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/i$d;

.field public final b:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "Lb/b/a/l/u/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lb/b/a/l/u/i$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/u/l$a$a;

    invoke-direct {v0, p0}, Lb/b/a/l/u/l$a$a;-><init>(Lb/b/a/l/u/l$a;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lb/b/a/r/k/a;->a(ILb/b/a/r/k/a$b;)La/h/i/c;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/l/u/l$a;->b:La/h/i/c;

    iput-object p1, p0, Lb/b/a/l/u/l$a;->a:Lb/b/a/l/u/i$d;

    return-void
.end method
