.class public final Lb/b/a/l/t/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/t/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/t/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/t/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/w/c/w;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/w/c/w;

    invoke-direct {v0, p1, p2}, Lb/b/a/l/w/c/w;-><init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V

    iput-object v0, p0, Lb/b/a/l/t/k;->a:Lb/b/a/l/w/c/w;

    const/high16 p1, 0x500000

    invoke-virtual {v0, p1}, Lb/b/a/l/w/c/w;->mark(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/b/a/l/t/k;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/t/k;->a:Lb/b/a/l/w/c/w;

    invoke-virtual {v0}, Lb/b/a/l/w/c/w;->b()V

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lb/b/a/l/t/k;->a:Lb/b/a/l/w/c/w;

    invoke-virtual {v0}, Lb/b/a/l/w/c/w;->reset()V

    iget-object v0, p0, Lb/b/a/l/t/k;->a:Lb/b/a/l/w/c/w;

    return-object v0
.end method
