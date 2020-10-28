.class public abstract Lb/b/a/p/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lb/b/a/p/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public A:Z

.field public b:I

.field public c:F

.field public d:Lb/b/a/l/u/k;

.field public e:Lb/b/a/e;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:Lb/b/a/l/m;

.field public n:Z

.field public o:Z

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:I

.field public r:Lb/b/a/l/o;

.field public s:Ljava/util/Map;
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

.field public t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:Landroid/content/res/Resources$Theme;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb/b/a/p/a;->c:F

    sget-object v0, Lb/b/a/l/u/k;->c:Lb/b/a/l/u/k;

    iput-object v0, p0, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    sget-object v0, Lb/b/a/e;->d:Lb/b/a/e;

    iput-object v0, p0, Lb/b/a/p/a;->e:Lb/b/a/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/p/a;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lb/b/a/p/a;->k:I

    iput v1, p0, Lb/b/a/p/a;->l:I

    sget-object v1, Lb/b/a/q/a;->b:Lb/b/a/q/a;

    sget-object v1, Lb/b/a/q/a;->b:Lb/b/a/q/a;

    iput-object v1, p0, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    iput-boolean v0, p0, Lb/b/a/p/a;->o:Z

    new-instance v1, Lb/b/a/l/o;

    invoke-direct {v1}, Lb/b/a/l/o;-><init>()V

    iput-object v1, p0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    new-instance v1, Lb/b/a/r/b;

    invoke-direct {v1}, Lb/b/a/r/b;-><init>()V

    iput-object v1, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lb/b/a/p/a;->t:Ljava/lang/Class;

    iput-boolean v0, p0, Lb/b/a/p/a;->z:Z

    return-void
.end method

.method public static e(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lb/b/a/p/a;)Lb/b/a/p/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/p/a<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/p/a;->a(Lb/b/a/p/a;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lb/b/a/p/a;->c:F

    iput v0, p0, Lb/b/a/p/a;->c:F

    :cond_1
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lb/b/a/p/a;->x:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->x:Z

    :cond_2
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lb/b/a/p/a;->A:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->A:Z

    :cond_3
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    iput-object v0, p0, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    :cond_4
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lb/b/a/p/a;->e:Lb/b/a/e;

    iput-object v0, p0, Lb/b/a/p/a;->e:Lb/b/a/e;

    :cond_5
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lb/b/a/p/a;->g:I

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lb/b/a/p/a;->b:I

    :cond_6
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, Lb/b/a/p/a;->g:I

    iput v0, p0, Lb/b/a/p/a;->g:I

    iput-object v2, p0, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lb/b/a/p/a;->b:I

    :cond_7
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lb/b/a/p/a;->i:I

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lb/b/a/p/a;->b:I

    :cond_8
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lb/b/a/p/a;->i:I

    iput v0, p0, Lb/b/a/p/a;->i:I

    iput-object v2, p0, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lb/b/a/p/a;->b:I

    :cond_9
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lb/b/a/p/a;->j:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->j:Z

    :cond_a
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lb/b/a/p/a;->l:I

    iput v0, p0, Lb/b/a/p/a;->l:I

    iget v0, p1, Lb/b/a/p/a;->k:I

    iput v0, p0, Lb/b/a/p/a;->k:I

    :cond_b
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    iput-object v0, p0, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    :cond_c
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lb/b/a/p/a;->t:Ljava/lang/Class;

    iput-object v0, p0, Lb/b/a/p/a;->t:Ljava/lang/Class;

    :cond_d
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lb/b/a/p/a;->q:I

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lb/b/a/p/a;->b:I

    :cond_e
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lb/b/a/p/a;->q:I

    iput v0, p0, Lb/b/a/p/a;->q:I

    iput-object v2, p0, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lb/b/a/p/a;->b:I

    :cond_f
    iget v0, p1, Lb/b/a/p/a;->b:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lb/b/a/p/a;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lb/b/a/p/a;->v:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lb/b/a/p/a;->o:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->o:Z

    :cond_11
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lb/b/a/p/a;->n:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->n:Z

    :cond_12
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    iget-object v2, p1, Lb/b/a/p/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lb/b/a/p/a;->z:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->z:Z

    :cond_13
    iget v0, p1, Lb/b/a/p/a;->b:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lb/b/a/p/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lb/b/a/p/a;->y:Z

    iput-boolean v0, p0, Lb/b/a/p/a;->y:Z

    :cond_14
    iget-boolean v0, p0, Lb/b/a/p/a;->o:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lb/b/a/p/a;->b:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lb/b/a/p/a;->b:I

    iput-boolean v1, p0, Lb/b/a/p/a;->n:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lb/b/a/p/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/p/a;->z:Z

    :cond_15
    iget v0, p0, Lb/b/a/p/a;->b:I

    iget v1, p1, Lb/b/a/p/a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lb/b/a/p/a;->b:I

    iget-object v0, p0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    iget-object p1, p1, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    invoke-virtual {v0, p1}, Lb/b/a/l/o;->d(Lb/b/a/l/o;)V

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public b()Lb/b/a/p/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/p/a;

    new-instance v1, Lb/b/a/l/o;

    invoke-direct {v1}, Lb/b/a/l/o;-><init>()V

    iput-object v1, v0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    iget-object v2, p0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    invoke-virtual {v1, v2}, Lb/b/a/l/o;->d(Lb/b/a/l/o;)V

    new-instance v1, Lb/b/a/r/b;

    invoke-direct {v1}, Lb/b/a/r/b;-><init>()V

    iput-object v1, v0, Lb/b/a/p/a;->s:Ljava/util/Map;

    iget-object v2, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/b/a/p/a;->u:Z

    iput-boolean v1, v0, Lb/b/a/p/a;->w:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c(Ljava/lang/Class;)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/p/a;->c(Ljava/lang/Class;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/p/a;->t:Ljava/lang/Class;

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lb/b/a/l/u/k;)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/k;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/p/a;->d(Lb/b/a/l/u/k;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lb/b/a/p/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/p/a;

    iget v0, p1, Lb/b/a/p/a;->c:F

    iget v2, p0, Lb/b/a/p/a;->c:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lb/b/a/p/a;->g:I

    iget v2, p1, Lb/b/a/p/a;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lb/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/p/a;->i:I

    iget v2, p1, Lb/b/a/p/a;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lb/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/p/a;->q:I

    iget v2, p1, Lb/b/a/p/a;->q:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lb/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/b/a/p/a;->j:Z

    iget-boolean v2, p1, Lb/b/a/p/a;->j:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lb/b/a/p/a;->k:I

    iget v2, p1, Lb/b/a/p/a;->k:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lb/b/a/p/a;->l:I

    iget v2, p1, Lb/b/a/p/a;->l:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb/b/a/p/a;->n:Z

    iget-boolean v2, p1, Lb/b/a/p/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb/b/a/p/a;->o:Z

    iget-boolean v2, p1, Lb/b/a/p/a;->o:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb/b/a/p/a;->x:Z

    iget-boolean v2, p1, Lb/b/a/p/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb/b/a/p/a;->y:Z

    iget-boolean v2, p1, Lb/b/a/p/a;->y:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    iget-object v2, p1, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->e:Lb/b/a/e;

    iget-object v2, p1, Lb/b/a/p/a;->e:Lb/b/a/e;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    iget-object v2, p1, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    invoke-virtual {v0, v2}, Lb/b/a/l/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    iget-object v2, p1, Lb/b/a/p/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->t:Ljava/lang/Class;

    iget-object v2, p1, Lb/b/a/p/a;->t:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    iget-object v2, p1, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    invoke-static {v0, v2}, Lb/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/p/a;->v:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lb/b/a/p/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lb/b/a/r/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(Lb/b/a/l/w/c/l;Lb/b/a/l/s;)Lb/b/a/p/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/w/c/l;",
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/p/a;->f(Lb/b/a/l/w/c/l;Lb/b/a/l/s;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lb/b/a/l/w/c/l;->f:Lb/b/a/l/n;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0, p1}, Lb/b/a/p/a;->j(Lb/b/a/l/n;Ljava/lang/Object;)Lb/b/a/p/a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lb/b/a/p/a;->m(Lb/b/a/l/s;Z)Lb/b/a/p/a;

    move-result-object p1

    return-object p1
.end method

.method public g(II)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/p/a;->g(II)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lb/b/a/p/a;->l:I

    iput p2, p0, Lb/b/a/p/a;->k:I

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public h(Lb/b/a/e;)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/e;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/p/a;->h(Lb/b/a/e;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/p/a;->e:Lb/b/a/e;

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lb/b/a/p/a;->c:F

    .line 1
    sget-object v1, Lb/b/a/r/j;->a:[C

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 3
    iget v1, p0, Lb/b/a/p/a;->g:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/p/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lb/b/a/p/a;->i:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/p/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lb/b/a/p/a;->q:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/p/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lb/b/a/p/a;->j:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/a/p/a;->k:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/a/p/a;->l:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lb/b/a/p/a;->n:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lb/b/a/p/a;->o:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lb/b/a/p/a;->x:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lb/b/a/p/a;->y:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/p/a;->d:Lb/b/a/l/u/k;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/p/a;->e:Lb/b/a/e;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/p/a;->t:Ljava/lang/Class;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/p/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lb/b/a/r/j;->f(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final i()Lb/b/a/p/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->u:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Lb/b/a/l/n;Ljava/lang/Object;)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/b/a/l/n<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/p/a;->j(Lb/b/a/l/n;Ljava/lang/Object;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/b/a/p/a;->r:Lb/b/a/l/o;

    .line 3
    iget-object v0, v0, Lb/b/a/l/o;->b:La/e/a;

    invoke-virtual {v0, p1, p2}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public k(Lb/b/a/l/m;)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/m;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/p/a;->k(Lb/b/a/l/m;)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/p/a;->m:Lb/b/a/l/m;

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public l(Z)Lb/b/a/p/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/b/a/p/a;->l(Z)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lb/b/a/p/a;->j:Z

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public m(Lb/b/a/l/s;Z)Lb/b/a/p/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/s<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/p/a;->m(Lb/b/a/l/s;Z)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lb/b/a/l/w/c/o;

    invoke-direct {v0, p1, p2}, Lb/b/a/l/w/c/o;-><init>(Lb/b/a/l/s;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lb/b/a/p/a;->n(Ljava/lang/Class;Lb/b/a/l/s;Z)Lb/b/a/p/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lb/b/a/p/a;->n(Ljava/lang/Class;Lb/b/a/l/s;Z)Lb/b/a/p/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lb/b/a/p/a;->n(Ljava/lang/Class;Lb/b/a/l/s;Z)Lb/b/a/p/a;

    const-class v0, Lb/b/a/l/w/g/c;

    new-instance v1, Lb/b/a/l/w/g/f;

    invoke-direct {v1, p1}, Lb/b/a/l/w/g/f;-><init>(Lb/b/a/l/s;)V

    invoke-virtual {p0, v0, v1, p2}, Lb/b/a/p/a;->n(Ljava/lang/Class;Lb/b/a/l/s;Z)Lb/b/a/p/a;

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public n(Ljava/lang/Class;Lb/b/a/l/s;Z)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lb/b/a/l/s<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lb/b/a/p/a;->n(Ljava/lang/Class;Lb/b/a/l/s;Z)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/b/a/p/a;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lb/b/a/p/a;->b:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lb/b/a/p/a;->b:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/b/a/p/a;->o:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lb/b/a/p/a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/p/a;->z:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lb/b/a/p/a;->b:I

    iput-boolean p2, p0, Lb/b/a/p/a;->n:Z

    :cond_1
    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method

.method public o(Z)Lb/b/a/p/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb/b/a/p/a;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/p/a;->b()Lb/b/a/p/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/p/a;->o(Z)Lb/b/a/p/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lb/b/a/p/a;->A:Z

    iget p1, p0, Lb/b/a/p/a;->b:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lb/b/a/p/a;->b:I

    invoke-virtual {p0}, Lb/b/a/p/a;->i()Lb/b/a/p/a;

    return-object p0
.end method
