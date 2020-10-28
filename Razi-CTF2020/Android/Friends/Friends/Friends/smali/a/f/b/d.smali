.class public La/f/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/f/b/d$a;
    }
.end annotation


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8

.field public static r:J


# instance fields
.field public a:Z

.field public b:I

.field public c:La/f/b/d$a;

.field public d:I

.field public e:I

.field public f:[La/f/b/b;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:La/f/b/c;

.field public m:[La/f/b/g;

.field public n:I

.field public o:La/f/b/d$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/f/b/d;->a:Z

    iput v0, p0, La/f/b/d;->b:I

    const/16 v1, 0x20

    iput v1, p0, La/f/b/d;->d:I

    iput v1, p0, La/f/b/d;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, La/f/b/d;->f:[La/f/b/b;

    iput-boolean v0, p0, La/f/b/d;->g:Z

    new-array v2, v1, [Z

    iput-object v2, p0, La/f/b/d;->h:[Z

    const/4 v2, 0x1

    iput v2, p0, La/f/b/d;->i:I

    iput v0, p0, La/f/b/d;->j:I

    iput v1, p0, La/f/b/d;->k:I

    sget v2, La/f/b/d;->q:I

    new-array v2, v2, [La/f/b/g;

    iput-object v2, p0, La/f/b/d;->m:[La/f/b/g;

    iput v0, p0, La/f/b/d;->n:I

    new-array v0, v1, [La/f/b/b;

    iput-object v0, p0, La/f/b/d;->f:[La/f/b/b;

    invoke-virtual {p0}, La/f/b/d;->t()V

    new-instance v0, La/f/b/c;

    invoke-direct {v0}, La/f/b/c;-><init>()V

    iput-object v0, p0, La/f/b/d;->l:La/f/b/c;

    new-instance v1, La/f/b/f;

    invoke-direct {v1, v0}, La/f/b/f;-><init>(La/f/b/c;)V

    iput-object v1, p0, La/f/b/d;->c:La/f/b/d$a;

    new-instance v1, La/f/b/b;

    invoke-direct {v1, v0}, La/f/b/b;-><init>(La/f/b/c;)V

    iput-object v1, p0, La/f/b/d;->o:La/f/b/d$a;

    return-void
.end method


# virtual methods
.method public final a(La/f/b/g$a;Ljava/lang/String;)La/f/b/g;
    .locals 2

    iget-object p2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object p2, p2, La/f/b/c;->c:La/f/b/e;

    invoke-virtual {p2}, La/f/b/e;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/f/b/g;

    if-nez p2, :cond_0

    new-instance p2, La/f/b/g;

    invoke-direct {p2, p1}, La/f/b/g;-><init>(La/f/b/g$a;)V

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, La/f/b/g;->c()V

    .line 2
    :goto_0
    iput-object p1, p2, La/f/b/g;->i:La/f/b/g$a;

    .line 3
    iget p1, p0, La/f/b/d;->n:I

    sget v0, La/f/b/d;->q:I

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    sput v0, La/f/b/d;->q:I

    iget-object p1, p0, La/f/b/d;->m:[La/f/b/g;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La/f/b/g;

    iput-object p1, p0, La/f/b/d;->m:[La/f/b/g;

    :cond_1
    iget-object p1, p0, La/f/b/d;->m:[La/f/b/g;

    iget v0, p0, La/f/b/d;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/f/b/d;->n:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method public b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V
    .locals 6

    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 1
    iget-object p3, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p3, p1, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p6, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, La/f/b/b$a;->j(La/f/b/g;F)V

    goto/16 :goto_2

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    iget-object p4, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p4, p1, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p2, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p5, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p6, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p4, p1, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p2, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    int-to-float p1, p3

    goto :goto_1

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p6, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p5, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    neg-int p1, p7

    :goto_0
    int-to-float p1, p1

    :goto_1
    iput p1, v0, La/f/b/b;->b:F

    goto :goto_2

    :cond_4
    iget-object v2, v0, La/f/b/b;->d:La/f/b/b$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    mul-float v3, v3, p4

    invoke-interface {p1, p5, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    mul-float v1, v1, p4

    invoke-interface {p1, p6, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    iput p2, v0, La/f/b/b;->b:F

    :cond_6
    :goto_2
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 2
    invoke-virtual {v0, p0, p8}, La/f/b/b;->c(La/f/b/d;I)La/f/b/b;

    :cond_7
    invoke-virtual {p0, v0}, La/f/b/d;->c(La/f/b/b;)V

    return-void
.end method

.method public c(La/f/b/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, La/f/b/g$a;->b:La/f/b/g$a;

    iget v3, v0, La/f/b/d;->j:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget v5, v0, La/f/b/d;->k:I

    if-ge v3, v5, :cond_0

    iget v3, v0, La/f/b/d;->i:I

    add-int/2addr v3, v4

    iget v5, v0, La/f/b/d;->e:I

    if-lt v3, v5, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, La/f/b/d;->p()V

    :cond_1
    iget-boolean v3, v1, La/f/b/b;->e:Z

    if-nez v3, :cond_1f

    .line 1
    iget-object v3, v0, La/f/b/d;->f:[La/f/b/b;

    array-length v3, v3

    const/4 v6, -0x1

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_8

    iget-object v7, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v7}, La/f/b/b$a;->k()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    iget-object v9, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v9, v8}, La/f/b/b$a;->d(I)La/f/b/g;

    move-result-object v9

    iget v10, v9, La/f/b/g;->c:I

    if-ne v10, v6, :cond_3

    iget-boolean v10, v9, La/f/b/g;->f:Z

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    iget-object v10, v1, La/f/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, v1, La/f/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_6

    iget-object v9, v1, La/f/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/f/b/g;

    iget-boolean v10, v9, La/f/b/g;->f:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0, v9, v4}, La/f/b/b;->k(La/f/b/d;La/f/b/g;Z)V

    goto :goto_4

    :cond_5
    iget-object v10, v0, La/f/b/d;->f:[La/f/b/b;

    iget v9, v9, La/f/b/g;->c:I

    aget-object v9, v10, v9

    invoke-virtual {v1, v0, v9, v4}, La/f/b/b;->l(La/f/b/d;La/f/b/b;Z)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    iget-object v7, v1, La/f/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    iget-object v3, v1, La/f/b/b;->a:La/f/b/g;

    if-eqz v3, :cond_9

    iget-object v3, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v3}, La/f/b/b$a;->k()I

    move-result v3

    if-nez v3, :cond_9

    iput-boolean v4, v1, La/f/b/b;->e:Z

    iput-boolean v4, v0, La/f/b/d;->a:Z

    .line 2
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, La/f/b/b;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    .line 3
    :cond_a
    iget v3, v1, La/f/b/b;->b:F

    const/4 v7, 0x0

    cmpg-float v8, v3, v7

    if-gez v8, :cond_b

    const/high16 v8, -0x40800000    # -1.0f

    mul-float v3, v3, v8

    iput v3, v1, La/f/b/b;->b:F

    iget-object v3, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v3}, La/f/b/b$a;->i()V

    .line 4
    :cond_b
    iget-object v3, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v3}, La/f/b/b$a;->k()I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v9, v3, :cond_12

    iget-object v5, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v5, v9}, La/f/b/b$a;->a(I)F

    move-result v5

    iget-object v6, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v6, v9}, La/f/b/b$a;->d(I)La/f/b/g;

    move-result-object v6

    iget-object v8, v6, La/f/b/g;->i:La/f/b/g$a;

    if-ne v8, v2, :cond_e

    if-nez v10, :cond_c

    goto :goto_7

    :cond_c
    cmpl-float v8, v12, v5

    if-lez v8, :cond_d

    :goto_7
    invoke-virtual {v1, v6}, La/f/b/b;->h(La/f/b/g;)Z

    move-result v13

    move v12, v5

    move-object v10, v6

    goto :goto_9

    :cond_d
    if-nez v13, :cond_11

    invoke-virtual {v1, v6}, La/f/b/b;->h(La/f/b/g;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v12, v5

    move-object v10, v6

    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    if-nez v10, :cond_11

    cmpg-float v8, v5, v7

    if-gez v8, :cond_11

    if-nez v11, :cond_f

    goto :goto_8

    :cond_f
    cmpl-float v8, v14, v5

    if-lez v8, :cond_10

    :goto_8
    invoke-virtual {v1, v6}, La/f/b/b;->h(La/f/b/g;)Z

    move-result v15

    move v14, v5

    move-object v11, v6

    goto :goto_9

    :cond_10
    if-nez v15, :cond_11

    invoke-virtual {v1, v6}, La/f/b/b;->h(La/f/b/g;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v14, v5

    move-object v11, v6

    const/4 v15, 0x1

    :cond_11
    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/4 v6, -0x1

    goto :goto_6

    :cond_12
    if-eqz v10, :cond_13

    goto :goto_a

    :cond_13
    move-object v10, v11

    :goto_a
    if-nez v10, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    .line 5
    :cond_14
    invoke-virtual {v1, v10}, La/f/b/b;->j(La/f/b/g;)V

    const/4 v3, 0x0

    :goto_b
    iget-object v5, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v5}, La/f/b/b$a;->k()I

    move-result v5

    if-nez v5, :cond_15

    iput-boolean v4, v1, La/f/b/b;->e:Z

    :cond_15
    if-eqz v3, :cond_1b

    .line 6
    iget v3, v0, La/f/b/d;->i:I

    add-int/2addr v3, v4

    iget v5, v0, La/f/b/d;->e:I

    if-lt v3, v5, :cond_16

    invoke-virtual/range {p0 .. p0}, La/f/b/d;->p()V

    :cond_16
    sget-object v3, La/f/b/g$a;->d:La/f/b/g$a;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, La/f/b/d;->a(La/f/b/g$a;Ljava/lang/String;)La/f/b/g;

    move-result-object v3

    iget v5, v0, La/f/b/d;->b:I

    add-int/2addr v5, v4

    iput v5, v0, La/f/b/d;->b:I

    iget v6, v0, La/f/b/d;->i:I

    add-int/2addr v6, v4

    iput v6, v0, La/f/b/d;->i:I

    iput v5, v3, La/f/b/g;->b:I

    iget-object v6, v0, La/f/b/d;->l:La/f/b/c;

    iget-object v6, v6, La/f/b/c;->d:[La/f/b/g;

    aput-object v3, v6, v5

    .line 7
    iput-object v3, v1, La/f/b/b;->a:La/f/b/g;

    iget v5, v0, La/f/b/d;->j:I

    invoke-virtual/range {p0 .. p1}, La/f/b/d;->i(La/f/b/b;)V

    iget v6, v0, La/f/b/d;->j:I

    add-int/2addr v5, v4

    if-ne v6, v5, :cond_1b

    iget-object v5, v0, La/f/b/d;->o:La/f/b/d$a;

    check-cast v5, La/f/b/b;

    .line 8
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v5, La/f/b/b;->a:La/f/b/g;

    iget-object v6, v5, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v6}, La/f/b/b$a;->clear()V

    const/4 v6, 0x0

    :goto_c
    iget-object v8, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v8}, La/f/b/b$a;->k()I

    move-result v8

    if-ge v6, v8, :cond_17

    iget-object v8, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v8, v6}, La/f/b/b$a;->d(I)La/f/b/g;

    move-result-object v8

    iget-object v9, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v9, v6}, La/f/b/b$a;->a(I)F

    move-result v9

    iget-object v10, v5, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v10, v8, v9, v4}, La/f/b/b$a;->c(La/f/b/g;FZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 9
    :cond_17
    iget-object v5, v0, La/f/b/d;->o:La/f/b/d$a;

    invoke-virtual {v0, v5}, La/f/b/d;->s(La/f/b/d$a;)I

    iget v5, v3, La/f/b/g;->c:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1a

    iget-object v5, v1, La/f/b/b;->a:La/f/b/g;

    if-ne v5, v3, :cond_18

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v1, v5, v3}, La/f/b/b;->i([ZLa/f/b/g;)La/f/b/g;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 11
    invoke-virtual {v1, v3}, La/f/b/b;->j(La/f/b/g;)V

    :cond_18
    iget-boolean v3, v1, La/f/b/b;->e:Z

    if-nez v3, :cond_19

    iget-object v3, v1, La/f/b/b;->a:La/f/b/g;

    invoke-virtual {v3, v0, v1}, La/f/b/g;->e(La/f/b/d;La/f/b/b;)V

    :cond_19
    iget-object v3, v0, La/f/b/d;->l:La/f/b/c;

    iget-object v3, v3, La/f/b/c;->b:La/f/b/e;

    invoke-virtual {v3, v1}, La/f/b/e;->b(Ljava/lang/Object;)Z

    iget v3, v0, La/f/b/d;->j:I

    sub-int/2addr v3, v4

    iput v3, v0, La/f/b/d;->j:I

    :cond_1a
    const/4 v3, 0x1

    goto :goto_d

    :cond_1b
    const/4 v3, 0x0

    .line 12
    :goto_d
    iget-object v5, v1, La/f/b/b;->a:La/f/b/g;

    if-eqz v5, :cond_1c

    iget-object v5, v5, La/f/b/g;->i:La/f/b/g$a;

    if-eq v5, v2, :cond_1d

    iget v2, v1, La/f/b/b;->b:F

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_e
    if-nez v4, :cond_1e

    return-void

    :cond_1e
    move v5, v3

    goto :goto_f

    :cond_1f
    const/4 v5, 0x0

    :goto_f
    if-nez v5, :cond_20

    .line 13
    invoke-virtual/range {p0 .. p1}, La/f/b/d;->i(La/f/b/b;)V

    :cond_20
    return-void
.end method

.method public d(La/f/b/g;La/f/b/g;II)La/f/b/b;
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, La/f/b/g;->f:Z

    if-eqz v1, :cond_0

    iget v1, p1, La/f/b/g;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, La/f/b/g;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, La/f/b/g;->d(La/f/b/d;F)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 1
    iput p3, v1, La/f/b/b;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v2, p1, p3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p2, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v2, p1, v3}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object p1, v1, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, p2, p3}, La/f/b/b$a;->j(La/f/b/g;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    .line 2
    invoke-virtual {v1, p0, p4}, La/f/b/b;->c(La/f/b/d;I)La/f/b/b;

    :cond_4
    invoke-virtual {p0, v1}, La/f/b/d;->c(La/f/b/b;)V

    return-object v1
.end method

.method public e(La/f/b/g;I)V
    .locals 4

    iget v0, p1, La/f/b/g;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, La/f/b/g;->d(La/f/b/d;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, La/f/b/d;->b:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object p2, p2, La/f/b/c;->d:[La/f/b/g;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_5

    iget-object v3, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v0, v3, v0

    iget-boolean v3, v0, La/f/b/b;->e:Z

    if-eqz v3, :cond_2

    :goto_1
    int-to-float p1, p2

    iput p1, v0, La/f/b/b;->b:F

    goto :goto_4

    :cond_2
    iget-object v3, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v3}, La/f/b/b$a;->k()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, v0, La/f/b/b;->e:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 1
    iput p2, v0, La/f/b/b;->b:F

    iget-object p2, v0, La/f/b/b;->d:La/f/b/b$a;

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    int-to-float p2, p2

    iput p2, v0, La/f/b/b;->b:F

    iget-object p2, v0, La/f/b/b;->d:La/f/b/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    invoke-interface {p2, p1, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    goto :goto_3

    .line 2
    :cond_5
    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    .line 3
    iput-object p1, v0, La/f/b/b;->a:La/f/b/g;

    int-to-float p2, p2

    iput p2, p1, La/f/b/g;->e:F

    iput p2, v0, La/f/b/b;->b:F

    iput-boolean v2, v0, La/f/b/b;->e:Z

    .line 4
    :goto_3
    invoke-virtual {p0, v0}, La/f/b/d;->c(La/f/b/b;)V

    :goto_4
    return-void
.end method

.method public f(La/f/b/g;La/f/b/g;II)V
    .locals 3

    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    invoke-virtual {p0}, La/f/b/d;->n()La/f/b/g;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, La/f/b/g;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, La/f/b/b;->e(La/f/b/g;La/f/b/g;La/f/b/g;I)La/f/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, v1}, La/f/b/b$a;->e(La/f/b/g;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p4, p2}, La/f/b/d;->k(ILjava/lang/String;)La/f/b/g;

    move-result-object p2

    .line 2
    iget-object p3, v0, La/f/b/b;->d:La/f/b/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, La/f/b/b$a;->j(La/f/b/g;F)V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, La/f/b/d;->c(La/f/b/b;)V

    return-void
.end method

.method public g(La/f/b/g;La/f/b/g;II)V
    .locals 3

    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    invoke-virtual {p0}, La/f/b/d;->n()La/f/b/g;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, La/f/b/g;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, La/f/b/b;->f(La/f/b/g;La/f/b/g;La/f/b/g;I)La/f/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {p1, v1}, La/f/b/b$a;->e(La/f/b/g;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p4, p2}, La/f/b/d;->k(ILjava/lang/String;)La/f/b/g;

    move-result-object p2

    .line 2
    iget-object p3, v0, La/f/b/b;->d:La/f/b/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, La/f/b/b$a;->j(La/f/b/g;F)V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, La/f/b/d;->c(La/f/b/b;)V

    return-void
.end method

.method public h(La/f/b/g;La/f/b/g;La/f/b/g;La/f/b/g;FI)V
    .locals 7

    invoke-virtual {p0}, La/f/b/d;->m()La/f/b/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, La/f/b/b;->d(La/f/b/g;La/f/b/g;La/f/b/g;La/f/b/g;F)La/f/b/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, La/f/b/b;->c(La/f/b/d;I)La/f/b/b;

    :cond_0
    invoke-virtual {p0, v6}, La/f/b/d;->c(La/f/b/b;)V

    return-void
.end method

.method public final i(La/f/b/b;)V
    .locals 7

    iget-boolean v0, p1, La/f/b/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, La/f/b/b;->a:La/f/b/g;

    iget p1, p1, La/f/b/b;->b:F

    invoke-virtual {v0, p0, p1}, La/f/b/g;->d(La/f/b/d;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/f/b/d;->f:[La/f/b/b;

    iget v1, p0, La/f/b/d;->j:I

    aput-object p1, v0, v1

    iget-object v0, p1, La/f/b/b;->a:La/f/b/g;

    iput v1, v0, La/f/b/g;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/f/b/d;->j:I

    invoke-virtual {v0, p0, p1}, La/f/b/g;->e(La/f/b/d;La/f/b/b;)V

    :goto_0
    iget-boolean p1, p0, La/f/b/d;->a:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/f/b/d;->j:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    aget-object v2, v1, v0

    iget-boolean v2, v2, La/f/b/b;->e:Z

    if-eqz v2, :cond_5

    aget-object v1, v1, v0

    iget-object v2, v1, La/f/b/b;->a:La/f/b/g;

    iget v3, v1, La/f/b/b;->b:F

    invoke-virtual {v2, p0, v3}, La/f/b/g;->d(La/f/b/d;F)V

    iget-object v2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v2, v2, La/f/b/c;->b:La/f/b/e;

    invoke-virtual {v2, v1}, La/f/b/e;->b(Ljava/lang/Object;)Z

    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, La/f/b/d;->j:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, La/f/b/d;->f:[La/f/b/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    aget-object v5, v3, v4

    iget-object v5, v5, La/f/b/b;->a:La/f/b/g;

    iget v5, v5, La/f/b/g;->c:I

    if-ne v5, v1, :cond_2

    aget-object v3, v3, v4

    iget-object v3, v3, La/f/b/b;->a:La/f/b/g;

    iput v4, v3, La/f/b/g;->c:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, La/f/b/d;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, La/f/b/d;->a:Z

    :cond_7
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/f/b/d;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v1, v1, v0

    iget-object v2, v1, La/f/b/b;->a:La/f/b/g;

    iget v1, v1, La/f/b/b;->b:F

    iput v1, v2, La/f/b/g;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(ILjava/lang/String;)La/f/b/g;
    .locals 2

    iget v0, p0, La/f/b/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/f/b/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, La/f/b/d;->p()V

    :cond_0
    sget-object v0, La/f/b/g$a;->e:La/f/b/g$a;

    invoke-virtual {p0, v0, p2}, La/f/b/d;->a(La/f/b/g$a;Ljava/lang/String;)La/f/b/g;

    move-result-object p2

    iget v0, p0, La/f/b/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/f/b/d;->b:I

    iget v1, p0, La/f/b/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/f/b/d;->i:I

    iput v0, p2, La/f/b/g;->b:I

    iput p1, p2, La/f/b/g;->d:I

    iget-object p1, p0, La/f/b/d;->l:La/f/b/c;

    iget-object p1, p1, La/f/b/c;->d:[La/f/b/g;

    aput-object p2, p1, v0

    iget-object p1, p0, La/f/b/d;->c:La/f/b/d$a;

    invoke-interface {p1, p2}, La/f/b/d$a;->a(La/f/b/g;)V

    return-object p2
.end method

.method public l(Ljava/lang/Object;)La/f/b/g;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, La/f/b/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, La/f/b/d;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, La/f/b/d;->p()V

    :cond_1
    instance-of v1, p1, La/f/b/h/c;

    if-eqz v1, :cond_5

    check-cast p1, La/f/b/h/c;

    .line 1
    iget-object v0, p1, La/f/b/h/c;->i:La/f/b/g;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, La/f/b/h/c;->i()V

    .line 3
    iget-object p1, p1, La/f/b/h/c;->i:La/f/b/g;

    move-object v0, p1

    .line 4
    :cond_2
    iget p1, v0, La/f/b/g;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, La/f/b/d;->b:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v2, v2, La/f/b/c;->d:[La/f/b/g;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, La/f/b/g;->c()V

    :cond_4
    iget p1, p0, La/f/b/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/f/b/d;->b:I

    iget v1, p0, La/f/b/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/f/b/d;->i:I

    iput p1, v0, La/f/b/g;->b:I

    sget-object v1, La/f/b/g$a;->b:La/f/b/g$a;

    iput-object v1, v0, La/f/b/g;->i:La/f/b/g$a;

    iget-object v1, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v1, v1, La/f/b/c;->d:[La/f/b/g;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public m()La/f/b/b;
    .locals 5

    iget-object v0, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v0, v0, La/f/b/c;->b:La/f/b/e;

    invoke-virtual {v0}, La/f/b/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/b;

    if-nez v0, :cond_0

    new-instance v0, La/f/b/b;

    iget-object v1, p0, La/f/b/d;->l:La/f/b/c;

    invoke-direct {v0, v1}, La/f/b/b;-><init>(La/f/b/c;)V

    sget-wide v1, La/f/b/d;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, La/f/b/d;->r:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, La/f/b/b;->a:La/f/b/g;

    iget-object v1, v0, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v1}, La/f/b/b$a;->clear()V

    const/4 v1, 0x0

    iput v1, v0, La/f/b/b;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, La/f/b/b;->e:Z

    .line 2
    :goto_0
    sget v1, La/f/b/g;->n:I

    add-int/lit8 v1, v1, 0x1

    sput v1, La/f/b/g;->n:I

    return-object v0
.end method

.method public n()La/f/b/g;
    .locals 3

    iget v0, p0, La/f/b/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/f/b/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, La/f/b/d;->p()V

    :cond_0
    sget-object v0, La/f/b/g$a;->d:La/f/b/g$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La/f/b/d;->a(La/f/b/g$a;Ljava/lang/String;)La/f/b/g;

    move-result-object v0

    iget v1, p0, La/f/b/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/f/b/d;->b:I

    iget v2, p0, La/f/b/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/f/b/d;->i:I

    iput v1, v0, La/f/b/g;->b:I

    iget-object v2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v2, v2, La/f/b/c;->d:[La/f/b/g;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public o(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, La/f/b/h/c;

    .line 1
    iget-object p1, p1, La/f/b/h/c;->i:La/f/b/g;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, La/f/b/g;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p()V
    .locals 3

    iget v0, p0, La/f/b/d;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, La/f/b/d;->d:I

    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/f/b/b;

    iput-object v0, p0, La/f/b/d;->f:[La/f/b/b;

    iget-object v0, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v1, v0, La/f/b/c;->d:[La/f/b/g;

    iget v2, p0, La/f/b/d;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [La/f/b/g;

    iput-object v1, v0, La/f/b/c;->d:[La/f/b/g;

    iget v0, p0, La/f/b/d;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, La/f/b/d;->h:[Z

    iput v0, p0, La/f/b/d;->e:I

    iput v0, p0, La/f/b/d;->k:I

    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, La/f/b/d;->c:La/f/b/d$a;

    invoke-interface {v0}, La/f/b/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/f/b/d;->j()V

    return-void

    :cond_0
    iget-boolean v0, p0, La/f/b/d;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, La/f/b/d;->j:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v2, v2, v1

    iget-boolean v2, v2, La/f/b/b;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, La/f/b/d;->j()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, La/f/b/d;->c:La/f/b/d$a;

    invoke-virtual {p0, v0}, La/f/b/d;->r(La/f/b/d$a;)V

    :goto_3
    return-void
.end method

.method public r(La/f/b/d$a;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, La/f/b/g$a;->b:La/f/b/g$a;

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, La/f/b/d;->j:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    iget-object v4, v0, La/f/b/d;->f:[La/f/b/b;

    aget-object v7, v4, v3

    iget-object v7, v7, La/f/b/b;->a:La/f/b/g;

    iget-object v7, v7, La/f/b/g;->i:La/f/b/g$a;

    if-ne v7, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v4, v3

    iget v4, v4, La/f/b/b;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-nez v3, :cond_e

    add-int/2addr v4, v6

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_4
    iget v13, v0, La/f/b/d;->j:I

    if-ge v9, v13, :cond_b

    iget-object v13, v0, La/f/b/d;->f:[La/f/b/b;

    aget-object v13, v13, v9

    iget-object v14, v13, La/f/b/b;->a:La/f/b/g;

    iget-object v14, v14, La/f/b/g;->i:La/f/b/g$a;

    if-ne v14, v1, :cond_3

    goto :goto_8

    :cond_3
    iget-boolean v14, v13, La/f/b/b;->e:Z

    if-eqz v14, :cond_4

    goto :goto_8

    :cond_4
    iget v14, v13, La/f/b/b;->b:F

    cmpg-float v14, v14, v5

    if-gez v14, :cond_a

    iget-object v14, v13, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v14}, La/f/b/b$a;->k()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_a

    iget-object v2, v13, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v2, v15}, La/f/b/b$a;->d(I)La/f/b/g;

    move-result-object v2

    iget-object v6, v13, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v6, v2}, La/f/b/b$a;->e(La/f/b/g;)F

    move-result v6

    cmpg-float v16, v6, v5

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v5, 0x0

    :goto_6
    const/16 v8, 0x9

    if-ge v5, v8, :cond_9

    iget-object v8, v2, La/f/b/g;->g:[F

    aget v8, v8, v5

    div-float/2addr v8, v6

    cmpg-float v17, v8, v7

    if-gez v17, :cond_6

    if-eq v5, v12, :cond_7

    :cond_6
    if-le v5, v12, :cond_8

    :cond_7
    iget v11, v2, La/f/b/g;->b:I

    move v12, v5

    move v7, v8

    move v10, v9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, -0x1

    if-eq v10, v2, :cond_c

    iget-object v5, v0, La/f/b/d;->f:[La/f/b/b;

    aget-object v5, v5, v10

    iget-object v6, v5, La/f/b/b;->a:La/f/b/g;

    iput v2, v6, La/f/b/g;->c:I

    iget-object v2, v0, La/f/b/d;->l:La/f/b/c;

    iget-object v2, v2, La/f/b/c;->d:[La/f/b/g;

    aget-object v2, v2, v11

    invoke-virtual {v5, v2}, La/f/b/b;->j(La/f/b/g;)V

    iget-object v2, v5, La/f/b/b;->a:La/f/b/g;

    iput v10, v2, La/f/b/g;->c:I

    invoke-virtual {v2, v0, v5}, La/f/b/g;->e(La/f/b/d;La/f/b/b;)V

    goto :goto_9

    :cond_c
    const/4 v3, 0x1

    :goto_9
    iget v2, v0, La/f/b/d;->i:I

    div-int/lit8 v2, v2, 0x2

    if-le v4, v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 2
    :cond_e
    invoke-virtual/range {p0 .. p1}, La/f/b/d;->s(La/f/b/d$a;)I

    invoke-virtual/range {p0 .. p0}, La/f/b/d;->j()V

    return-void
.end method

.method public final s(La/f/b/d$a;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, La/f/b/d;->i:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, La/f/b/d;->h:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, La/f/b/d;->i:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    return v3

    :cond_2
    move-object v4, p1

    check-cast v4, La/f/b/b;

    .line 1
    iget-object v4, v4, La/f/b/b;->a:La/f/b/g;

    if-eqz v4, :cond_3

    .line 2
    iget-object v5, p0, La/f/b/d;->h:[Z

    iget v4, v4, La/f/b/g;->b:I

    aput-boolean v1, v5, v4

    :cond_3
    iget-object v4, p0, La/f/b/d;->h:[Z

    invoke-interface {p1, p0, v4}, La/f/b/d$a;->b(La/f/b/d;[Z)La/f/b/g;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, La/f/b/d;->h:[Z

    iget v6, v4, La/f/b/g;->b:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_4

    return v3

    :cond_4
    aput-boolean v1, v5, v6

    :cond_5
    if-eqz v4, :cond_a

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_2
    iget v9, p0, La/f/b/d;->j:I

    if-ge v7, v9, :cond_9

    iget-object v9, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v9, v9, v7

    iget-object v10, v9, La/f/b/b;->a:La/f/b/g;

    iget-object v10, v10, La/f/b/g;->i:La/f/b/g$a;

    sget-object v11, La/f/b/g$a;->b:La/f/b/g$a;

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v10, v9, La/f/b/b;->e:Z

    if-eqz v10, :cond_7

    goto :goto_3

    .line 3
    :cond_7
    iget-object v10, v9, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v10, v4}, La/f/b/b$a;->g(La/f/b/g;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4
    iget-object v10, v9, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v10, v4}, La/f/b/b$a;->e(La/f/b/g;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    iget v9, v9, La/f/b/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_8

    move v8, v7

    move v5, v9

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    if-le v8, v6, :cond_1

    iget-object v5, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v5, v5, v8

    iget-object v7, v5, La/f/b/b;->a:La/f/b/g;

    iput v6, v7, La/f/b/g;->c:I

    invoke-virtual {v5, v4}, La/f/b/b;->j(La/f/b/g;)V

    iget-object v4, v5, La/f/b/b;->a:La/f/b/g;

    iput v8, v4, La/f/b/g;->c:I

    invoke-virtual {v4, p0, v5}, La/f/b/g;->e(La/f/b/d;La/f/b/b;)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    return v3
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La/f/b/d;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v2, v2, La/f/b/c;->b:La/f/b/e;

    invoke-virtual {v2, v1}, La/f/b/e;->b(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, La/f/b/d;->f:[La/f/b/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v3, v2, La/f/b/c;->d:[La/f/b/g;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, La/f/b/g;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, La/f/b/c;->c:La/f/b/e;

    iget-object v2, p0, La/f/b/d;->m:[La/f/b/g;

    iget v3, p0, La/f/b/d;->n:I

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v2

    if-le v3, v4, :cond_2

    array-length v3, v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget v6, v1, La/f/b/e;->b:I

    iget-object v7, v1, La/f/b/e;->a:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, La/f/b/e;->b:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2
    :cond_4
    iput v0, p0, La/f/b/d;->n:I

    iget-object v1, p0, La/f/b/d;->l:La/f/b/c;

    iget-object v1, v1, La/f/b/c;->d:[La/f/b/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, La/f/b/d;->b:I

    iget-object v1, p0, La/f/b/d;->c:La/f/b/d$a;

    invoke-interface {v1}, La/f/b/d$a;->clear()V

    const/4 v1, 0x1

    iput v1, p0, La/f/b/d;->i:I

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, La/f/b/d;->j:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, La/f/b/d;->f:[La/f/b/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_5

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, La/f/b/d;->t()V

    iput v0, p0, La/f/b/d;->j:I

    new-instance v0, La/f/b/b;

    iget-object v1, p0, La/f/b/d;->l:La/f/b/c;

    invoke-direct {v0, v1}, La/f/b/b;-><init>(La/f/b/c;)V

    iput-object v0, p0, La/f/b/d;->o:La/f/b/d$a;

    return-void
.end method
