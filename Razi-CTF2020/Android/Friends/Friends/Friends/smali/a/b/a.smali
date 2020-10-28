.class public final La/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Z

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z


# direct methods
.method public static a(La/f/b/h/e;La/f/b/d;Ljava/util/ArrayList;I)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/b/h/e;",
            "La/f/b/d;",
            "Ljava/util/ArrayList<",
            "La/f/b/h/d;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    sget-object v12, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    const/4 v13, 0x2

    if-nez p3, :cond_0

    iget v1, v0, La/f/b/h/e;->u0:I

    iget-object v2, v0, La/f/b/h/e;->x0:[La/f/b/h/b;

    move v15, v1

    move-object/from16 v16, v2

    const/16 v17, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, La/f/b/h/e;->v0:I

    iget-object v2, v0, La/f/b/h/e;->w0:[La/f/b/h/b;

    move v15, v1

    move-object/from16 v16, v2

    const/16 v17, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_6f

    aget-object v1, v16, v9

    .line 1
    iget-boolean v2, v1, La/f/b/h/b;->t:Z

    const/16 v18, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    if-nez v2, :cond_19

    .line 2
    iget v2, v1, La/f/b/h/b;->o:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v5, v1, La/f/b/h/b;->a:La/f/b/h/d;

    move-object v6, v5

    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_14

    iget v14, v1, La/f/b/h/b;->i:I

    add-int/2addr v14, v4

    iput v14, v1, La/f/b/h/b;->i:I

    iget-object v14, v5, La/f/b/h/d;->j0:[La/f/b/h/d;

    iget v3, v1, La/f/b/h/b;->o:I

    aput-object v18, v14, v3

    iget-object v14, v5, La/f/b/h/d;->i0:[La/f/b/h/d;

    aput-object v18, v14, v3

    .line 3
    iget v14, v5, La/f/b/h/d;->d0:I

    if-eq v14, v8, :cond_f

    .line 4
    iget v14, v1, La/f/b/h/b;->l:I

    add-int/2addr v14, v4

    iput v14, v1, La/f/b/h/b;->l:I

    invoke-virtual {v5, v3}, La/f/b/h/d;->k(I)La/f/b/h/d$a;

    move-result-object v3

    if-eq v3, v12, :cond_3

    iget v3, v1, La/f/b/h/b;->m:I

    iget v14, v1, La/f/b/h/b;->o:I

    if-nez v14, :cond_1

    .line 5
    invoke-virtual {v5}, La/f/b/h/d;->r()I

    move-result v14

    goto :goto_3

    :cond_1
    if-ne v14, v4, :cond_2

    invoke-virtual {v5}, La/f/b/h/d;->l()I

    move-result v14

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    add-int/2addr v3, v14

    .line 6
    iput v3, v1, La/f/b/h/b;->m:I

    :cond_3
    iget v3, v1, La/f/b/h/b;->m:I

    iget-object v14, v5, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v14, v14, v2

    invoke-virtual {v14}, La/f/b/h/c;->d()I

    move-result v14

    add-int/2addr v14, v3

    iput v14, v1, La/f/b/h/b;->m:I

    iget-object v3, v5, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v21, v2, 0x1

    aget-object v3, v3, v21

    invoke-virtual {v3}, La/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v1, La/f/b/h/b;->m:I

    iget v3, v1, La/f/b/h/b;->n:I

    iget-object v14, v5, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v14, v14, v2

    invoke-virtual {v14}, La/f/b/h/c;->d()I

    move-result v14

    add-int/2addr v14, v3

    iput v14, v1, La/f/b/h/b;->n:I

    iget-object v3, v5, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v3, v3, v21

    invoke-virtual {v3}, La/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v14

    iput v3, v1, La/f/b/h/b;->n:I

    iget-object v3, v1, La/f/b/h/b;->b:La/f/b/h/d;

    if-nez v3, :cond_4

    iput-object v5, v1, La/f/b/h/b;->b:La/f/b/h/d;

    :cond_4
    iput-object v5, v1, La/f/b/h/b;->d:La/f/b/h/d;

    iget-object v3, v5, La/f/b/h/d;->P:[La/f/b/h/d$a;

    iget v14, v1, La/f/b/h/b;->o:I

    aget-object v8, v3, v14

    if-ne v8, v12, :cond_f

    iget-object v8, v5, La/f/b/h/d;->o:[I

    aget v22, v8, v14

    const/4 v4, 0x3

    if-eqz v22, :cond_6

    aget v13, v8, v14

    if-eq v13, v4, :cond_6

    aget v13, v8, v14

    const/4 v4, 0x2

    if-ne v13, v4, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v25, v7

    goto :goto_8

    :cond_6
    :goto_4
    iget v4, v1, La/f/b/h/b;->j:I

    const/4 v13, 0x1

    add-int/2addr v4, v13

    iput v4, v1, La/f/b/h/b;->j:I

    iget-object v4, v5, La/f/b/h/d;->h0:[F

    aget v13, v4, v14

    const/16 v20, 0x0

    cmpl-float v25, v13, v20

    if-lez v25, :cond_7

    move/from16 v25, v7

    iget v7, v1, La/f/b/h/b;->k:F

    aget v4, v4, v14

    add-float/2addr v7, v4

    iput v7, v1, La/f/b/h/b;->k:F

    goto :goto_5

    :cond_7
    move/from16 v25, v7

    .line 7
    :goto_5
    iget v4, v5, La/f/b/h/d;->d0:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_9

    .line 8
    aget-object v3, v3, v14

    if-ne v3, v12, :cond_9

    aget v3, v8, v14

    if-eqz v3, :cond_8

    aget v3, v8, v14

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    cmpg-float v4, v13, v3

    if-gez v4, :cond_a

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, La/f/b/h/b;->q:Z

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    iput-boolean v3, v1, La/f/b/h/b;->r:Z

    :goto_7
    iget-object v3, v1, La/f/b/h/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, La/f/b/h/b;->h:Ljava/util/ArrayList;

    :cond_b
    iget-object v3, v1, La/f/b/h/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v3, v1, La/f/b/h/b;->f:La/f/b/h/d;

    if-nez v3, :cond_d

    iput-object v5, v1, La/f/b/h/b;->f:La/f/b/h/d;

    :cond_d
    iget-object v3, v1, La/f/b/h/b;->g:La/f/b/h/d;

    if-eqz v3, :cond_e

    iget-object v3, v3, La/f/b/h/d;->i0:[La/f/b/h/d;

    iget v4, v1, La/f/b/h/b;->o:I

    aput-object v5, v3, v4

    :cond_e
    iput-object v5, v1, La/f/b/h/b;->g:La/f/b/h/d;

    :goto_8
    iget v3, v1, La/f/b/h/b;->o:I

    goto :goto_9

    :cond_f
    move/from16 v25, v7

    :goto_9
    if-eq v6, v5, :cond_10

    iget-object v3, v6, La/f/b/h/d;->j0:[La/f/b/h/d;

    iget v4, v1, La/f/b/h/b;->o:I

    aput-object v5, v3, v4

    :cond_10
    iget-object v3, v5, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v3, :cond_11

    iget-object v3, v3, La/f/b/h/c;->d:La/f/b/h/d;

    iget-object v4, v3, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v4, v2

    iget-object v6, v6, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v6, :cond_11

    aget-object v4, v4, v2

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v4, v4, La/f/b/h/c;->d:La/f/b/h/d;

    if-eq v4, v5, :cond_12

    :cond_11
    move-object/from16 v3, v18

    :cond_12
    if-eqz v3, :cond_13

    move/from16 v7, v25

    goto :goto_a

    :cond_13
    move-object v3, v5

    const/4 v7, 0x1

    :goto_a
    move-object v6, v5

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v13, 0x2

    move-object v5, v3

    goto/16 :goto_2

    :cond_14
    iget-object v3, v1, La/f/b/h/b;->b:La/f/b/h/d;

    if-eqz v3, :cond_15

    iget v4, v1, La/f/b/h/b;->m:I

    iget-object v3, v3, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v3, v3, v2

    invoke-virtual {v3}, La/f/b/h/c;->d()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v1, La/f/b/h/b;->m:I

    :cond_15
    iget-object v3, v1, La/f/b/h/b;->d:La/f/b/h/d;

    if-eqz v3, :cond_16

    iget v4, v1, La/f/b/h/b;->m:I

    iget-object v3, v3, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, La/f/b/h/c;->d()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v1, La/f/b/h/b;->m:I

    :cond_16
    iput-object v5, v1, La/f/b/h/b;->c:La/f/b/h/d;

    iget v2, v1, La/f/b/h/b;->o:I

    if-nez v2, :cond_17

    iget-boolean v2, v1, La/f/b/h/b;->p:Z

    if-eqz v2, :cond_17

    iput-object v5, v1, La/f/b/h/b;->e:La/f/b/h/d;

    goto :goto_b

    :cond_17
    iget-object v2, v1, La/f/b/h/b;->a:La/f/b/h/d;

    iput-object v2, v1, La/f/b/h/b;->e:La/f/b/h/d;

    :goto_b
    iget-boolean v2, v1, La/f/b/h/b;->r:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, La/f/b/h/b;->q:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v1, La/f/b/h/b;->s:Z

    :cond_19
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, La/f/b/h/b;->t:Z

    if-eqz v11, :cond_1b

    .line 11
    iget-object v2, v1, La/f/b/h/b;->a:La/f/b/h/d;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    move/from16 v21, v9

    move-object/from16 v19, v12

    move/from16 v30, v15

    const/16 v24, 0x2

    goto/16 :goto_4a

    .line 12
    :cond_1b
    :goto_d
    iget-object v13, v1, La/f/b/h/b;->a:La/f/b/h/d;

    iget-object v14, v1, La/f/b/h/b;->c:La/f/b/h/d;

    iget-object v8, v1, La/f/b/h/b;->b:La/f/b/h/d;

    iget-object v7, v1, La/f/b/h/b;->d:La/f/b/h/d;

    iget-object v2, v1, La/f/b/h/b;->e:La/f/b/h/d;

    iget v3, v1, La/f/b/h/b;->k:F

    iget-object v4, v0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v4, v4, p3

    sget-object v5, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :goto_e
    if-nez p3, :cond_20

    iget v5, v2, La/f/b/h/d;->f0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v23, 0x1

    goto :goto_f

    :cond_1d
    const/16 v23, 0x0

    :goto_f
    move/from16 v24, v9

    const/4 v9, 0x2

    if-ne v5, v6, :cond_1e

    const/16 v22, 0x1

    goto :goto_10

    :cond_1e
    const/16 v22, 0x0

    :goto_10
    if-ne v5, v9, :cond_1f

    move/from16 v5, v23

    goto :goto_13

    :cond_1f
    move/from16 v5, v23

    goto :goto_14

    :cond_20
    move/from16 v24, v9

    const/4 v6, 0x1

    const/4 v9, 0x2

    iget v5, v2, La/f/b/h/d;->g0:I

    if-nez v5, :cond_21

    const/16 v22, 0x1

    goto :goto_11

    :cond_21
    const/16 v22, 0x0

    :goto_11
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x0

    :goto_12
    if-ne v5, v9, :cond_23

    move/from16 v5, v22

    move/from16 v22, v6

    :goto_13
    move/from16 v25, v22

    move/from16 v22, v5

    const/4 v5, 0x1

    goto :goto_15

    :cond_23
    move/from16 v5, v22

    move/from16 v22, v6

    :goto_14
    move/from16 v25, v22

    move/from16 v22, v5

    const/4 v5, 0x0

    :goto_15
    move/from16 v27, v3

    move-object v9, v13

    const/4 v6, 0x0

    :goto_16
    if-nez v6, :cond_30

    iget-object v3, v9, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v3, v3, v17

    if-eqz v5, :cond_24

    const/16 v29, 0x1

    goto :goto_17

    :cond_24
    const/16 v29, 0x4

    :goto_17
    invoke-virtual {v3}, La/f/b/h/c;->d()I

    move-result v30

    move/from16 v31, v6

    iget-object v6, v9, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v6, v6, p3

    if-ne v6, v12, :cond_25

    iget-object v6, v9, La/f/b/h/d;->o:[I

    aget v6, v6, p3

    if-nez v6, :cond_25

    const/4 v6, 0x1

    goto :goto_18

    :cond_25
    const/4 v6, 0x0

    :goto_18
    iget-object v11, v3, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v11, :cond_26

    if-eq v9, v13, :cond_26

    invoke-virtual {v11}, La/f/b/h/c;->d()I

    move-result v11

    add-int v30, v11, v30

    :cond_26
    move/from16 v11, v30

    if-eqz v5, :cond_27

    if-eq v9, v13, :cond_27

    if-eq v9, v8, :cond_27

    move/from16 v30, v15

    const/16 v29, 0x8

    goto :goto_19

    :cond_27
    move/from16 v30, v15

    :goto_19
    iget-object v15, v3, La/f/b/h/c;->f:La/f/b/h/c;

    move-object/from16 v32, v2

    if-eqz v15, :cond_2a

    if-ne v9, v8, :cond_28

    iget-object v2, v3, La/f/b/h/c;->i:La/f/b/g;

    iget-object v15, v15, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v33, v13

    const/4 v13, 0x6

    invoke-virtual {v10, v2, v15, v11, v13}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    goto :goto_1a

    :cond_28
    move-object/from16 v33, v13

    iget-object v2, v3, La/f/b/h/c;->i:La/f/b/g;

    iget-object v13, v15, La/f/b/h/c;->i:La/f/b/g;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v13, v11, v15}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :goto_1a
    if-eqz v6, :cond_29

    if-nez v5, :cond_29

    const/4 v2, 0x5

    goto :goto_1b

    :cond_29
    move/from16 v2, v29

    :goto_1b
    iget-object v6, v3, La/f/b/h/c;->i:La/f/b/g;

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v10, v6, v3, v11, v2}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_1c

    :cond_2a
    move-object/from16 v33, v13

    :goto_1c
    if-eqz v4, :cond_2c

    .line 13
    iget v2, v9, La/f/b/h/d;->d0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2b

    .line 14
    iget-object v2, v9, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v2, v2, p3

    if-ne v2, v12, :cond_2b

    iget-object v2, v9, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    aget-object v2, v2, v17

    iget-object v2, v2, La/f/b/h/c;->i:La/f/b/g;

    const/4 v6, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v2, v11, v6}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    goto :goto_1d

    :cond_2b
    const/4 v11, 0x0

    :goto_1d
    iget-object v2, v9, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v2, v2, v17

    iget-object v2, v2, La/f/b/h/c;->i:La/f/b/g;

    iget-object v3, v0, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v3, v3, v17

    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v11, v6}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_2c
    iget-object v2, v9, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v2, :cond_2d

    iget-object v2, v2, La/f/b/h/c;->d:La/f/b/h/d;

    iget-object v3, v2, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v3, v17

    iget-object v6, v6, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v6, :cond_2d

    aget-object v3, v3, v17

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->d:La/f/b/h/d;

    if-eq v3, v9, :cond_2e

    :cond_2d
    move-object/from16 v2, v18

    :cond_2e
    if-eqz v2, :cond_2f

    move-object v9, v2

    move/from16 v6, v31

    goto :goto_1e

    :cond_2f
    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v11, p2

    move/from16 v15, v30

    move-object/from16 v2, v32

    move-object/from16 v13, v33

    goto/16 :goto_16

    :cond_30
    move-object/from16 v32, v2

    move-object/from16 v33, v13

    move/from16 v30, v15

    if-eqz v7, :cond_34

    iget-object v2, v14, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v2, :cond_34

    iget-object v2, v7, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v2, v2, v3

    iget-object v6, v7, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v6, v6, p3

    if-ne v6, v12, :cond_31

    iget-object v6, v7, La/f/b/h/d;->o:[I

    aget v6, v6, p3

    if-nez v6, :cond_31

    const/4 v13, 0x1

    goto :goto_1f

    :cond_31
    const/4 v13, 0x0

    :goto_1f
    if-eqz v13, :cond_32

    if-nez v5, :cond_32

    iget-object v6, v2, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v9, v6, La/f/b/h/c;->d:La/f/b/h/d;

    if-ne v9, v0, :cond_32

    iget-object v9, v2, La/f/b/h/c;->i:La/f/b/g;

    iget-object v6, v6, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v2}, La/f/b/h/c;->d()I

    move-result v11

    neg-int v11, v11

    const/4 v13, 0x5

    invoke-virtual {v10, v9, v6, v11, v13}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_20

    :cond_32
    const/4 v13, 0x5

    if-eqz v5, :cond_33

    iget-object v6, v2, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v9, v6, La/f/b/h/c;->d:La/f/b/h/d;

    if-ne v9, v0, :cond_33

    iget-object v9, v2, La/f/b/h/c;->i:La/f/b/g;

    iget-object v6, v6, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v2}, La/f/b/h/c;->d()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v11, v15}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_21

    :cond_33
    :goto_20
    const/4 v15, 0x4

    :goto_21
    iget-object v6, v2, La/f/b/h/c;->i:La/f/b/g;

    iget-object v9, v14, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v3, v9, v3

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v2}, La/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    invoke-virtual {v10, v6, v3, v2, v9}, La/f/b/d;->g(La/f/b/g;La/f/b/g;II)V

    goto :goto_22

    :cond_34
    const/4 v13, 0x5

    const/4 v15, 0x4

    :goto_22
    if-eqz v4, :cond_35

    iget-object v2, v0, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, La/f/b/h/c;->i:La/f/b/g;

    iget-object v4, v14, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v4, v3

    iget-object v6, v6, La/f/b/h/c;->i:La/f/b/g;

    aget-object v3, v4, v3

    invoke-virtual {v3}, La/f/b/h/c;->d()I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v6, v3, v4}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_35
    iget-object v2, v1, La/f/b/h/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    iget-boolean v6, v1, La/f/b/h/b;->q:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, La/f/b/h/b;->s:Z

    if-nez v6, :cond_36

    iget v6, v1, La/f/b/h/b;->j:I

    int-to-float v6, v6

    goto :goto_23

    :cond_36
    move/from16 v6, v27

    :goto_23
    move-object/from16 v4, v18

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_24
    if-ge v11, v3, :cond_3f

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v13, v27

    check-cast v13, La/f/b/h/d;

    iget-object v15, v13, La/f/b/h/d;->h0:[F

    aget v15, v15, p3

    const/16 v20, 0x0

    cmpg-float v27, v15, v20

    if-gez v27, :cond_38

    iget-boolean v15, v1, La/f/b/h/b;->s:Z

    if-eqz v15, :cond_37

    iget-object v0, v13, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v13, v17, 0x1

    aget-object v13, v0, v13

    iget-object v13, v13, La/f/b/h/c;->i:La/f/b/g;

    aget-object v0, v0, v17

    iget-object v0, v0, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v19, v12

    move-object v15, v13

    const/4 v12, 0x0

    const/4 v13, 0x4

    goto :goto_25

    :cond_37
    const/high16 v15, 0x3f800000    # 1.0f

    :cond_38
    const/16 v20, 0x0

    cmpl-float v27, v15, v20

    if-nez v27, :cond_39

    iget-object v0, v13, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v13, v17, 0x1

    aget-object v13, v0, v13

    iget-object v13, v13, La/f/b/h/c;->i:La/f/b/g;

    aget-object v0, v0, v17

    iget-object v0, v0, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v19, v12

    move-object v15, v13

    const/4 v12, 0x0

    const/16 v13, 0x8

    :goto_25
    invoke-virtual {v10, v15, v0, v12, v13}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    move-object/from16 v20, v1

    move-object/from16 v34, v2

    move/from16 v28, v3

    goto/16 :goto_29

    :cond_39
    move-object/from16 v19, v12

    const/4 v12, 0x0

    if-eqz v4, :cond_3e

    iget-object v4, v4, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v12, v4, v17

    iget-object v12, v12, La/f/b/h/c;->i:La/f/b/g;

    add-int/lit8 v28, v17, 0x1

    aget-object v4, v4, v28

    iget-object v4, v4, La/f/b/h/c;->i:La/f/b/g;

    iget-object v0, v13, La/f/b/h/d;->M:[La/f/b/h/c;

    move-object/from16 v34, v2

    aget-object v2, v0, v17

    iget-object v2, v2, La/f/b/h/c;->i:La/f/b/g;

    aget-object v0, v0, v28

    iget-object v0, v0, La/f/b/h/c;->i:La/f/b/g;

    move/from16 v28, v3

    invoke-virtual/range {p1 .. p1}, La/f/b/d;->m()La/f/b/b;

    move-result-object v3

    move-object/from16 v35, v13

    const/4 v13, 0x0

    .line 15
    iput v13, v3, La/f/b/b;->b:F

    move-object/from16 v20, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v36, v6, v13

    if-eqz v36, :cond_3d

    cmpl-float v36, v9, v15

    if-nez v36, :cond_3a

    goto :goto_26

    :cond_3a
    cmpl-float v36, v9, v13

    if-nez v36, :cond_3b

    iget-object v0, v3, La/f/b/b;->d:La/f/b/b$a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v12, v2}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v0, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v0, v4, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    goto :goto_27

    :cond_3b
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v36, v15, v13

    if-nez v36, :cond_3c

    iget-object v4, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v4, v2, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v1, v3, La/f/b/b;->d:La/f/b/b$a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2}, La/f/b/b$a;->j(La/f/b/g;F)V

    goto :goto_27

    :cond_3c
    const/high16 v13, -0x40800000    # -1.0f

    div-float/2addr v9, v6

    div-float v36, v15, v6

    div-float v9, v9, v36

    iget-object v13, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v13, v12, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v1, v3, La/f/b/b;->d:La/f/b/b$a;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-interface {v1, v4, v13}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v1, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v1, v0, v9}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v0, v3, La/f/b/b;->d:La/f/b/b$a;

    neg-float v1, v9

    invoke-interface {v0, v2, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    goto :goto_27

    :cond_3d
    :goto_26
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    iget-object v9, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v9, v12, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v9, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v9, v4, v13}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v4, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v4, v0, v1}, La/f/b/b$a;->j(La/f/b/g;F)V

    iget-object v0, v3, La/f/b/b;->d:La/f/b/b$a;

    invoke-interface {v0, v2, v13}, La/f/b/b$a;->j(La/f/b/g;F)V

    .line 16
    :goto_27
    invoke-virtual {v10, v3}, La/f/b/d;->c(La/f/b/b;)V

    goto :goto_28

    :cond_3e
    move-object/from16 v20, v1

    move-object/from16 v34, v2

    move/from16 v28, v3

    move-object/from16 v35, v13

    :goto_28
    move v9, v15

    move-object/from16 v4, v35

    :goto_29
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x5

    const/4 v15, 0x4

    move-object/from16 v0, p0

    move-object/from16 v12, v19

    move-object/from16 v1, v20

    move/from16 v3, v28

    move-object/from16 v2, v34

    goto/16 :goto_24

    :cond_3f
    move-object/from16 v20, v1

    move-object/from16 v19, v12

    if-eqz v8, :cond_45

    if-eq v8, v7, :cond_40

    if-eqz v5, :cond_45

    :cond_40
    move-object/from16 v0, v33

    iget-object v0, v0, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v0, v0, v17

    iget-object v1, v14, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v2, v17, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_41

    iget-object v0, v0, La/f/b/h/c;->i:La/f/b/g;

    move-object v3, v0

    goto :goto_2a

    :cond_41
    move-object/from16 v3, v18

    :goto_2a
    iget-object v0, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_42

    iget-object v0, v0, La/f/b/h/c;->i:La/f/b/g;

    move-object v6, v0

    goto :goto_2b

    :cond_42
    move-object/from16 v6, v18

    :goto_2b
    iget-object v0, v8, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v0, v0, v17

    iget-object v1, v7, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v1, v2

    if-eqz v3, :cond_44

    if-eqz v6, :cond_44

    move-object/from16 v2, v32

    if-nez p3, :cond_43

    iget v2, v2, La/f/b/h/d;->a0:F

    goto :goto_2c

    :cond_43
    iget v2, v2, La/f/b/h/d;->b0:F

    :goto_2c
    move v5, v2

    invoke-virtual {v0}, La/f/b/h/c;->d()I

    move-result v4

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v9

    iget-object v2, v0, La/f/b/h/c;->i:La/f/b/g;

    iget-object v0, v1, La/f/b/h/c;->i:La/f/b/g;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v12, v7

    move-object v7, v0

    move-object v13, v8

    move v8, v9

    move/from16 v15, v24

    const/16 v24, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    goto/16 :goto_45

    :cond_44
    move-object v12, v7

    move-object v13, v8

    move/from16 v15, v24

    const/16 v24, 0x2

    goto/16 :goto_45

    :cond_45
    move-object v12, v7

    move-object v13, v8

    move/from16 v15, v24

    move-object/from16 v0, v33

    const/16 v24, 0x2

    if-eqz v22, :cond_57

    if-eqz v13, :cond_57

    move-object/from16 v1, v20

    iget v2, v1, La/f/b/h/b;->j:I

    if-lez v2, :cond_46

    iget v1, v1, La/f/b/h/b;->i:I

    if-ne v1, v2, :cond_46

    const/16 v23, 0x1

    goto :goto_2d

    :cond_46
    const/16 v23, 0x0

    :goto_2d
    move-object v9, v13

    move-object v11, v9

    :goto_2e
    if-eqz v11, :cond_66

    iget-object v1, v11, La/f/b/h/d;->j0:[La/f/b/h/d;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_2f
    if-eqz v8, :cond_47

    .line 17
    iget v1, v8, La/f/b/h/d;->d0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_48

    .line 18
    iget-object v1, v8, La/f/b/h/d;->j0:[La/f/b/h/d;

    aget-object v8, v1, p3

    goto :goto_2f

    :cond_47
    const/16 v7, 0x8

    :cond_48
    if-nez v8, :cond_4a

    if-ne v11, v12, :cond_49

    goto :goto_30

    :cond_49
    move-object/from16 v21, v8

    move-object/from16 v20, v9

    goto/16 :goto_37

    :cond_4a
    :goto_30
    iget-object v1, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v1, v17

    iget-object v2, v1, La/f/b/h/c;->i:La/f/b/g;

    iget-object v3, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v3, :cond_4b

    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    goto :goto_31

    :cond_4b
    move-object/from16 v3, v18

    :goto_31
    if-eq v9, v11, :cond_4c

    iget-object v3, v9, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v3, v3, v4

    goto :goto_32

    :cond_4c
    if-ne v11, v13, :cond_4e

    if-ne v9, v11, :cond_4e

    iget-object v3, v0, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v4, v3, v17

    iget-object v4, v4, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v4, :cond_4d

    aget-object v3, v3, v17

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    :goto_32
    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    goto :goto_33

    :cond_4d
    move-object/from16 v3, v18

    :cond_4e
    :goto_33
    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v1

    iget-object v4, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v5, v17, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, La/f/b/h/c;->d()I

    move-result v4

    if-eqz v8, :cond_4f

    iget-object v6, v8, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v6, v17

    iget-object v7, v6, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v20, v6

    iget-object v6, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v6, v5

    goto :goto_35

    :cond_4f
    iget-object v6, v14, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v6, v5

    iget-object v6, v6, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v6, :cond_50

    iget-object v7, v6, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v20, v6

    goto :goto_34

    :cond_50
    move-object/from16 v20, v6

    move-object/from16 v7, v18

    :goto_34
    iget-object v6, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v6, v5

    :goto_35
    iget-object v6, v6, La/f/b/h/c;->i:La/f/b/g;

    if-eqz v20, :cond_51

    invoke-virtual/range {v20 .. v20}, La/f/b/h/c;->d()I

    move-result v20

    add-int v4, v4, v20

    :cond_51
    move/from16 v20, v4

    if-eqz v9, :cond_52

    iget-object v4, v9, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v4, v4, v5

    invoke-virtual {v4}, La/f/b/h/c;->d()I

    move-result v4

    add-int/2addr v1, v4

    :cond_52
    if-eqz v2, :cond_49

    if-eqz v3, :cond_49

    if-eqz v7, :cond_49

    if-eqz v6, :cond_49

    if-ne v11, v13, :cond_53

    iget-object v1, v13, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v1, v17

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v1

    :cond_53
    move v4, v1

    if-ne v11, v12, :cond_54

    iget-object v1, v12, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v1, v5

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v1

    move/from16 v20, v1

    :cond_54
    if-eqz v23, :cond_55

    const/16 v26, 0x8

    goto :goto_36

    :cond_55
    const/16 v26, 0x5

    :goto_36
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object/from16 v28, v6

    move-object v6, v7

    const/16 v21, 0x8

    move-object/from16 v7, v28

    move-object/from16 v21, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    .line 19
    :goto_37
    iget v1, v11, La/f/b/h/d;->d0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_56

    move-object/from16 v20, v11

    :cond_56
    move-object/from16 v9, v20

    move-object/from16 v11, v21

    goto/16 :goto_2e

    :cond_57
    move-object/from16 v1, v20

    const/16 v9, 0x8

    if-eqz v25, :cond_66

    if-eqz v13, :cond_66

    .line 20
    iget v2, v1, La/f/b/h/b;->j:I

    if-lez v2, :cond_58

    iget v1, v1, La/f/b/h/b;->i:I

    if-ne v1, v2, :cond_58

    const/16 v23, 0x1

    goto :goto_38

    :cond_58
    const/16 v23, 0x0

    :goto_38
    move-object v8, v13

    move-object v11, v8

    :goto_39
    if-eqz v11, :cond_63

    iget-object v1, v11, La/f/b/h/d;->j0:[La/f/b/h/d;

    aget-object v1, v1, p3

    :goto_3a
    if-eqz v1, :cond_59

    .line 21
    iget v2, v1, La/f/b/h/d;->d0:I

    if-ne v2, v9, :cond_59

    .line 22
    iget-object v1, v1, La/f/b/h/d;->j0:[La/f/b/h/d;

    aget-object v1, v1, p3

    goto :goto_3a

    :cond_59
    if-eq v11, v13, :cond_61

    if-eq v11, v12, :cond_61

    if-eqz v1, :cond_61

    if-ne v1, v12, :cond_5a

    move-object/from16 v7, v18

    goto :goto_3b

    :cond_5a
    move-object v7, v1

    :goto_3b
    iget-object v1, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v1, v17

    iget-object v2, v1, La/f/b/h/c;->i:La/f/b/g;

    iget-object v3, v8, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v4, v17, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v1

    iget-object v5, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v5, v5, v4

    invoke-virtual {v5}, La/f/b/h/c;->d()I

    move-result v5

    if-eqz v7, :cond_5c

    iget-object v6, v7, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v6, v17

    iget-object v9, v6, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v20, v7

    iget-object v7, v6, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v7, :cond_5b

    goto :goto_3d

    :cond_5b
    move-object/from16 v7, v18

    goto :goto_3e

    :cond_5c
    move-object/from16 v20, v7

    iget-object v6, v12, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v6, v6, v17

    if-eqz v6, :cond_5d

    iget-object v7, v6, La/f/b/h/c;->i:La/f/b/g;

    move-object v9, v7

    goto :goto_3c

    :cond_5d
    move-object/from16 v9, v18

    :goto_3c
    iget-object v7, v11, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v7, v7, v4

    :goto_3d
    iget-object v7, v7, La/f/b/h/c;->i:La/f/b/g;

    :goto_3e
    if-eqz v6, :cond_5e

    invoke-virtual {v6}, La/f/b/h/c;->d()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v21, v6

    goto :goto_3f

    :cond_5e
    move/from16 v21, v5

    :goto_3f
    iget-object v5, v8, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v4, v5, v4

    invoke-virtual {v4}, La/f/b/h/c;->d()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v23, :cond_5f

    const/16 v26, 0x8

    goto :goto_40

    :cond_5f
    const/16 v26, 0x4

    :goto_40
    if-eqz v2, :cond_60

    if-eqz v3, :cond_60

    if-eqz v9, :cond_60

    if-eqz v7, :cond_60

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/16 v28, 0x4

    move-object v6, v9

    move-object/from16 v29, v8

    move/from16 v8, v21

    move/from16 v21, v15

    const/16 v15, 0x8

    move/from16 v9, v26

    invoke-virtual/range {v1 .. v9}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    goto :goto_41

    :cond_60
    move-object/from16 v29, v8

    move/from16 v21, v15

    const/16 v15, 0x8

    const/16 v28, 0x4

    :goto_41
    move-object/from16 v8, v20

    goto :goto_42

    :cond_61
    move-object/from16 v29, v8

    move/from16 v21, v15

    const/16 v15, 0x8

    const/16 v28, 0x4

    move-object v8, v1

    .line 23
    :goto_42
    iget v1, v11, La/f/b/h/d;->d0:I

    if-eq v1, v15, :cond_62

    move-object/from16 v29, v11

    :cond_62
    move-object v11, v8

    move/from16 v15, v21

    move-object/from16 v8, v29

    const/16 v9, 0x8

    goto/16 :goto_39

    :cond_63
    move/from16 v21, v15

    .line 24
    iget-object v1, v13, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v1, v17

    iget-object v0, v0, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v0, v0, v17

    iget-object v0, v0, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v2, v12, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v11, v2, v3

    iget-object v2, v14, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v2, v2, v3

    iget-object v15, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_65

    if-eq v13, v12, :cond_64

    iget-object v2, v1, La/f/b/h/c;->i:La/f/b/g;

    iget-object v0, v0, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v1

    const/4 v9, 0x5

    invoke-virtual {v10, v2, v0, v1, v9}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_43

    :cond_64
    const/4 v9, 0x5

    if-eqz v15, :cond_65

    iget-object v2, v1, La/f/b/h/c;->i:La/f/b/g;

    iget-object v3, v0, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, La/f/b/h/c;->i:La/f/b/g;

    iget-object v7, v15, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v11}, La/f/b/h/c;->d()I

    move-result v8

    const/4 v0, 0x5

    move-object/from16 v1, p1

    move-object/from16 v20, v14

    const/4 v14, 0x5

    move v9, v0

    invoke-virtual/range {v1 .. v9}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    goto :goto_44

    :cond_65
    :goto_43
    move-object/from16 v20, v14

    const/4 v14, 0x5

    :goto_44
    if-eqz v15, :cond_67

    if-eq v13, v12, :cond_67

    iget-object v0, v11, La/f/b/h/c;->i:La/f/b/g;

    iget-object v1, v15, La/f/b/h/c;->i:La/f/b/g;

    invoke-virtual {v11}, La/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v0, v1, v2, v14}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_46

    :cond_66
    :goto_45
    move-object/from16 v20, v14

    move/from16 v21, v15

    :cond_67
    :goto_46
    if-nez v22, :cond_68

    if-eqz v25, :cond_6e

    :cond_68
    if-eqz v13, :cond_6e

    if-eq v13, v12, :cond_6e

    iget-object v0, v13, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v0, v17

    iget-object v2, v12, La/f/b/h/d;->M:[La/f/b/h/c;

    add-int/lit8 v3, v17, 0x1

    aget-object v2, v2, v3

    iget-object v4, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v4, :cond_69

    iget-object v4, v4, La/f/b/h/c;->i:La/f/b/g;

    goto :goto_47

    :cond_69
    move-object/from16 v4, v18

    :goto_47
    iget-object v5, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v5, :cond_6a

    iget-object v5, v5, La/f/b/h/c;->i:La/f/b/g;

    goto :goto_48

    :cond_6a
    move-object/from16 v5, v18

    :goto_48
    move-object/from16 v6, v20

    if-eq v6, v12, :cond_6c

    iget-object v5, v6, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v5, v5, v3

    iget-object v5, v5, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v5, :cond_6b

    iget-object v5, v5, La/f/b/h/c;->i:La/f/b/g;

    move-object/from16 v18, v5

    :cond_6b
    move-object/from16 v6, v18

    goto :goto_49

    :cond_6c
    move-object v6, v5

    :goto_49
    if-ne v13, v12, :cond_6d

    aget-object v1, v0, v17

    aget-object v2, v0, v3

    :cond_6d
    if-eqz v4, :cond_6e

    if-eqz v6, :cond_6e

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1}, La/f/b/h/c;->d()I

    move-result v0

    iget-object v7, v12, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v3, v7, v3

    invoke-virtual {v3}, La/f/b/h/c;->d()I

    move-result v8

    iget-object v3, v1, La/f/b/h/c;->i:La/f/b/g;

    iget-object v7, v2, La/f/b/h/c;->i:La/f/b/g;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    :cond_6e
    :goto_4a
    add-int/lit8 v9, v21, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v12, v19

    move/from16 v15, v30

    goto/16 :goto_1

    :cond_6f
    return-void
.end method

.method public static b(La/f/b/h/d;ILjava/util/ArrayList;La/f/b/h/l/n;)La/f/b/h/l/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/b/h/d;",
            "I",
            "Ljava/util/ArrayList<",
            "La/f/b/h/l/n;",
            ">;",
            "La/f/b/h/l/n;",
            ")",
            "La/f/b/h/l/n;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget v0, p0, La/f/b/h/d;->k0:I

    goto :goto_0

    :cond_0
    iget v0, p0, La/f/b/h/d;->l0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, La/f/b/h/l/n;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/f/b/h/l/n;

    .line 1
    iget v5, v4, La/f/b/h/l/n;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3, p1, v4}, La/f/b/h/l/n;->d(ILa/f/b/h/l/n;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, La/f/b/h/h;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, La/f/b/h/h;

    const/4 v4, 0x0

    .line 3
    :goto_3
    iget v5, v3, La/f/b/h/h;->n0:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, La/f/b/h/h;->m0:[La/f/b/h/d;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, La/f/b/h/d;->k0:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, La/f/b/h/d;->l0:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    :goto_4
    if-eq v6, v2, :cond_a

    const/4 v2, 0x0

    .line 4
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/f/b/h/l/n;

    .line 5
    iget v4, v3, La/f/b/h/l/n;->b:I

    if-ne v4, v6, :cond_9

    move-object p3, v3

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 6
    new-instance p3, La/f/b/h/l/n;

    invoke-direct {p3, p1}, La/f/b/h/l/n;-><init>(I)V

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p3, p0}, La/f/b/h/l/n;->a(La/f/b/h/d;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p0, La/f/b/h/f;

    if-eqz v2, :cond_e

    move-object v2, p0

    check-cast v2, La/f/b/h/f;

    .line 7
    iget-object v3, v2, La/f/b/h/f;->p0:La/f/b/h/c;

    .line 8
    iget v2, v2, La/f/b/h/f;->q0:I

    if-nez v2, :cond_d

    const/4 v1, 0x1

    .line 9
    :cond_d
    invoke-virtual {v3, v1, p2, p3}, La/f/b/h/c;->b(ILjava/util/ArrayList;La/f/b/h/l/n;)V

    :cond_e
    if-nez p1, :cond_f

    .line 10
    iget v0, p3, La/f/b/h/l/n;->b:I

    .line 11
    iput v0, p0, La/f/b/h/d;->k0:I

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, La/f/b/h/c;->b(ILjava/util/ArrayList;La/f/b/h/l/n;)V

    iget-object v0, p0, La/f/b/h/d;->G:La/f/b/h/c;

    goto :goto_7

    .line 12
    :cond_f
    iget v0, p3, La/f/b/h/l/n;->b:I

    .line 13
    iput v0, p0, La/f/b/h/d;->l0:I

    iget-object v0, p0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, La/f/b/h/c;->b(ILjava/util/ArrayList;La/f/b/h/l/n;)V

    iget-object v0, p0, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {v0, p1, p2, p3}, La/f/b/h/c;->b(ILjava/util/ArrayList;La/f/b/h/l/n;)V

    iget-object v0, p0, La/f/b/h/d;->H:La/f/b/h/c;

    :goto_7
    invoke-virtual {v0, p1, p2, p3}, La/f/b/h/c;->b(ILjava/util/ArrayList;La/f/b/h/l/n;)V

    iget-object p0, p0, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {p0, p1, p2, p3}, La/f/b/h/c;->b(ILjava/util/ArrayList;La/f/b/h/l/n;)V

    :cond_10
    return-object p3
.end method

.method public static c(Ljava/util/ArrayList;I)La/f/b/h/l/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "La/f/b/h/l/n;",
            ">;I)",
            "La/f/b/h/l/n;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/f/b/h/l/n;

    iget v3, v2, La/f/b/h/l/n;->b:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 4

    sget-boolean v0, La/b/a;->d:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, La/b/a;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v1, La/b/a;->d:Z

    :cond_0
    sget-object v0, La/b/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v3, La/b/a;->f:Z

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "mUnthemedEntries"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, La/b/a;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sput-boolean v1, La/b/a;->f:Z

    :cond_2
    sget-object v0, La/b/a;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_4
    return-void
.end method

.method public static e(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, p2, La/b/h/e1;

    if-eqz v0, :cond_0

    check-cast p2, La/b/h/e1;

    invoke-interface {p2}, La/b/h/e1;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static f(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, La/b/h/a1;->k:La/b/h/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, La/b/h/a1;->b:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-static {v1}, La/b/h/a1;->c(La/b/h/a1;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, La/b/h/a1;->l:La/b/h/a1;

    if-eqz p1, :cond_2

    iget-object v0, p1, La/b/h/a1;->b:Landroid/view/View;

    if-ne v0, p0, :cond_2

    invoke-virtual {p1}, La/b/h/a1;->b()V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, La/b/h/a1;

    invoke-direct {v0, p0, p1}, La/b/h/a1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static g(La/f/b/h/d$a;La/f/b/h/d$a;La/f/b/h/d$a;La/f/b/h/d$a;)Z
    .locals 5

    sget-object v0, La/f/b/h/d$a;->e:La/f/b/h/d$a;

    sget-object v1, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    sget-object v2, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_3

    if-ne p3, v0, :cond_2

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v4
.end method
