.class public Lb/b/a/l/u/l$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/r/k/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/r/k/a$b<",
        "Lb/b/a/l/u/i<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/l/u/l$a;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/l$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/u/l$a$a;->a:Lb/b/a/l/u/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lb/b/a/l/u/i;

    iget-object v1, p0, Lb/b/a/l/u/l$a$a;->a:Lb/b/a/l/u/l$a;

    iget-object v2, v1, Lb/b/a/l/u/l$a;->a:Lb/b/a/l/u/i$d;

    iget-object v1, v1, Lb/b/a/l/u/l$a;->b:La/h/i/c;

    invoke-direct {v0, v2, v1}, Lb/b/a/l/u/i;-><init>(Lb/b/a/l/u/i$d;La/h/i/c;)V

    return-object v0
.end method
