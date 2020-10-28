.class public Lb/b/a/l/u/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/m;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lb/b/a/l/m;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/l/s<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final i:Lb/b/a/l/o;

.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lb/b/a/l/m;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb/b/a/l/m;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/l/s<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/l/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/l/u/o;->b:Ljava/lang/Object;

    const-string p1, "Signature must not be null"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb/b/a/l/u/o;->g:Lb/b/a/l/m;

    iput p3, p0, Lb/b/a/l/u/o;->c:I

    iput p4, p0, Lb/b/a/l/u/o;->d:I

    .line 5
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lb/b/a/l/u/o;->h:Ljava/util/Map;

    const-string p1, "Resource class must not be null"

    .line 7
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p6, p0, Lb/b/a/l/u/o;->e:Ljava/lang/Class;

    const-string p1, "Transcode class must not be null"

    .line 9
    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object p7, p0, Lb/b/a/l/u/o;->f:Ljava/lang/Class;

    .line 11
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object p8, p0, Lb/b/a/l/u/o;->i:Lb/b/a/l/o;

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lb/b/a/l/u/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/l/u/o;

    iget-object v0, p0, Lb/b/a/l/u/o;->b:Ljava/lang/Object;

    iget-object v2, p1, Lb/b/a/l/u/o;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/o;->g:Lb/b/a/l/m;

    iget-object v2, p1, Lb/b/a/l/u/o;->g:Lb/b/a/l/m;

    invoke-interface {v0, v2}, Lb/b/a/l/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/l/u/o;->d:I

    iget v2, p1, Lb/b/a/l/u/o;->d:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lb/b/a/l/u/o;->c:I

    iget v2, p1, Lb/b/a/l/u/o;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/o;->h:Ljava/util/Map;

    iget-object v2, p1, Lb/b/a/l/u/o;->h:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/o;->e:Ljava/lang/Class;

    iget-object v2, p1, Lb/b/a/l/u/o;->e:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/o;->f:Ljava/lang/Class;

    iget-object v2, p1, Lb/b/a/l/u/o;->f:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/o;->i:Lb/b/a/l/o;

    iget-object p1, p1, Lb/b/a/l/u/o;->i:Lb/b/a/l/o;

    invoke-virtual {v0, p1}, Lb/b/a/l/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lb/b/a/l/u/o;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/l/u/o;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/a/l/u/o;->g:Lb/b/a/l/m;

    invoke-interface {v1}, Lb/b/a/l/m;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lb/b/a/l/u/o;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lb/b/a/l/u/o;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb/b/a/l/u/o;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/a/l/u/o;->e:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb/b/a/l/u/o;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lb/b/a/l/u/o;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/a/l/u/o;->i:Lb/b/a/l/o;

    invoke-virtual {v1}, Lb/b/a/l/o;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lb/b/a/l/u/o;->j:I

    :cond_0
    iget v0, p0, Lb/b/a/l/u/o;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EngineKey{model="

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/l/u/o;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/a/l/u/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/a/l/u/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/o;->e:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/o;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/o;->g:Lb/b/a/l/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/a/l/u/o;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/o;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/o;->i:Lb/b/a/l/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
