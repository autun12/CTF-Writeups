.class public final Lb/b/a/l/u/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/m;


# instance fields
.field public final b:Lb/b/a/l/m;

.field public final c:Lb/b/a/l/m;


# direct methods
.method public constructor <init>(Lb/b/a/l/m;Lb/b/a/l/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/u/e;->b:Lb/b/a/l/m;

    iput-object p2, p0, Lb/b/a/l/u/e;->c:Lb/b/a/l/m;

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/e;->b:Lb/b/a/l/m;

    invoke-interface {v0, p1}, Lb/b/a/l/m;->b(Ljava/security/MessageDigest;)V

    iget-object v0, p0, Lb/b/a/l/u/e;->c:Lb/b/a/l/m;

    invoke-interface {v0, p1}, Lb/b/a/l/m;->b(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lb/b/a/l/u/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/l/u/e;

    iget-object v0, p0, Lb/b/a/l/u/e;->b:Lb/b/a/l/m;

    iget-object v2, p1, Lb/b/a/l/u/e;->b:Lb/b/a/l/m;

    invoke-interface {v0, v2}, Lb/b/a/l/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/e;->c:Lb/b/a/l/m;

    iget-object p1, p1, Lb/b/a/l/u/e;->c:Lb/b/a/l/m;

    invoke-interface {v0, p1}, Lb/b/a/l/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lb/b/a/l/u/e;->b:Lb/b/a/l/m;

    invoke-interface {v0}, Lb/b/a/l/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/a/l/u/e;->c:Lb/b/a/l/m;

    invoke-interface {v1}, Lb/b/a/l/m;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DataCacheKey{sourceKey="

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/l/u/e;->b:Lb/b/a/l/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/e;->c:Lb/b/a/l/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
