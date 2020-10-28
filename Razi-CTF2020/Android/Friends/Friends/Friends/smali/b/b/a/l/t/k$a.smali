.class public final Lb/b/a/l/t/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/t/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/t/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/t/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/c0/b;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/c0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/t/k$a;->a:Lb/b/a/l/u/c0/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lb/b/a/l/t/e;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    .line 1
    new-instance v0, Lb/b/a/l/t/k;

    iget-object v1, p0, Lb/b/a/l/t/k$a;->a:Lb/b/a/l/u/c0/b;

    invoke-direct {v0, p1, v1}, Lb/b/a/l/t/k;-><init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V

    return-object v0
.end method
