.class public Lb/b/a/l/u/l$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/r/k/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/r/k/a$b<",
        "Lb/b/a/l/u/m<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/l/u/l$b;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/l$b;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/u/l$b$a;->a:Lb/b/a/l/u/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lb/b/a/l/u/m;

    iget-object v0, p0, Lb/b/a/l/u/l$b$a;->a:Lb/b/a/l/u/l$b;

    iget-object v1, v0, Lb/b/a/l/u/l$b;->a:Lb/b/a/l/u/e0/a;

    iget-object v2, v0, Lb/b/a/l/u/l$b;->b:Lb/b/a/l/u/e0/a;

    iget-object v3, v0, Lb/b/a/l/u/l$b;->c:Lb/b/a/l/u/e0/a;

    iget-object v4, v0, Lb/b/a/l/u/l$b;->d:Lb/b/a/l/u/e0/a;

    iget-object v5, v0, Lb/b/a/l/u/l$b;->e:Lb/b/a/l/u/n;

    iget-object v6, v0, Lb/b/a/l/u/l$b;->f:Lb/b/a/l/u/q$a;

    iget-object v7, v0, Lb/b/a/l/u/l$b;->g:La/h/i/c;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lb/b/a/l/u/m;-><init>(Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/n;Lb/b/a/l/u/q$a;La/h/i/c;)V

    return-object v8
.end method
