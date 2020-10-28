.class public abstract La/f/b/h/l/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/f/b/h/l/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/f/b/h/l/o$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:La/f/b/h/d;

.field public c:La/f/b/h/l/l;

.field public d:La/f/b/h/d$a;

.field public e:La/f/b/h/l/g;

.field public f:I

.field public g:Z

.field public h:La/f/b/h/l/f;

.field public i:La/f/b/h/l/f;

.field public j:La/f/b/h/l/o$a;


# direct methods
.method public constructor <init>(La/f/b/h/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/f/b/h/l/g;

    invoke-direct {v0, p0}, La/f/b/h/l/g;-><init>(La/f/b/h/l/o;)V

    iput-object v0, p0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    const/4 v0, 0x0

    iput v0, p0, La/f/b/h/l/o;->f:I

    iput-boolean v0, p0, La/f/b/h/l/o;->g:Z

    new-instance v0, La/f/b/h/l/f;

    invoke-direct {v0, p0}, La/f/b/h/l/f;-><init>(La/f/b/h/l/o;)V

    iput-object v0, p0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    new-instance v0, La/f/b/h/l/f;

    invoke-direct {v0, p0}, La/f/b/h/l/f;-><init>(La/f/b/h/l/o;)V

    iput-object v0, p0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    sget-object v0, La/f/b/h/l/o$a;->b:La/f/b/h/l/o$a;

    iput-object v0, p0, La/f/b/h/l/o;->j:La/f/b/h/l/o$a;

    iput-object p1, p0, La/f/b/h/l/o;->b:La/f/b/h/d;

    return-void
.end method


# virtual methods
.method public a(La/f/b/h/l/d;)V
    .locals 0

    return-void
.end method

.method public final b(La/f/b/h/l/f;La/f/b/h/l/f;I)V
    .locals 1

    iget-object v0, p1, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, La/f/b/h/l/f;->f:I

    iget-object p2, p2, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(La/f/b/h/l/f;La/f/b/h/l/f;ILa/f/b/h/l/g;)V
    .locals 2

    iget-object v0, p1, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, La/f/b/h/l/f;->l:Ljava/util/List;

    iget-object v1, p0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, La/f/b/h/l/f;->h:I

    iput-object p4, p1, La/f/b/h/l/f;->i:La/f/b/h/l/g;

    iget-object p2, p2, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, La/f/b/h/l/o;->b:La/f/b/h/d;

    iget v0, p2, La/f/b/h/d;->q:I

    iget p2, p2, La/f/b/h/d;->p:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p2, p0, La/f/b/h/l/o;->b:La/f/b/h/d;

    iget v0, p2, La/f/b/h/d;->t:I

    iget p2, p2, La/f/b/h/d;->s:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    :goto_0
    move p1, p2

    :cond_3
    return p1
.end method

.method public final h(La/f/b/h/c;)La/f/b/h/l/f;
    .locals 3

    iget-object p1, p1, La/f/b/h/c;->f:La/f/b/h/c;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, La/f/b/h/c;->d:La/f/b/h/d;

    iget-object p1, p1, La/f/b/h/c;->e:La/f/b/h/c$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, p1, La/f/b/h/l/m;->k:La/f/b/h/l/f;

    goto :goto_2

    :cond_2
    iget-object p1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    goto :goto_0

    :cond_3
    iget-object p1, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    :goto_0
    iget-object v0, p1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    goto :goto_2

    :cond_4
    iget-object p1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    goto :goto_1

    :cond_5
    iget-object p1, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    :goto_1
    iget-object v0, p1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    :goto_2
    return-object v0
.end method

.method public final i(La/f/b/h/c;I)La/f/b/h/l/f;
    .locals 2

    iget-object p1, p1, La/f/b/h/c;->f:La/f/b/h/c;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, La/f/b/h/c;->d:La/f/b/h/d;

    if-nez p2, :cond_1

    iget-object p2, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    goto :goto_0

    :cond_1
    iget-object p2, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    :goto_0
    iget-object p1, p1, La/f/b/h/c;->e:La/f/b/h/c$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    goto :goto_1

    :cond_3
    iget-object v0, p2, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    :goto_1
    return-object v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v1, v0, La/f/b/h/l/f;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, La/f/b/h/l/f;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public l(La/f/b/h/c;La/f/b/h/c;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p1}, La/f/b/h/l/o;->h(La/f/b/h/c;)La/f/b/h/l/f;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, La/f/b/h/l/o;->h(La/f/b/h/c;)La/f/b/h/l/f;

    move-result-object v4

    iget-boolean v5, v2, La/f/b/h/l/f;->j:Z

    if-eqz v5, :cond_f

    iget-boolean v5, v4, La/f/b/h/l/f;->j:Z

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v5, v2, La/f/b/h/l/f;->g:I

    invoke-virtual/range {p1 .. p1}, La/f/b/h/c;->d()I

    move-result v6

    add-int/2addr v6, v5

    iget v5, v4, La/f/b/h/l/f;->g:I

    invoke-virtual/range {p2 .. p2}, La/f/b/h/c;->d()I

    move-result v3

    sub-int/2addr v5, v3

    sub-int v3, v5, v6

    iget-object v7, v0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v8, v7, La/f/b/h/l/f;->j:Z

    const/high16 v9, 0x3f000000    # 0.5f

    if-nez v8, :cond_a

    iget-object v8, v0, La/f/b/h/l/o;->d:La/f/b/h/d$a;

    sget-object v10, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    if-ne v8, v10, :cond_a

    .line 1
    iget v8, v0, La/f/b/h/l/o;->a:I

    if-eqz v8, :cond_9

    const/4 v11, 0x1

    if-eq v8, v11, :cond_8

    const/4 v12, 0x2

    if-eq v8, v12, :cond_5

    const/4 v12, 0x3

    if-eq v8, v12, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v8, v0, La/f/b/h/l/o;->b:La/f/b/h/d;

    iget-object v13, v8, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v14, v13, La/f/b/h/l/o;->d:La/f/b/h/d$a;

    if-ne v14, v10, :cond_2

    iget v14, v13, La/f/b/h/l/o;->a:I

    if-ne v14, v12, :cond_2

    iget-object v14, v8, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v15, v14, La/f/b/h/l/o;->d:La/f/b/h/d$a;

    if-ne v15, v10, :cond_2

    iget v10, v14, La/f/b/h/l/o;->a:I

    if-ne v10, v12, :cond_2

    goto :goto_4

    :cond_2
    if-nez v1, :cond_3

    iget-object v13, v8, La/f/b/h/d;->e:La/f/b/h/l/m;

    :cond_3
    iget-object v10, v13, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v12, v10, La/f/b/h/l/f;->j:Z

    if-eqz v12, :cond_a

    .line 2
    iget v8, v8, La/f/b/h/d;->T:F

    if-ne v1, v11, :cond_4

    .line 3
    iget v10, v10, La/f/b/h/l/f;->g:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    float-to-int v8, v10

    goto :goto_3

    :cond_4
    iget v10, v10, La/f/b/h/l/f;->g:I

    int-to-float v10, v10

    mul-float v8, v8, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_3

    :cond_5
    iget-object v8, v0, La/f/b/h/l/o;->b:La/f/b/h/d;

    .line 4
    iget-object v10, v8, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v10, :cond_a

    if-nez v1, :cond_6

    .line 5
    iget-object v10, v10, La/f/b/h/d;->d:La/f/b/h/l/k;

    goto :goto_0

    :cond_6
    iget-object v10, v10, La/f/b/h/d;->e:La/f/b/h/l/m;

    :goto_0
    iget-object v10, v10, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v11, v10, La/f/b/h/l/f;->j:Z

    if-eqz v11, :cond_a

    if-nez v1, :cond_7

    iget v8, v8, La/f/b/h/d;->r:F

    goto :goto_1

    :cond_7
    iget v8, v8, La/f/b/h/d;->u:F

    :goto_1
    iget v10, v10, La/f/b/h/l/f;->g:I

    int-to-float v10, v10

    mul-float v10, v10, v8

    add-float/2addr v10, v9

    float-to-int v8, v10

    goto :goto_2

    :cond_8
    iget v7, v7, La/f/b/h/l/g;->m:I

    invoke-virtual {v0, v7, v1}, La/f/b/h/l/o;->g(II)I

    move-result v7

    iget-object v8, v0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v16, v8

    move v8, v7

    move-object/from16 v7, v16

    goto :goto_3

    :cond_9
    move v8, v3

    :goto_2
    invoke-virtual {v0, v8, v1}, La/f/b/h/l/o;->g(II)I

    move-result v8

    :goto_3
    invoke-virtual {v7, v8}, La/f/b/h/l/g;->c(I)V

    .line 6
    :cond_a
    :goto_4
    iget-object v7, v0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v8, v7, La/f/b/h/l/f;->j:Z

    if-nez v8, :cond_b

    return-void

    :cond_b
    iget v7, v7, La/f/b/h/l/f;->g:I

    if-ne v7, v3, :cond_c

    iget-object v1, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    invoke-virtual {v1, v6}, La/f/b/h/l/f;->c(I)V

    iget-object v1, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    invoke-virtual {v1, v5}, La/f/b/h/l/f;->c(I)V

    return-void

    :cond_c
    if-nez v1, :cond_d

    iget-object v1, v0, La/f/b/h/l/o;->b:La/f/b/h/d;

    .line 7
    iget v1, v1, La/f/b/h/d;->a0:F

    goto :goto_5

    .line 8
    :cond_d
    iget-object v1, v0, La/f/b/h/l/o;->b:La/f/b/h/d;

    .line 9
    iget v1, v1, La/f/b/h/d;->b0:F

    :goto_5
    if-ne v2, v4, :cond_e

    .line 10
    iget v6, v2, La/f/b/h/l/f;->g:I

    iget v5, v4, La/f/b/h/l/f;->g:I

    const/high16 v1, 0x3f000000    # 0.5f

    :cond_e
    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    iget-object v2, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    int-to-float v3, v6

    add-float/2addr v3, v9

    int-to-float v4, v5

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    float-to-int v1, v4

    invoke-virtual {v2, v1}, La/f/b/h/l/f;->c(I)V

    iget-object v1, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-object v2, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v2, v2, La/f/b/h/l/f;->g:I

    iget-object v3, v0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget v3, v3, La/f/b/h/l/f;->g:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, La/f/b/h/l/f;->c(I)V

    :cond_f
    :goto_6
    return-void
.end method
