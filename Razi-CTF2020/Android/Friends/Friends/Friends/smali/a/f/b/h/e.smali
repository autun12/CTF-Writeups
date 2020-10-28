.class public La/f/b/h/e;
.super La/f/b/h/k;
.source ""


# instance fields
.field public A0:Z

.field public B0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/f/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public C0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/f/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public D0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/f/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public E0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/f/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public F0:La/f/b/h/l/b$a;

.field public n0:La/f/b/h/l/b;

.field public o0:La/f/b/h/l/e;

.field public p0:La/f/b/h/l/b$b;

.field public q0:Z

.field public r0:La/f/b/d;

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:[La/f/b/h/b;

.field public x0:[La/f/b/h/b;

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, La/f/b/h/k;-><init>()V

    new-instance v0, La/f/b/h/l/b;

    invoke-direct {v0, p0}, La/f/b/h/l/b;-><init>(La/f/b/h/e;)V

    iput-object v0, p0, La/f/b/h/e;->n0:La/f/b/h/l/b;

    new-instance v0, La/f/b/h/l/e;

    invoke-direct {v0, p0}, La/f/b/h/l/e;-><init>(La/f/b/h/e;)V

    iput-object v0, p0, La/f/b/h/e;->o0:La/f/b/h/l/e;

    const/4 v0, 0x0

    iput-object v0, p0, La/f/b/h/e;->p0:La/f/b/h/l/b$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, La/f/b/h/e;->q0:Z

    new-instance v2, La/f/b/d;

    invoke-direct {v2}, La/f/b/d;-><init>()V

    iput-object v2, p0, La/f/b/h/e;->r0:La/f/b/d;

    iput v1, p0, La/f/b/h/e;->u0:I

    iput v1, p0, La/f/b/h/e;->v0:I

    const/4 v2, 0x4

    new-array v3, v2, [La/f/b/h/b;

    iput-object v3, p0, La/f/b/h/e;->w0:[La/f/b/h/b;

    new-array v2, v2, [La/f/b/h/b;

    iput-object v2, p0, La/f/b/h/e;->x0:[La/f/b/h/b;

    const/16 v2, 0x101

    iput v2, p0, La/f/b/h/e;->y0:I

    iput-boolean v1, p0, La/f/b/h/e;->z0:Z

    iput-boolean v1, p0, La/f/b/h/e;->A0:Z

    iput-object v0, p0, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, La/f/b/h/e;->C0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    new-instance v0, La/f/b/h/l/b$a;

    invoke-direct {v0}, La/f/b/h/l/b$a;-><init>()V

    iput-object v0, p0, La/f/b/h/e;->F0:La/f/b/h/l/b$a;

    return-void
.end method

.method public static X(La/f/b/h/d;La/f/b/h/l/b$b;La/f/b/h/l/b$a;Z)Z
    .locals 9

    sget-object v0, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    sget-object v1, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v3

    iput-object v3, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    invoke-virtual {p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v3

    iput-object v3, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    invoke-virtual {p0}, La/f/b/h/d;->r()I

    move-result v3

    iput v3, p2, La/f/b/h/l/b$a;->c:I

    invoke-virtual {p0}, La/f/b/h/d;->l()I

    move-result v3

    iput v3, p2, La/f/b/h/l/b$a;->d:I

    iput-boolean v2, p2, La/f/b/h/l/b$a;->i:Z

    iput-boolean p3, p2, La/f/b/h/l/b$a;->j:Z

    iget-object p3, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    sget-object v3, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    const/4 v4, 0x1

    if-ne p3, v3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-object v5, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz p3, :cond_3

    iget v6, p0, La/f/b/h/d;->T:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v3, :cond_4

    iget v7, p0, La/f/b/h/d;->T:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz p3, :cond_6

    invoke-virtual {p0, v2}, La/f/b/h/d;->u(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, La/f/b/h/d;->m:I

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    iput-object v0, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    if-eqz v3, :cond_5

    iget p3, p0, La/f/b/h/d;->n:I

    if-nez p3, :cond_5

    iput-object v1, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    :cond_5
    const/4 p3, 0x0

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {p0, v4}, La/f/b/h/d;->u(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, La/f/b/h/d;->n:I

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    iput-object v0, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    if-eqz p3, :cond_7

    iget v3, p0, La/f/b/h/d;->m:I

    if-nez v3, :cond_7

    iput-object v1, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    :cond_7
    const/4 v3, 0x0

    :cond_8
    invoke-virtual {p0}, La/f/b/h/d;->z()Z

    move-result v7

    if-eqz v7, :cond_9

    iput-object v1, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    const/4 p3, 0x0

    :cond_9
    invoke-virtual {p0}, La/f/b/h/d;->A()Z

    move-result v7

    if-eqz v7, :cond_a

    iput-object v1, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    const/4 v3, 0x0

    :cond_a
    const/4 v7, -0x1

    const/4 v8, 0x4

    if-eqz v6, :cond_f

    iget-object v6, p0, La/f/b/h/d;->o:[I

    aget v6, v6, v2

    if-ne v6, v8, :cond_b

    iput-object v1, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    goto :goto_7

    :cond_b
    if-nez v3, :cond_f

    iget-object v3, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    if-ne v3, v1, :cond_c

    iget v3, p2, La/f/b/h/l/b$a;->d:I

    goto :goto_4

    :cond_c
    iput-object v0, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    move-object v3, p1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(La/f/b/h/d;La/f/b/h/l/b$a;)V

    iget v3, p2, La/f/b/h/l/b$a;->f:I

    :goto_4
    iput-object v1, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    iget v6, p0, La/f/b/h/d;->U:I

    if-eqz v6, :cond_e

    if-ne v6, v7, :cond_d

    goto :goto_5

    .line 1
    :cond_d
    iget v6, p0, La/f/b/h/d;->T:F

    int-to-float v3, v3

    div-float/2addr v6, v3

    goto :goto_6

    :cond_e
    :goto_5
    iget v6, p0, La/f/b/h/d;->T:F

    int-to-float v3, v3

    mul-float v6, v6, v3

    :goto_6
    float-to-int v3, v6

    .line 2
    iput v3, p2, La/f/b/h/l/b$a;->c:I

    :cond_f
    :goto_7
    if-eqz v5, :cond_14

    iget-object v3, p0, La/f/b/h/d;->o:[I

    aget v3, v3, v4

    if-ne v3, v8, :cond_10

    iput-object v1, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    goto :goto_b

    :cond_10
    if-nez p3, :cond_14

    iget-object p3, p2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    if-ne p3, v1, :cond_11

    iget p3, p2, La/f/b/h/l/b$a;->c:I

    goto :goto_8

    :cond_11
    iput-object v0, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(La/f/b/h/d;La/f/b/h/l/b$a;)V

    iget p3, p2, La/f/b/h/l/b$a;->e:I

    :goto_8
    iput-object v1, p2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    iget v0, p0, La/f/b/h/d;->U:I

    if-eqz v0, :cond_13

    if-ne v0, v7, :cond_12

    goto :goto_9

    :cond_12
    int-to-float p3, p3

    .line 3
    iget v0, p0, La/f/b/h/d;->T:F

    mul-float p3, p3, v0

    goto :goto_a

    :cond_13
    :goto_9
    int-to-float p3, p3

    iget v0, p0, La/f/b/h/d;->T:F

    div-float/2addr p3, v0

    :goto_a
    float-to-int p3, p3

    .line 4
    iput p3, p2, La/f/b/h/l/b$a;->d:I

    :cond_14
    :goto_b
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(La/f/b/h/d;La/f/b/h/l/b$a;)V

    iget p1, p2, La/f/b/h/l/b$a;->e:I

    invoke-virtual {p0, p1}, La/f/b/h/d;->M(I)V

    iget p1, p2, La/f/b/h/l/b$a;->f:I

    invoke-virtual {p0, p1}, La/f/b/h/d;->H(I)V

    iget-boolean p1, p2, La/f/b/h/l/b$a;->h:Z

    .line 5
    iput-boolean p1, p0, La/f/b/h/d;->z:Z

    .line 6
    iget p1, p2, La/f/b/h/l/b$a;->g:I

    invoke-virtual {p0, p1}, La/f/b/h/d;->E(I)V

    iput-boolean v2, p2, La/f/b/h/l/b$a;->j:Z

    iget-boolean p0, p2, La/f/b/h/l/b$a;->i:Z

    return p0
.end method


# virtual methods
.method public B()V
    .locals 1

    iget-object v0, p0, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v0}, La/f/b/d;->u()V

    const/4 v0, 0x0

    iput v0, p0, La/f/b/h/e;->s0:I

    iput v0, p0, La/f/b/h/e;->t0:I

    invoke-super {p0}, La/f/b/h/k;->B()V

    return-void
.end method

.method public N(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, La/f/b/h/d;->N(ZZ)V

    iget-object v0, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/f/b/h/d;

    invoke-virtual {v2, p1, p2}, La/f/b/h/d;->N(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public P()V
    .locals 27

    move-object/from16 v1, p0

    sget-object v2, La/f/b/h/i;->a:[Z

    sget-object v0, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    sget-object v3, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    sget-object v4, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    const/4 v5, 0x0

    iput v5, v1, La/f/b/h/d;->V:I

    iput v5, v1, La/f/b/h/d;->W:I

    iput-boolean v5, v1, La/f/b/h/e;->z0:Z

    iput-boolean v5, v1, La/f/b/h/e;->A0:Z

    iget-object v6, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v10, 0x1

    aget-object v11, v9, v10

    aget-object v9, v9, v5

    iget v12, v1, La/f/b/h/e;->y0:I

    invoke-static {v12, v10}, La/f/b/h/i;->b(II)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1
    iget-object v12, v1, La/f/b/h/e;->p0:La/f/b/h/l/b$b;

    .line 2
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->C()V

    .line 3
    iget-object v15, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_0
    if-ge v5, v10, :cond_0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, La/f/b/h/d;

    invoke-virtual/range {v16 .. v16}, La/f/b/h/d;->C()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v13, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, La/f/b/h/d;->F(II)V

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 5
    iget-object v5, v1, La/f/b/h/d;->E:La/f/b/h/c;

    .line 6
    iput v13, v5, La/f/b/h/c;->b:I

    move-object/from16 v16, v2

    const/4 v2, 0x1

    iput-boolean v2, v5, La/f/b/h/c;->c:Z

    .line 7
    iput v13, v1, La/f/b/h/d;->V:I

    :goto_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_2
    const/high16 v17, 0x3f000000    # 0.5f

    move/from16 v18, v8

    if-ge v5, v10, :cond_7

    .line 8
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, La/f/b/h/d;

    move/from16 v19, v7

    instance-of v7, v8, La/f/b/h/f;

    if-eqz v7, :cond_5

    check-cast v8, La/f/b/h/f;

    .line 9
    iget v7, v8, La/f/b/h/f;->q0:I

    move-object/from16 v20, v11

    const/4 v11, 0x1

    if-ne v7, v11, :cond_6

    .line 10
    iget v2, v8, La/f/b/h/f;->n0:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    iget v2, v8, La/f/b/h/f;->o0:I

    if-eq v2, v7, :cond_3

    .line 12
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v2

    .line 13
    iget v7, v8, La/f/b/h/f;->o0:I

    sub-int/2addr v2, v7

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->z()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget v2, v8, La/f/b/h/f;->m0:F

    .line 16
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v7

    int-to-float v7, v7

    mul-float v2, v2, v7

    add-float v2, v2, v17

    float-to-int v2, v2

    :goto_3
    invoke-virtual {v8, v2}, La/f/b/h/f;->P(I)V

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v20, v11

    instance-of v7, v8, La/f/b/h/a;

    if-eqz v7, :cond_6

    check-cast v8, La/f/b/h/a;

    invoke-virtual {v8}, La/f/b/h/a;->R()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v13, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v18

    move/from16 v7, v19

    move-object/from16 v11, v20

    goto :goto_2

    :cond_7
    move/from16 v19, v7

    move-object/from16 v20, v11

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_9

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/f/b/h/d;

    instance-of v7, v5, La/f/b/h/f;

    if-eqz v7, :cond_8

    check-cast v5, La/f/b/h/f;

    .line 17
    iget v7, v5, La/f/b/h/f;->q0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 18
    invoke-static {v5, v12}, La/f/b/h/l/h;->b(La/f/b/h/d;La/f/b/h/l/b$b;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    invoke-static {v1, v12}, La/f/b/h/l/h;->b(La/f/b/h/d;La/f/b/h/l/b$b;)V

    if-eqz v13, :cond_b

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v10, :cond_b

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/f/b/h/d;

    instance-of v7, v5, La/f/b/h/a;

    if-eqz v7, :cond_a

    check-cast v5, La/f/b/h/a;

    invoke-virtual {v5}, La/f/b/h/a;->R()I

    move-result v7

    if-nez v7, :cond_a

    .line 19
    invoke-virtual {v5}, La/f/b/h/a;->Q()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v5, v12}, La/f/b/h/l/h;->b(La/f/b/h/d;La/f/b/h/l/b$b;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    if-ne v14, v4, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, La/f/b/h/d;->G(II)V

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    .line 21
    iget-object v2, v1, La/f/b/h/d;->F:La/f/b/h/c;

    .line 22
    iput v5, v2, La/f/b/h/c;->b:I

    const/4 v7, 0x1

    iput-boolean v7, v2, La/f/b/h/c;->c:Z

    .line 23
    iput v5, v1, La/f/b/h/d;->W:I

    :goto_7
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v10, :cond_13

    .line 24
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/f/b/h/d;

    instance-of v11, v8, La/f/b/h/f;

    if-eqz v11, :cond_11

    check-cast v8, La/f/b/h/f;

    .line 25
    iget v11, v8, La/f/b/h/f;->q0:I

    if-nez v11, :cond_10

    .line 26
    iget v2, v8, La/f/b/h/f;->n0:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    goto :goto_9

    .line 27
    :cond_d
    iget v2, v8, La/f/b/h/f;->o0:I

    if-eq v2, v11, :cond_e

    .line 28
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->A()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v2

    .line 29
    iget v13, v8, La/f/b/h/f;->o0:I

    sub-int/2addr v2, v13

    goto :goto_9

    .line 30
    :cond_e
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->A()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 31
    iget v2, v8, La/f/b/h/f;->m0:F

    .line 32
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v13

    int-to-float v13, v13

    mul-float v2, v2, v13

    add-float v2, v2, v17

    float-to-int v2, v2

    :goto_9
    invoke-virtual {v8, v2}, La/f/b/h/f;->P(I)V

    :cond_f
    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v11, -0x1

    goto :goto_a

    :cond_11
    const/4 v11, -0x1

    instance-of v13, v8, La/f/b/h/a;

    if-eqz v13, :cond_12

    check-cast v8, La/f/b/h/a;

    invoke-virtual {v8}, La/f/b/h/a;->R()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_12

    const/4 v5, 0x1

    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_13
    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v10, :cond_15

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La/f/b/h/d;

    instance-of v8, v7, La/f/b/h/f;

    if-eqz v8, :cond_14

    check-cast v7, La/f/b/h/f;

    .line 33
    iget v8, v7, La/f/b/h/f;->q0:I

    if-nez v8, :cond_14

    .line 34
    invoke-static {v7, v12}, La/f/b/h/l/h;->g(La/f/b/h/d;La/f/b/h/l/b$b;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    invoke-static {v1, v12}, La/f/b/h/l/h;->g(La/f/b/h/d;La/f/b/h/l/b$b;)V

    if-eqz v5, :cond_17

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v10, :cond_17

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/f/b/h/d;

    instance-of v7, v5, La/f/b/h/a;

    if-eqz v7, :cond_16

    check-cast v5, La/f/b/h/a;

    invoke-virtual {v5}, La/f/b/h/a;->R()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    .line 35
    invoke-virtual {v5}, La/f/b/h/a;->Q()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {v5, v12}, La/f/b/h/l/h;->g(La/f/b/h/d;La/f/b/h/l/b$b;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v10, :cond_19

    .line 36
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/f/b/h/d;

    invoke-virtual {v5}, La/f/b/h/d;->y()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {v5}, La/f/b/h/l/h;->a(La/f/b/h/d;)Z

    move-result v7

    if-eqz v7, :cond_18

    sget-object v7, La/f/b/h/l/h;->a:La/f/b/h/l/b$a;

    const/4 v8, 0x0

    invoke-static {v5, v12, v7, v8}, La/f/b/h/e;->X(La/f/b/h/d;La/f/b/h/l/b$b;La/f/b/h/l/b$a;Z)Z

    invoke-static {v5, v12}, La/f/b/h/l/h;->b(La/f/b/h/d;La/f/b/h/l/b$b;)V

    invoke-static {v5, v12}, La/f/b/h/l/h;->g(La/f/b/h/d;La/f/b/h/l/b$b;)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v6, :cond_1d

    .line 37
    iget-object v5, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/f/b/h/d;

    invoke-virtual {v5}, La/f/b/h/d;->y()Z

    move-result v7

    if-eqz v7, :cond_1b

    instance-of v7, v5, La/f/b/h/f;

    if-nez v7, :cond_1b

    instance-of v7, v5, La/f/b/h/a;

    if-nez v7, :cond_1b

    instance-of v7, v5, La/f/b/h/j;

    if-nez v7, :cond_1b

    .line 38
    iget-boolean v7, v5, La/f/b/h/d;->B:Z

    if-nez v7, :cond_1b

    const/4 v7, 0x0

    .line 39
    invoke-virtual {v5, v7}, La/f/b/h/d;->k(I)La/f/b/h/d$a;

    move-result-object v8

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, La/f/b/h/d;->k(I)La/f/b/h/d$a;

    move-result-object v10

    if-ne v8, v0, :cond_1a

    iget v8, v5, La/f/b/h/d;->m:I

    if-eq v8, v7, :cond_1a

    if-ne v10, v0, :cond_1a

    iget v8, v5, La/f/b/h/d;->n:I

    if-eq v8, v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_f

    :cond_1a
    const/4 v7, 0x0

    :goto_f
    if-nez v7, :cond_1b

    new-instance v7, La/f/b/h/l/b$a;

    invoke-direct {v7}, La/f/b/h/l/b$a;-><init>()V

    iget-object v8, v1, La/f/b/h/e;->p0:La/f/b/h/l/b$b;

    const/4 v10, 0x0

    invoke-static {v5, v8, v7, v10}, La/f/b/h/e;->X(La/f/b/h/d;La/f/b/h/l/b$b;La/f/b/h/l/b$a;Z)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    move-object/from16 v16, v2

    move/from16 v19, v7

    move/from16 v18, v8

    move-object/from16 v20, v11

    :cond_1d
    const/4 v2, 0x2

    if-le v6, v2, :cond_52

    move-object/from16 v7, v20

    if-eq v9, v3, :cond_1e

    if-ne v7, v3, :cond_51

    :cond_1e
    iget v8, v1, La/f/b/h/e;->y0:I

    const/16 v10, 0x400

    invoke-static {v8, v10}, La/f/b/h/i;->b(II)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 40
    iget-object v8, v1, La/f/b/h/e;->p0:La/f/b/h/l/b$b;

    .line 41
    sget-object v10, La/f/b/h/c$a;->h:La/f/b/h/c$a;

    iget-object v11, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v12, :cond_20

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La/f/b/h/d;

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v2

    invoke-virtual {v14}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v5

    invoke-virtual {v14}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v14

    invoke-static {v15, v2, v5, v14}, La/b/a;->g(La/f/b/h/d$a;La/f/b/h/d$a;La/f/b/h/d$a;La/f/b/h/d$a;)Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v25, v4

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v24, v9

    const/4 v0, 0x0

    move-object v4, v3

    goto/16 :goto_29

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x2

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_11
    if-ge v2, v12, :cond_30

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v6

    move-object/from16 v6, v22

    check-cast v6, La/f/b/h/d;

    move-object/from16 v22, v7

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v7

    move-object/from16 v24, v9

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v9

    move-object/from16 v25, v4

    invoke-virtual {v6}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v4

    move-object/from16 v26, v3

    invoke-virtual {v6}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v3

    invoke-static {v7, v9, v4, v3}, La/b/a;->g(La/f/b/h/d$a;La/f/b/h/d$a;La/f/b/h/d$a;La/f/b/h/d$a;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v1, La/f/b/h/e;->F0:La/f/b/h/l/b$a;

    const/4 v4, 0x0

    invoke-static {v6, v8, v3, v4}, La/f/b/h/e;->X(La/f/b/h/d;La/f/b/h/l/b$b;La/f/b/h/l/b$a;Z)Z

    :cond_21
    instance-of v3, v6, La/f/b/h/f;

    if-eqz v3, :cond_25

    move-object v4, v6

    check-cast v4, La/f/b/h/f;

    .line 43
    iget v7, v4, La/f/b/h/f;->q0:I

    if-nez v7, :cond_23

    if-nez v14, :cond_22

    .line 44
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v7

    :cond_22
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_23
    iget v7, v4, La/f/b/h/f;->q0:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_25

    if-nez v5, :cond_24

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    instance-of v4, v6, La/f/b/h/h;

    if-eqz v4, :cond_2b

    instance-of v4, v6, La/f/b/h/a;

    if-eqz v4, :cond_28

    move-object v4, v6

    check-cast v4, La/f/b/h/a;

    invoke-virtual {v4}, La/f/b/h/a;->R()I

    move-result v7

    if-nez v7, :cond_27

    if-nez v13, :cond_26

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v7

    :cond_26
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    invoke-virtual {v4}, La/f/b/h/a;->R()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2b

    if-nez v15, :cond_2a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12

    :cond_28
    move-object v4, v6

    check-cast v4, La/f/b/h/h;

    if-nez v13, :cond_29

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_2a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    move-object v15, v7

    :cond_2a
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v4, v6, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v4, :cond_2d

    iget-object v4, v6, La/f/b/h/d;->G:La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v4, :cond_2d

    if-nez v3, :cond_2d

    instance-of v4, v6, La/f/b/h/a;

    if-nez v4, :cond_2d

    if-nez v20, :cond_2c

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    move-object/from16 v4, v20

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v4

    :cond_2d
    iget-object v4, v6, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v4, :cond_2f

    iget-object v4, v6, La/f/b/h/d;->H:La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v4, :cond_2f

    iget-object v4, v6, La/f/b/h/d;->I:La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v4, :cond_2f

    if-nez v3, :cond_2f

    instance-of v3, v6, La/f/b/h/a;

    if-nez v3, :cond_2f

    if-nez v21, :cond_2e

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    move-object/from16 v3, v21

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v3

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v22

    move/from16 v6, v23

    move-object/from16 v9, v24

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto/16 :goto_11

    :cond_30
    move-object/from16 v26, v3

    move-object/from16 v25, v4

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v24, v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_13

    :cond_31
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v13, :cond_32

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/h;

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v7}, La/f/b/h/h;->P(Ljava/util/ArrayList;ILa/f/b/h/l/n;)V

    invoke-virtual {v7, v2}, La/f/b/h/l/n;->b(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_14

    :cond_32
    sget-object v3, La/f/b/h/c$a;->c:La/f/b/h/c$a;

    invoke-virtual {v1, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 47
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_33

    .line 48
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_15

    :cond_33
    sget-object v3, La/f/b/h/c$a;->e:La/f/b/h/c$a;

    invoke-virtual {v1, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 49
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_34

    .line 50
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_16

    :cond_34
    invoke-virtual {v1, v10}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 51
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_35

    .line 52
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_17

    :cond_35
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v20, :cond_36

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/d;

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_18

    :cond_36
    if-eqz v14, :cond_37

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/f;

    const/4 v6, 0x1

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_19

    :cond_37
    const/4 v6, 0x1

    if-eqz v15, :cond_38

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/h;

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v7}, La/f/b/h/h;->P(Ljava/util/ArrayList;ILa/f/b/h/l/n;)V

    invoke-virtual {v7, v2}, La/f/b/h/l/n;->b(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1a

    :cond_38
    sget-object v3, La/f/b/h/c$a;->d:La/f/b/h/c$a;

    invoke-virtual {v1, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 53
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_39

    .line 54
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_1b

    :cond_39
    sget-object v3, La/f/b/h/c$a;->g:La/f/b/h/c$a;

    invoke-virtual {v1, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 55
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3a

    .line 56
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_1c

    :cond_3a
    sget-object v3, La/f/b/h/c$a;->f:La/f/b/h/c$a;

    invoke-virtual {v1, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 57
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3b

    .line 58
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_1d

    :cond_3b
    invoke-virtual {v1, v10}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    .line 59
    iget-object v3, v3, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3c

    .line 60
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_1e

    :cond_3c
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v21, :cond_3d

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/d;

    invoke-static {v4, v6, v2, v5}, La/b/a;->b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;

    goto :goto_1f

    :cond_3d
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v12, :cond_40

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/d;

    .line 61
    iget-object v5, v4, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v7, 0x0

    aget-object v8, v5, v7

    if-ne v8, v0, :cond_3e

    aget-object v5, v5, v6

    if-ne v5, v0, :cond_3e

    const/4 v5, 0x1

    goto :goto_21

    :cond_3e
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_3f

    .line 62
    iget v5, v4, La/f/b/h/d;->k0:I

    invoke-static {v2, v5}, La/b/a;->c(Ljava/util/ArrayList;I)La/f/b/h/l/n;

    move-result-object v5

    iget v4, v4, La/f/b/h/d;->l0:I

    invoke-static {v2, v4}, La/b/a;->c(Ljava/util/ArrayList;I)La/f/b/h/l/n;

    move-result-object v4

    if-eqz v5, :cond_3f

    if-eqz v4, :cond_3f

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, La/f/b/h/l/n;->d(ILa/f/b/h/l/n;)V

    const/4 v6, 0x2

    .line 63
    iput v6, v4, La/f/b/h/l/n;->c:I

    .line 64
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto :goto_20

    :cond_40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_41

    move-object/from16 v4, v26

    goto/16 :goto_27

    :cond_41
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v0

    move-object/from16 v4, v26

    if-ne v0, v4, :cond_45

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La/f/b/h/l/n;

    .line 65
    iget v8, v7, La/f/b/h/l/n;->c:I

    if-ne v8, v3, :cond_42

    const/4 v8, 0x0

    goto :goto_23

    .line 66
    :cond_42
    iget-object v3, v1, La/f/b/h/e;->r0:La/f/b/d;

    const/4 v8, 0x0

    .line 67
    invoke-virtual {v7, v3, v8}, La/f/b/h/l/n;->c(La/f/b/d;I)I

    move-result v3

    if-le v3, v5, :cond_43

    move v5, v3

    move-object v6, v7

    :cond_43
    :goto_23
    const/4 v3, 0x1

    goto :goto_22

    :cond_44
    const/4 v8, 0x0

    if-eqz v6, :cond_45

    .line 68
    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aput-object v25, v0, v8

    .line 69
    invoke-virtual {v1, v5}, La/f/b/h/d;->M(I)V

    goto :goto_24

    :cond_45
    const/4 v6, 0x0

    :goto_24
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v0

    if-ne v0, v4, :cond_49

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_46
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/f/b/h/l/n;

    .line 70
    iget v7, v5, La/f/b/h/l/n;->c:I

    if-nez v7, :cond_47

    const/4 v8, 0x1

    goto :goto_25

    .line 71
    :cond_47
    iget-object v7, v1, La/f/b/h/e;->r0:La/f/b/d;

    const/4 v8, 0x1

    .line 72
    invoke-virtual {v5, v7, v8}, La/f/b/h/l/n;->c(La/f/b/d;I)I

    move-result v7

    if-le v7, v2, :cond_46

    move-object v3, v5

    move v2, v7

    goto :goto_25

    :cond_48
    const/4 v8, 0x1

    if-eqz v3, :cond_49

    .line 73
    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aput-object v25, v0, v8

    .line 74
    invoke-virtual {v1, v2}, La/f/b/h/d;->H(I)V

    goto :goto_26

    :cond_49
    const/4 v3, 0x0

    :goto_26
    if-nez v6, :cond_4b

    if-eqz v3, :cond_4a

    goto :goto_28

    :cond_4a
    :goto_27
    const/4 v0, 0x0

    goto :goto_29

    :cond_4b
    :goto_28
    const/4 v0, 0x1

    :goto_29
    if-eqz v0, :cond_50

    move-object/from16 v2, v24

    if-ne v2, v4, :cond_4d

    .line 75
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v0

    move/from16 v3, v19

    if-ge v3, v0, :cond_4c

    if-lez v3, :cond_4c

    invoke-virtual {v1, v3}, La/f/b/h/d;->M(I)V

    const/4 v5, 0x1

    iput-boolean v5, v1, La/f/b/h/e;->z0:Z

    goto :goto_2a

    :cond_4c
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v7

    goto :goto_2b

    :cond_4d
    move/from16 v3, v19

    :goto_2a
    move v7, v3

    :goto_2b
    move-object/from16 v5, v22

    if-ne v5, v4, :cond_4f

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v0

    move/from16 v6, v18

    if-ge v6, v0, :cond_4e

    if-lez v6, :cond_4e

    invoke-virtual {v1, v6}, La/f/b/h/d;->H(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, La/f/b/h/e;->A0:Z

    goto :goto_2c

    :cond_4e
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v8

    goto :goto_2d

    :cond_4f
    move/from16 v6, v18

    :goto_2c
    move v8, v6

    :goto_2d
    const/4 v0, 0x1

    goto :goto_30

    :cond_50
    move/from16 v6, v18

    move/from16 v3, v19

    move-object/from16 v5, v22

    move-object/from16 v2, v24

    goto :goto_2f

    :cond_51
    move-object/from16 v25, v4

    move/from16 v23, v6

    move-object v5, v7

    move-object v2, v9

    move/from16 v6, v18

    :goto_2e
    move-object v4, v3

    move/from16 v3, v19

    goto :goto_2f

    :cond_52
    move-object/from16 v25, v4

    move/from16 v23, v6

    move-object v2, v9

    move/from16 v6, v18

    move-object/from16 v5, v20

    goto :goto_2e

    :goto_2f
    move v7, v3

    move v8, v6

    const/4 v0, 0x0

    :goto_30
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, La/f/b/h/e;->Y(I)Z

    move-result v6

    if-nez v6, :cond_54

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, La/f/b/h/e;->Y(I)Z

    move-result v6

    if-eqz v6, :cond_53

    goto :goto_31

    :cond_53
    const/4 v6, 0x0

    goto :goto_32

    :cond_54
    :goto_31
    const/4 v6, 0x1

    :goto_32
    iget-object v9, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    iput-boolean v10, v9, La/f/b/d;->g:Z

    iget v10, v1, La/f/b/h/e;->y0:I

    if-eqz v10, :cond_55

    if-eqz v6, :cond_55

    const/4 v6, 0x1

    iput-boolean v6, v9, La/f/b/d;->g:Z

    :cond_55
    iget-object v6, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v9

    if-eq v9, v4, :cond_57

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object v9

    if-ne v9, v4, :cond_56

    goto :goto_33

    :cond_56
    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_34

    :cond_57
    :goto_33
    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 76
    :goto_34
    iput v9, v1, La/f/b/h/e;->u0:I

    iput v9, v1, La/f/b/h/e;->v0:I

    move/from16 v10, v23

    const/4 v9, 0x0

    :goto_35
    if-ge v9, v10, :cond_59

    .line 77
    iget-object v11, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/f/b/h/d;

    instance-of v12, v11, La/f/b/h/k;

    if-eqz v12, :cond_58

    check-cast v11, La/f/b/h/k;

    invoke-virtual {v11}, La/f/b/h/k;->P()V

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_59
    invoke-virtual {v1, v3}, La/f/b/h/e;->Y(I)Z

    move-result v9

    move v11, v0

    const/4 v0, 0x0

    const/4 v12, 0x1

    :goto_36
    if-eqz v12, :cond_69

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    iget-object v0, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v0}, La/f/b/d;->u()V

    const/4 v14, 0x0

    .line 78
    iput v14, v1, La/f/b/h/e;->u0:I

    iput v14, v1, La/f/b/h/e;->v0:I

    .line 79
    iget-object v0, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v1, v0}, La/f/b/h/d;->g(La/f/b/d;)V

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v10, :cond_5a

    iget-object v14, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La/f/b/h/d;

    iget-object v3, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v14, v3}, La/f/b/h/d;->g(La/f/b/d;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x40

    goto :goto_37

    :cond_5a
    iget-object v0, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v1, v0}, La/f/b/h/e;->R(La/f/b/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, v1, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x5

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, v1, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    iget-object v14, v1, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v12, v14}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v12

    .line 80
    iget-object v14, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    iget-object v14, v1, La/f/b/h/e;->r0:La/f/b/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v19, v11

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v14, v0, v12, v11, v3}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    const/4 v11, 0x0

    .line 81
    iput-object v11, v1, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    goto :goto_38

    :cond_5b
    move/from16 v19, v11

    :goto_38
    iget-object v0, v1, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, v1, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v11, v1, La/f/b/h/e;->r0:La/f/b/d;

    iget-object v12, v1, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v11, v12}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v11

    .line 82
    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v12, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v0, v14, v3}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    const/4 v11, 0x0

    .line 83
    iput-object v11, v1, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    :cond_5c
    iget-object v0, v1, La/f/b/h/e;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, v1, La/f/b/h/e;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v11, v1, La/f/b/h/e;->r0:La/f/b/d;

    iget-object v12, v1, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v11, v12}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v11

    .line 84
    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v12, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    const/4 v14, 0x0

    invoke-virtual {v12, v0, v11, v14, v3}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    const/4 v11, 0x0

    .line 85
    iput-object v11, v1, La/f/b/h/e;->C0:Ljava/lang/ref/WeakReference;

    goto :goto_3a

    :goto_39
    const/4 v3, 0x0

    goto :goto_3c

    :cond_5d
    :goto_3a
    iget-object v0, v1, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, v1, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v11, v1, La/f/b/h/e;->r0:La/f/b/d;

    iget-object v12, v1, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v11, v12}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v11

    .line 86
    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v12, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    iget-object v12, v1, La/f/b/h/e;->r0:La/f/b/d;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v0, v14, v3}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    .line 87
    :try_start_3
    iput-object v3, v1, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    goto :goto_3b

    :catch_0
    move-exception v0

    goto :goto_39

    :cond_5e
    const/4 v3, 0x0

    :goto_3b
    iget-object v0, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v0}, La/f/b/d;->q()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v12, 0x1

    goto :goto_3e

    :catch_1
    move-exception v0

    goto :goto_3c

    :catch_2
    move-exception v0

    move/from16 v19, v11

    goto :goto_39

    :goto_3c
    const/4 v12, 0x1

    goto :goto_3d

    :catch_3
    move-exception v0

    move/from16 v19, v11

    const/4 v3, 0x0

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION : "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3e
    iget-object v0, v1, La/f/b/h/e;->r0:La/f/b/d;

    if-eqz v12, :cond_5f

    const/4 v3, 0x2

    const/4 v11, 0x0

    .line 88
    aput-boolean v11, v16, v3

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, La/f/b/h/e;->Y(I)Z

    move-result v11

    invoke-virtual {v1, v0, v11}, La/f/b/h/d;->O(La/f/b/d;Z)V

    iget-object v12, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_3f
    if-ge v14, v12, :cond_60

    iget-object v3, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/f/b/h/d;

    invoke-virtual {v3, v0, v11}, La/f/b/h/d;->O(La/f/b/d;Z)V

    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x40

    goto :goto_3f

    .line 89
    :cond_5f
    invoke-virtual {v1, v0, v9}, La/f/b/h/d;->O(La/f/b/d;Z)V

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v10, :cond_60

    iget-object v3, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/f/b/h/d;

    iget-object v11, v1, La/f/b/h/e;->r0:La/f/b/d;

    invoke-virtual {v3, v11, v9}, La/f/b/h/d;->O(La/f/b/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_60
    if-eqz v13, :cond_63

    const/16 v0, 0x8

    if-ge v15, v0, :cond_63

    const/4 v3, 0x2

    aget-boolean v0, v16, v3

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_41
    if-ge v0, v10, :cond_61

    iget-object v14, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La/f/b/h/d;

    iget v3, v14, La/f/b/h/d;->V:I

    invoke-virtual {v14}, La/f/b/h/d;->r()I

    move-result v20

    add-int v3, v20, v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v3, v14, La/f/b/h/d;->W:I

    invoke-virtual {v14}, La/f/b/h/d;->l()I

    move-result v14

    add-int/2addr v14, v3

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x2

    goto :goto_41

    :cond_61
    iget v0, v1, La/f/b/h/d;->Y:I

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v1, La/f/b/h/d;->Z:I

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v2, v4, :cond_62

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v11

    if-ge v11, v0, :cond_62

    invoke-virtual {v1, v0}, La/f/b/h/d;->M(I)V

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v11, 0x0

    aput-object v4, v0, v11

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_42

    :cond_62
    const/4 v0, 0x0

    :goto_42
    if-ne v5, v4, :cond_64

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v11

    if-ge v11, v3, :cond_64

    invoke-virtual {v1, v3}, La/f/b/h/d;->H(I)V

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_43

    :cond_63
    const/4 v0, 0x0

    :cond_64
    :goto_43
    iget v3, v1, La/f/b/h/d;->Y:I

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v11

    if-le v3, v11, :cond_65

    invoke-virtual {v1, v3}, La/f/b/h/d;->M(I)V

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v3, 0x0

    aput-object v25, v0, v3

    const/4 v0, 0x1

    const/16 v19, 0x1

    :cond_65
    iget v3, v1, La/f/b/h/d;->Z:I

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v11

    if-le v3, v11, :cond_66

    invoke-virtual {v1, v3}, La/f/b/h/d;->H(I)V

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v3, 0x1

    aput-object v25, v0, v3

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_44

    :cond_66
    const/4 v3, 0x1

    :goto_44
    if-nez v19, :cond_68

    iget-object v11, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-ne v11, v4, :cond_67

    if-lez v7, :cond_67

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->r()I

    move-result v11

    if-le v11, v7, :cond_67

    iput-boolean v3, v1, La/f/b/h/e;->z0:Z

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aput-object v25, v0, v12

    invoke-virtual {v1, v7}, La/f/b/h/d;->M(I)V

    const/4 v0, 0x1

    const/16 v19, 0x1

    :cond_67
    iget-object v11, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v11, v11, v3

    if-ne v11, v4, :cond_68

    if-lez v8, :cond_68

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->l()I

    move-result v11

    if-le v11, v8, :cond_68

    iput-boolean v3, v1, La/f/b/h/e;->A0:Z

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aput-object v25, v0, v3

    invoke-virtual {v1, v8}, La/f/b/h/d;->H(I)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_45

    :cond_68
    move v12, v0

    move/from16 v11, v19

    :goto_45
    move v0, v15

    const/16 v3, 0x40

    goto/16 :goto_36

    :cond_69
    move/from16 v19, v11

    iput-object v6, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    if-eqz v19, :cond_6a

    iget-object v0, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v5, v0, v2

    :cond_6a
    iget-object v0, v1, La/f/b/h/e;->r0:La/f/b/d;

    .line 90
    iget-object v0, v0, La/f/b/d;->l:La/f/b/c;

    .line 91
    invoke-virtual {v1, v0}, La/f/b/h/k;->D(La/f/b/c;)V

    return-void
.end method

.method public Q(La/f/b/h/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, La/f/b/h/e;->u0:I

    add-int/2addr p2, v0

    iget-object v1, p0, La/f/b/h/e;->x0:[La/f/b/h/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [La/f/b/h/b;

    iput-object p2, p0, La/f/b/h/e;->x0:[La/f/b/h/b;

    :cond_0
    iget-object p2, p0, La/f/b/h/e;->x0:[La/f/b/h/b;

    iget v1, p0, La/f/b/h/e;->u0:I

    new-instance v2, La/f/b/h/b;

    const/4 v3, 0x0

    .line 2
    iget-boolean v4, p0, La/f/b/h/e;->q0:Z

    .line 3
    invoke-direct {v2, p1, v3, v4}, La/f/b/h/b;-><init>(La/f/b/h/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, La/f/b/h/e;->u0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 4
    iget p2, p0, La/f/b/h/e;->v0:I

    add-int/2addr p2, v0

    iget-object v1, p0, La/f/b/h/e;->w0:[La/f/b/h/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [La/f/b/h/b;

    iput-object p2, p0, La/f/b/h/e;->w0:[La/f/b/h/b;

    :cond_2
    iget-object p2, p0, La/f/b/h/e;->w0:[La/f/b/h/b;

    iget v1, p0, La/f/b/h/e;->v0:I

    new-instance v2, La/f/b/h/b;

    .line 5
    iget-boolean v3, p0, La/f/b/h/e;->q0:Z

    .line 6
    invoke-direct {v2, p1, v0, v3}, La/f/b/h/b;-><init>(La/f/b/h/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, La/f/b/h/e;->v0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public R(La/f/b/d;)Z
    .locals 14

    sget-object v0, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    sget-object v1, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, La/f/b/h/e;->Y(I)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, La/f/b/h/d;->d(La/f/b/d;Z)V

    iget-object v3, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    iget-object v8, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/f/b/h/d;

    .line 1
    iget-object v9, v8, La/f/b/h/d;->O:[Z

    aput-boolean v4, v9, v4

    aput-boolean v4, v9, v7

    .line 2
    instance-of v8, v8, La/f/b/h/a;

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_7

    iget-object v6, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/f/b/h/d;

    instance-of v8, v6, La/f/b/h/a;

    if-eqz v8, :cond_6

    check-cast v6, La/f/b/h/a;

    const/4 v8, 0x0

    .line 3
    :goto_2
    iget v9, v6, La/f/b/h/h;->n0:I

    if-ge v8, v9, :cond_6

    iget-object v9, v6, La/f/b/h/h;->m0:[La/f/b/h/d;

    aget-object v9, v9, v8

    iget v10, v6, La/f/b/h/a;->o0:I

    if-eqz v10, :cond_4

    if-ne v10, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 4
    :cond_3
    iget-object v9, v9, La/f/b/h/d;->O:[Z

    aput-boolean v7, v9, v7

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v9, v9, La/f/b/h/d;->O:[Z

    aput-boolean v7, v9, v4

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_9

    .line 5
    iget-object v6, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/f/b/h/d;

    invoke-virtual {v6}, La/f/b/h/d;->c()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, p1, v2}, La/f/b/h/d;->d(La/f/b/d;Z)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    sget-boolean v5, La/f/b/d;->p:Z

    if-eqz v5, :cond_d

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_b

    iget-object v6, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/f/b/h/d;

    invoke-virtual {v6}, La/f/b/h/d;->c()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object v3

    if-ne v3, v1, :cond_c

    const/4 v12, 0x0

    goto :goto_7

    :cond_c
    const/4 v12, 0x1

    :goto_7
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, p0

    move-object v10, p1

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, La/f/b/h/d;->b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/d;

    invoke-static {p0, p1, v1}, La/f/b/h/i;->a(La/f/b/h/e;La/f/b/d;La/f/b/h/d;)V

    invoke-virtual {v1, p1, v2}, La/f/b/h/d;->d(La/f/b/d;Z)V

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_13

    iget-object v6, p0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/f/b/h/d;

    instance-of v8, v6, La/f/b/h/e;

    if-eqz v8, :cond_11

    iget-object v8, v6, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v9, v8, v4

    aget-object v10, v8, v7

    if-ne v9, v1, :cond_e

    .line 6
    aput-object v0, v8, v4

    :cond_e
    if-ne v10, v1, :cond_f

    .line 7
    aput-object v0, v8, v7

    .line 8
    :cond_f
    invoke-virtual {v6, p1, v2}, La/f/b/h/d;->d(La/f/b/d;Z)V

    if-ne v9, v1, :cond_10

    invoke-virtual {v6, v9}, La/f/b/h/d;->I(La/f/b/h/d$a;)V

    :cond_10
    if-ne v10, v1, :cond_12

    invoke-virtual {v6, v10}, La/f/b/h/d;->L(La/f/b/h/d$a;)V

    goto :goto_a

    :cond_11
    invoke-static {p0, p1, v6}, La/f/b/h/i;->a(La/f/b/h/e;La/f/b/d;La/f/b/h/d;)V

    invoke-virtual {v6}, La/f/b/h/d;->c()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v6, p1, v2}, La/f/b/h/d;->d(La/f/b/d;Z)V

    :cond_12
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    iget v0, p0, La/f/b/h/e;->u0:I

    const/4 v1, 0x0

    if-lez v0, :cond_14

    invoke-static {p0, p1, v1, v4}, La/b/a;->a(La/f/b/h/e;La/f/b/d;Ljava/util/ArrayList;I)V

    :cond_14
    iget v0, p0, La/f/b/h/e;->v0:I

    if-lez v0, :cond_15

    invoke-static {p0, p1, v1, v7}, La/b/a;->a(La/f/b/h/e;La/f/b/d;Ljava/util/ArrayList;I)V

    :cond_15
    return v7
.end method

.method public S(La/f/b/h/c;)V
    .locals 2

    iget-object v0, p0, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/f/b/h/c;->c()I

    move-result v0

    iget-object v1, p0, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/c;

    invoke-virtual {v1}, La/f/b/h/c;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/f/b/h/e;->E0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public T(La/f/b/h/c;)V
    .locals 2

    iget-object v0, p0, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/f/b/h/c;->c()I

    move-result v0

    iget-object v1, p0, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/c;

    invoke-virtual {v1}, La/f/b/h/c;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/f/b/h/e;->D0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public U(La/f/b/h/c;)V
    .locals 2

    iget-object v0, p0, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/f/b/h/c;->c()I

    move-result v0

    iget-object v1, p0, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/c;

    invoke-virtual {v1}, La/f/b/h/c;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/f/b/h/e;->B0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public V(ZI)Z
    .locals 13

    iget-object v0, p0, La/f/b/h/e;->o0:La/f/b/h/l/e;

    .line 1
    sget-object v1, La/f/b/h/d$a;->e:La/f/b/h/d$a;

    sget-object v2, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    sget-object v3, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    const/4 v4, 0x1

    and-int/2addr p1, v4

    iget-object v5, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, La/f/b/h/d;->k(I)La/f/b/h/d$a;

    move-result-object v5

    iget-object v7, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    invoke-virtual {v7, v4}, La/f/b/h/d;->k(I)La/f/b/h/d$a;

    move-result-object v7

    iget-object v8, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    invoke-virtual {v8}, La/f/b/h/d;->s()I

    move-result v8

    iget-object v9, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    invoke-virtual {v9}, La/f/b/h/d;->t()I

    move-result v9

    if-eqz p1, :cond_4

    if-eq v5, v2, :cond_0

    if-ne v7, v2, :cond_4

    :cond_0
    iget-object v10, v0, La/f/b/h/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/f/b/h/l/o;

    iget v12, v11, La/f/b/h/l/o;->f:I

    if-ne v12, p2, :cond_1

    invoke-virtual {v11}, La/f/b/h/l/o;->k()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-ne v5, v2, :cond_4

    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    .line 2
    iget-object v2, p1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aput-object v3, v2, v6

    .line 3
    invoke-virtual {v0, p1, v6}, La/f/b/h/l/e;->d(La/f/b/h/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, La/f/b/h/d;->M(I)V

    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v2, p1, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {p1}, La/f/b/h/d;->r()I

    move-result p1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne v7, v2, :cond_4

    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    .line 4
    iget-object v2, p1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aput-object v3, v2, v4

    .line 5
    invoke-virtual {v0, p1, v4}, La/f/b/h/l/e;->d(La/f/b/h/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, La/f/b/h/d;->H(I)V

    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v2, p1, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {p1}, La/f/b/h/d;->l()I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, La/f/b/h/l/g;->c(I)V

    :cond_4
    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v2, p1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    if-nez p2, :cond_6

    aget-object v9, v2, v6

    if-eq v9, v3, :cond_5

    aget-object v2, v2, v6

    if-ne v2, v1, :cond_7

    :cond_5
    invoke-virtual {p1}, La/f/b/h/d;->r()I

    move-result p1

    add-int/2addr p1, v8

    iget-object v1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v1, v1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    invoke-virtual {v1, p1}, La/f/b/h/l/f;->c(I)V

    iget-object v1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v1, v1, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    sub-int/2addr p1, v8

    goto :goto_2

    :cond_6
    aget-object v8, v2, v4

    if-eq v8, v3, :cond_8

    aget-object v2, v2, v4

    if-ne v2, v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {p1}, La/f/b/h/d;->l()I

    move-result p1

    add-int/2addr p1, v9

    iget-object v1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v1, v1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    invoke-virtual {v1, p1}, La/f/b/h/l/f;->c(I)V

    iget-object v1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v1, v1, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    sub-int/2addr p1, v9

    :goto_2
    invoke-virtual {v1, p1}, La/f/b/h/l/g;->c(I)V

    const/4 p1, 0x1

    :goto_3
    invoke-virtual {v0}, La/f/b/h/l/e;->g()V

    iget-object v1, v0, La/f/b/h/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/f/b/h/l/o;

    iget v3, v2, La/f/b/h/l/o;->f:I

    if-eq v3, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v3, v2, La/f/b/h/l/o;->b:La/f/b/h/d;

    iget-object v8, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    if-ne v3, v8, :cond_a

    iget-boolean v3, v2, La/f/b/h/l/o;->g:Z

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, La/f/b/h/l/o;->e()V

    goto :goto_4

    :cond_b
    iget-object v1, v0, La/f/b/h/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/f/b/h/l/o;

    iget v3, v2, La/f/b/h/l/o;->f:I

    if-eq v3, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v3, v2, La/f/b/h/l/o;->b:La/f/b/h/d;

    iget-object v8, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    if-ne v3, v8, :cond_e

    goto :goto_5

    :cond_e
    iget-object v3, v2, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v3, v3, La/f/b/h/l/f;->j:Z

    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    iget-object v3, v2, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v3, v3, La/f/b/h/l/f;->j:Z

    if-nez v3, :cond_10

    goto :goto_6

    :cond_10
    instance-of v3, v2, La/f/b/h/l/c;

    if-nez v3, :cond_c

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v2, v2, La/f/b/h/l/f;->j:Z

    if-nez v2, :cond_c

    :goto_6
    const/4 v4, 0x0

    :cond_11
    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    invoke-virtual {p1, v5}, La/f/b/h/d;->I(La/f/b/h/d$a;)V

    iget-object p1, v0, La/f/b/h/l/e;->a:La/f/b/h/e;

    invoke-virtual {p1, v7}, La/f/b/h/d;->L(La/f/b/h/d$a;)V

    return v4
.end method

.method public W()V
    .locals 2

    iget-object v0, p0, La/f/b/h/e;->o0:La/f/b/h/l/e;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, La/f/b/h/l/e;->b:Z

    return-void
.end method

.method public Y(I)Z
    .locals 1

    iget v0, p0, La/f/b/h/e;->y0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Z(I)V
    .locals 0

    iput p1, p0, La/f/b/h/e;->y0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, La/f/b/h/e;->Y(I)Z

    move-result p1

    sput-boolean p1, La/f/b/d;->p:Z

    return-void
.end method
