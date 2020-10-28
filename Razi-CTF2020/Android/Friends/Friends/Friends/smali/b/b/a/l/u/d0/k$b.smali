.class public final Lb/b/a/l/u/d0/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/r/k/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/d0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:Lb/b/a/r/k/d;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lb/b/a/r/k/d$b;

    invoke-direct {v0}, Lb/b/a/r/k/d$b;-><init>()V

    .line 2
    iput-object v0, p0, Lb/b/a/l/u/d0/k$b;->c:Lb/b/a/r/k/d;

    iput-object p1, p0, Lb/b/a/l/u/d0/k$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/r/k/d;
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/d0/k$b;->c:Lb/b/a/r/k/d;

    return-object v0
.end method
