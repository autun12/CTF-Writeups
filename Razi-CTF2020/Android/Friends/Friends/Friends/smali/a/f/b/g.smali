.class public La/f/b/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/f/b/g$a;
    }
.end annotation


# static fields
.field public static n:I = 0x1


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:Z

.field public g:[F

.field public h:[F

.field public i:La/f/b/g$a;

.field public j:[La/f/b/b;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(La/f/b/g$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/f/b/g;->b:I

    iput v0, p0, La/f/b/g;->c:I

    const/4 v1, 0x0

    iput v1, p0, La/f/b/g;->d:I

    iput-boolean v1, p0, La/f/b/g;->f:Z

    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, La/f/b/g;->g:[F

    new-array v2, v2, [F

    iput-object v2, p0, La/f/b/g;->h:[F

    const/16 v2, 0x10

    new-array v2, v2, [La/f/b/b;

    iput-object v2, p0, La/f/b/g;->j:[La/f/b/b;

    iput v1, p0, La/f/b/g;->k:I

    iput v1, p0, La/f/b/g;->l:I

    iput v0, p0, La/f/b/g;->m:I

    iput-object p1, p0, La/f/b/g;->i:La/f/b/g$a;

    return-void
.end method


# virtual methods
.method public final a(La/f/b/b;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/f/b/g;->k:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, La/f/b/g;->j:[La/f/b/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/f/b/g;->j:[La/f/b/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/f/b/b;

    iput-object v0, p0, La/f/b/g;->j:[La/f/b/b;

    :cond_2
    iget-object v0, p0, La/f/b/g;->j:[La/f/b/b;

    iget v1, p0, La/f/b/g;->k:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/f/b/g;->k:I

    return-void
.end method

.method public final b(La/f/b/b;)V
    .locals 4

    iget v0, p0, La/f/b/g;->k:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, La/f/b/g;->j:[La/f/b/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, La/f/b/g;->j:[La/f/b/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, La/f/b/g;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/f/b/g;->k:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()V
    .locals 6

    sget-object v0, La/f/b/g$a;->f:La/f/b/g$a;

    iput-object v0, p0, La/f/b/g;->i:La/f/b/g$a;

    const/4 v0, 0x0

    iput v0, p0, La/f/b/g;->d:I

    const/4 v1, -0x1

    iput v1, p0, La/f/b/g;->b:I

    iput v1, p0, La/f/b/g;->c:I

    const/4 v2, 0x0

    iput v2, p0, La/f/b/g;->e:F

    iput-boolean v0, p0, La/f/b/g;->f:Z

    iput v1, p0, La/f/b/g;->m:I

    iget v1, p0, La/f/b/g;->k:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, La/f/b/g;->j:[La/f/b/b;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, La/f/b/g;->k:I

    iput v0, p0, La/f/b/g;->l:I

    iput-boolean v0, p0, La/f/b/g;->a:Z

    iget-object v0, p0, La/f/b/g;->h:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public d(La/f/b/d;F)V
    .locals 3

    iput p2, p0, La/f/b/g;->e:F

    const/4 p2, 0x1

    iput-boolean p2, p0, La/f/b/g;->f:Z

    const/4 p2, -0x1

    iput p2, p0, La/f/b/g;->m:I

    iget v0, p0, La/f/b/g;->k:I

    iput p2, p0, La/f/b/g;->c:I

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, La/f/b/g;->j:[La/f/b/b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, p2}, La/f/b/b;->k(La/f/b/d;La/f/b/g;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, La/f/b/g;->k:I

    return-void
.end method

.method public final e(La/f/b/d;La/f/b/b;)V
    .locals 4

    iget v0, p0, La/f/b/g;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, La/f/b/g;->j:[La/f/b/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, La/f/b/b;->l(La/f/b/d;La/f/b/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, La/f/b/g;->k:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/f/b/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
