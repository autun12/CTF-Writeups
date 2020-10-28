.class public final Lb/b/a/l/w/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/k/a$a;


# instance fields
.field public final a:Lb/b/a/l/u/c0/d;

.field public final b:Lb/b/a/l/u/c0/b;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/g/b;->a:Lb/b/a/l/u/c0/d;

    iput-object p2, p0, Lb/b/a/l/w/g/b;->b:Lb/b/a/l/u/c0/b;

    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/g/b;->b:Lb/b/a/l/u/c0/b;

    if-nez v0, :cond_0

    new-array p1, p1, [B

    return-object p1

    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lb/b/a/l/u/c0/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
