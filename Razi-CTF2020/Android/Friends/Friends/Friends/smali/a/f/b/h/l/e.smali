.class public La/f/b/h/l/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:La/f/b/h/e;

.field public b:Z

.field public c:Z

.field public d:La/f/b/h/e;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/f/b/h/l/o;",
            ">;"
        }
    .end annotation
.end field

.field public f:La/f/b/h/l/b$b;

.field public g:La/f/b/h/l/b$a;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/f/b/h/l/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/f/b/h/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/f/b/h/l/e;->b:Z

    iput-boolean v0, p0, La/f/b/h/l/e;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f/b/h/l/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f/b/h/l/e;->f:La/f/b/h/l/b$b;

    new-instance v0, La/f/b/h/l/b$a;

    invoke-direct {v0}, La/f/b/h/l/b$a;-><init>()V

    iput-object v0, p0, La/f/b/h/l/e;->g:La/f/b/h/l/b$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f/b/h/l/e;->h:Ljava/util/ArrayList;

    iput-object p1, p0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iput-object p1, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    return-void
.end method


# virtual methods
.method public final a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/b/h/l/f;",
            "II",
            "La/f/b/h/l/f;",
            "Ljava/util/ArrayList<",
            "La/f/b/h/l/l;",
            ">;",
            "La/f/b/h/l/l;",
            ")V"
        }
    .end annotation

    iget-object p1, p1, La/f/b/h/l/f;->d:La/f/b/h/l/o;

    iget-object v0, p1, La/f/b/h/l/o;->c:La/f/b/h/l/l;

    if-nez v0, :cond_a

    iget-object v0, p0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v1, v0, La/f/b/h/d;->d:La/f/b/h/l/k;

    if-eq p1, v1, :cond_a

    iget-object v0, v0, La/f/b/h/d;->e:La/f/b/h/l/m;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, La/f/b/h/l/l;

    invoke-direct {p6, p1, p3}, La/f/b/h/l/l;-><init>(La/f/b/h/l/o;I)V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p6, p1, La/f/b/h/l/o;->c:La/f/b/h/l/l;

    .line 1
    iget-object p3, p6, La/f/b/h/l/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p3, p1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-object p3, p3, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/l/d;

    instance-of v1, v0, La/f/b/h/l/f;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, La/f/b/h/l/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_0

    :cond_3
    iget-object p3, p1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-object p3, p3, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/l/d;

    instance-of v1, v0, La/f/b/h/l/f;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, La/f/b/h/l/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    instance-of v0, p1, La/f/b/h/l/m;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/m;->k:La/f/b/h/l/f;

    iget-object v0, v0, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/l/d;

    instance-of v1, v0, La/f/b/h/l/f;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, La/f/b/h/l/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-object v0, v0, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, La/f/b/h/l/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_3

    :cond_8
    iget-object v0, p1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-object v0, v0, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, La/f/b/h/l/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_4

    :cond_9
    if-ne p2, p3, :cond_a

    instance-of p3, p1, La/f/b/h/l/m;

    if-eqz p3, :cond_a

    check-cast p1, La/f/b/h/l/m;

    iget-object p1, p1, La/f/b/h/l/m;->k:La/f/b/h/l/f;

    iget-object p1, p1, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, La/f/b/h/l/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    :try_start_0
    invoke-virtual/range {v0 .. v6}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final b(La/f/b/h/e;)Z
    .locals 19

    move-object/from16 v0, p1

    sget-object v1, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    sget-object v8, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    sget-object v9, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    iget-object v2, v0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, La/f/b/h/d;

    iget-object v2, v15, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v4, v2, v3

    const/4 v14, 0x1

    aget-object v2, v2, v14

    .line 1
    iget v5, v15, La/f/b/h/d;->d0:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 2
    :goto_1
    iput-boolean v14, v15, La/f/b/h/d;->a:Z

    goto :goto_0

    :cond_1
    iget v5, v15, La/f/b/h/d;->r:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    cmpg-float v7, v5, v11

    if-gez v7, :cond_2

    if-ne v4, v1, :cond_2

    iput v6, v15, La/f/b/h/d;->m:I

    :cond_2
    iget v7, v15, La/f/b/h/d;->u:F

    cmpg-float v12, v7, v11

    if-gez v12, :cond_3

    if-ne v2, v1, :cond_3

    iput v6, v15, La/f/b/h/d;->n:I

    .line 3
    :cond_3
    iget v12, v15, La/f/b/h/d;->T:F

    const/4 v13, 0x0

    const/4 v11, 0x3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    if-ne v4, v1, :cond_5

    if-eq v2, v8, :cond_4

    if-ne v2, v9, :cond_5

    .line 4
    :cond_4
    iput v11, v15, La/f/b/h/d;->m:I

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_7

    if-eq v4, v8, :cond_6

    if-ne v4, v9, :cond_7

    :cond_6
    :goto_2
    iput v11, v15, La/f/b/h/d;->n:I

    goto :goto_3

    :cond_7
    if-ne v4, v1, :cond_9

    if-ne v2, v1, :cond_9

    iget v12, v15, La/f/b/h/d;->m:I

    if-nez v12, :cond_8

    iput v11, v15, La/f/b/h/d;->m:I

    :cond_8
    iget v12, v15, La/f/b/h/d;->n:I

    if-nez v12, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    if-ne v4, v1, :cond_b

    iget v12, v15, La/f/b/h/d;->m:I

    if-ne v12, v14, :cond_b

    iget-object v12, v15, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object v12, v12, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v12, :cond_a

    iget-object v12, v15, La/f/b/h/d;->G:La/f/b/h/c;

    iget-object v12, v12, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v12, :cond_b

    :cond_a
    move-object v4, v8

    :cond_b
    if-ne v2, v1, :cond_d

    iget v12, v15, La/f/b/h/d;->n:I

    if-ne v12, v14, :cond_d

    iget-object v12, v15, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object v12, v12, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v12, :cond_c

    iget-object v12, v15, La/f/b/h/d;->H:La/f/b/h/c;

    iget-object v12, v12, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v12, :cond_d

    :cond_c
    move-object v12, v8

    goto :goto_4

    :cond_d
    move-object v12, v2

    :goto_4
    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iput-object v4, v2, La/f/b/h/l/o;->d:La/f/b/h/d$a;

    iget v13, v15, La/f/b/h/d;->m:I

    iput v13, v2, La/f/b/h/l/o;->a:I

    iget-object v2, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iput-object v12, v2, La/f/b/h/l/o;->d:La/f/b/h/d$a;

    iget v3, v15, La/f/b/h/d;->n:I

    iput v3, v2, La/f/b/h/l/o;->a:I

    sget-object v2, La/f/b/h/d$a;->e:La/f/b/h/d$a;

    if-eq v4, v2, :cond_e

    if-eq v4, v9, :cond_e

    if-ne v4, v8, :cond_f

    :cond_e
    if-eq v12, v2, :cond_24

    if-eq v12, v9, :cond_24

    if-ne v12, v8, :cond_f

    goto/16 :goto_b

    :cond_f
    const/high16 v18, 0x3f000000    # 0.5f

    if-ne v4, v1, :cond_17

    if-eq v12, v8, :cond_10

    if-ne v12, v9, :cond_17

    :cond_10
    if-ne v13, v11, :cond_12

    if-ne v12, v8, :cond_11

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v8

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    :cond_11
    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v7

    int-to-float v2, v7

    iget v3, v15, La/f/b/h/d;->T:F

    mul-float v2, v2, v3

    add-float v2, v2, v18

    float-to-int v5, v2

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v6, v9

    :goto_5
    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    iget-object v2, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    goto/16 :goto_1

    :cond_12
    if-ne v13, v14, :cond_13

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v8

    move-object v6, v12

    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v3

    :goto_6
    iput v3, v2, La/f/b/h/l/g;->m:I

    goto/16 :goto_0

    :cond_13
    if-ne v13, v6, :cond_15

    iget-object v6, v0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/16 v17, 0x0

    aget-object v11, v6, v17

    if-eq v11, v9, :cond_14

    aget-object v6, v6, v17

    if-ne v6, v2, :cond_17

    :cond_14
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v5, v2

    add-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v7

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v6, v12

    goto :goto_5

    :cond_15
    iget-object v6, v15, La/f/b/h/d;->M:[La/f/b/h/c;

    const/4 v11, 0x0

    aget-object v14, v6, v11

    iget-object v11, v14, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v11, :cond_16

    const/4 v11, 0x1

    aget-object v6, v6, v11

    iget-object v6, v6, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v6, :cond_17

    :cond_16
    :goto_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v8

    move-object v6, v12

    :goto_8
    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    iget-object v2, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    const/4 v2, 0x1

    iput-boolean v2, v15, La/f/b/h/d;->a:Z

    goto/16 :goto_0

    :cond_17
    if-ne v12, v1, :cond_1f

    if-eq v4, v8, :cond_18

    if-ne v4, v9, :cond_1f

    :cond_18
    const/4 v6, 0x3

    if-ne v3, v6, :cond_1b

    if-ne v4, v8, :cond_19

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v8

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    :cond_19
    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v5

    iget v2, v15, La/f/b/h/d;->T:F

    .line 5
    iget v3, v15, La/f/b/h/d;->U:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    :cond_1a
    int-to-float v3, v5

    mul-float v3, v3, v2

    add-float v3, v3, v18

    float-to-int v7, v3

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v6, v9

    .line 6
    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    iget-object v2, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    const/4 v6, 0x1

    iput-boolean v6, v15, La/f/b/h/d;->a:Z

    goto/16 :goto_0

    :cond_1b
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1c

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    goto/16 :goto_a

    :cond_1c
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1e

    iget-object v6, v0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v11, 0x1

    aget-object v14, v6, v11

    if-eq v14, v9, :cond_1d

    aget-object v6, v6, v11

    if-ne v6, v2, :cond_1f

    :cond_1d
    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v7, v2

    add-float v7, v7, v18

    float-to-int v7, v7

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v6, v9

    goto/16 :goto_8

    :cond_1e
    iget-object v2, v15, La/f/b/h/d;->M:[La/f/b/h/c;

    const/4 v6, 0x2

    aget-object v11, v2, v6

    iget-object v6, v11, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v6, :cond_16

    const/4 v6, 0x3

    aget-object v2, v2, v6

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v2, :cond_1f

    goto/16 :goto_7

    :cond_1f
    const/4 v2, 0x1

    if-ne v4, v1, :cond_0

    if-ne v12, v1, :cond_0

    if-eq v13, v2, :cond_23

    if-ne v3, v2, :cond_20

    goto :goto_9

    :cond_20
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    if-ne v13, v2, :cond_0

    iget-object v2, v0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eq v4, v9, :cond_21

    aget-object v3, v2, v3

    if-ne v3, v9, :cond_0

    :cond_21
    const/4 v3, 0x1

    aget-object v4, v2, v3

    if-eq v4, v9, :cond_22

    aget-object v2, v2, v3

    if-ne v2, v9, :cond_0

    :cond_22
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v5, v2

    add-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v7, v2

    add-float v7, v7, v18

    float-to-int v7, v7

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object v6, v9

    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    iget-object v2, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v3

    invoke-virtual {v2, v3}, La/f/b/h/l/g;->c(I)V

    const/4 v3, 0x1

    iput-boolean v3, v15, La/f/b/h/d;->a:Z

    goto/16 :goto_0

    :cond_23
    :goto_9
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v8

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v3

    iput v3, v2, La/f/b/h/l/g;->m:I

    :goto_a
    iget-object v2, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v3

    goto/16 :goto_6

    :cond_24
    :goto_b
    const/4 v3, 0x1

    invoke-virtual {v15}, La/f/b/h/d;->r()I

    move-result v5

    if-ne v4, v2, :cond_25

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v4

    iget-object v5, v15, La/f/b/h/d;->E:La/f/b/h/c;

    iget v5, v5, La/f/b/h/c;->g:I

    sub-int/2addr v4, v5

    iget-object v5, v15, La/f/b/h/d;->G:La/f/b/h/c;

    iget v5, v5, La/f/b/h/c;->g:I

    sub-int/2addr v4, v5

    move v14, v4

    move-object v13, v9

    goto :goto_c

    :cond_25
    move-object v13, v4

    move v14, v5

    :goto_c
    invoke-virtual {v15}, La/f/b/h/d;->l()I

    move-result v4

    if-ne v12, v2, :cond_26

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v2

    iget-object v4, v15, La/f/b/h/d;->F:La/f/b/h/c;

    iget v4, v4, La/f/b/h/c;->g:I

    sub-int/2addr v2, v4

    iget-object v4, v15, La/f/b/h/d;->H:La/f/b/h/c;

    iget v4, v4, La/f/b/h/c;->g:I

    sub-int/2addr v2, v4

    move/from16 v16, v2

    move-object v2, v9

    goto :goto_d

    :cond_26
    move/from16 v16, v4

    move-object v2, v12

    :goto_d
    move-object/from16 v11, p0

    move-object v12, v15

    move-object v4, v15

    move-object v15, v2

    invoke-virtual/range {v11 .. v16}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v2, v4, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v4}, La/f/b/h/d;->r()I

    move-result v5

    invoke-virtual {v2, v5}, La/f/b/h/l/g;->c(I)V

    iget-object v2, v4, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v4}, La/f/b/h/d;->l()I

    move-result v5

    invoke-virtual {v2, v5}, La/f/b/h/l/g;->c(I)V

    iput-boolean v3, v4, La/f/b/h/d;->a:Z

    goto/16 :goto_0

    :cond_27
    const/4 v2, 0x0

    return v2
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, La/f/b/h/l/e;->e:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    invoke-virtual {v1}, La/f/b/h/l/k;->f()V

    iget-object v1, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    invoke-virtual {v1}, La/f/b/h/l/m;->f()V

    iget-object v1, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    iget-object v1, v1, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/f/b/h/d;

    instance-of v6, v3, La/f/b/h/f;

    if-eqz v6, :cond_1

    new-instance v4, La/f/b/h/l/i;

    invoke-direct {v4, v3}, La/f/b/h/l/i;-><init>(La/f/b/h/d;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, La/f/b/h/d;->w()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v3, La/f/b/h/d;->b:La/f/b/h/l/c;

    if-nez v6, :cond_2

    new-instance v6, La/f/b/h/l/c;

    invoke-direct {v6, v3, v5}, La/f/b/h/l/c;-><init>(La/f/b/h/d;I)V

    iput-object v6, v3, La/f/b/h/d;->b:La/f/b/h/l/c;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v5, v3, La/f/b/h/d;->b:La/f/b/h/l/c;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v5, v3, La/f/b/h/d;->d:La/f/b/h/l/k;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v3}, La/f/b/h/d;->x()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, La/f/b/h/d;->c:La/f/b/h/l/c;

    if-nez v5, :cond_5

    new-instance v5, La/f/b/h/l/c;

    invoke-direct {v5, v3, v4}, La/f/b/h/l/c;-><init>(La/f/b/h/d;I)V

    iput-object v5, v3, La/f/b/h/d;->c:La/f/b/h/l/c;

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v4, v3, La/f/b/h/d;->c:La/f/b/h/l/c;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v4, v3, La/f/b/h/d;->e:La/f/b/h/l/m;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v4, v3, La/f/b/h/h;

    if-eqz v4, :cond_0

    new-instance v4, La/f/b/h/l/j;

    invoke-direct {v4, v3}, La/f/b/h/l/j;-><init>(La/f/b/h/d;)V

    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/f/b/h/l/o;

    invoke-virtual {v2}, La/f/b/h/l/o;->f()V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/l/o;

    iget-object v2, v1, La/f/b/h/l/o;->b:La/f/b/h/d;

    iget-object v3, p0, La/f/b/h/l/e;->d:La/f/b/h/e;

    if-ne v2, v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, La/f/b/h/l/o;->d()V

    goto :goto_5

    .line 2
    :cond_c
    iget-object v0, p0, La/f/b/h/l/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput v5, La/f/b/h/l/l;->c:I

    iget-object v0, p0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v0, v0, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v1, p0, La/f/b/h/l/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v5, v1}, La/f/b/h/l/e;->e(La/f/b/h/l/o;ILjava/util/ArrayList;)V

    iget-object v0, p0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v0, v0, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v1, p0, La/f/b/h/l/e;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v4, v1}, La/f/b/h/l/e;->e(La/f/b/h/l/o;ILjava/util/ArrayList;)V

    iput-boolean v5, p0, La/f/b/h/l/e;->b:Z

    return-void
.end method

.method public final d(La/f/b/h/e;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, La/f/b/h/l/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_d

    iget-object v9, v0, La/f/b/h/l/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/f/b/h/l/l;

    .line 1
    iget-object v10, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    instance-of v11, v10, La/f/b/h/l/c;

    if-eqz v11, :cond_0

    move-object v11, v10

    check-cast v11, La/f/b/h/l/c;

    iget v11, v11, La/f/b/h/l/o;->f:I

    if-eq v11, v2, :cond_2

    goto/16 :goto_6

    :cond_0
    if-nez v2, :cond_1

    instance-of v11, v10, La/f/b/h/l/k;

    if-nez v11, :cond_2

    goto/16 :goto_6

    :cond_1
    instance-of v11, v10, La/f/b/h/l/m;

    if-nez v11, :cond_2

    goto/16 :goto_6

    :cond_2
    if-nez v2, :cond_3

    iget-object v11, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    goto :goto_1

    :cond_3
    iget-object v11, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    :goto_1
    iget-object v11, v11, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    if-nez v2, :cond_4

    iget-object v12, v1, La/f/b/h/d;->d:La/f/b/h/l/k;

    goto :goto_2

    :cond_4
    iget-object v12, v1, La/f/b/h/d;->e:La/f/b/h/l/m;

    :goto_2
    iget-object v12, v12, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-object v10, v10, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-object v10, v10, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v11, v11, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-object v11, v11, La/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    invoke-virtual {v12}, La/f/b/h/l/o;->j()J

    move-result-wide v12

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    iget-object v10, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v10, v10, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    invoke-virtual {v9, v10, v6, v7}, La/f/b/h/l/l;->b(La/f/b/h/l/f;J)J

    move-result-wide v10

    iget-object v14, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v14, v14, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    invoke-virtual {v9, v14, v6, v7}, La/f/b/h/l/l;->a(La/f/b/h/l/f;J)J

    move-result-wide v6

    sub-long/2addr v10, v12

    iget-object v14, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v15, v14, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v15, v15, La/f/b/h/l/f;->f:I

    neg-int v0, v15

    int-to-long v0, v0

    cmp-long v16, v10, v0

    if-ltz v16, :cond_5

    int-to-long v0, v15

    add-long/2addr v10, v0

    :cond_5
    neg-long v0, v6

    sub-long/2addr v0, v12

    iget-object v6, v14, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v6, v6, La/f/b/h/l/f;->f:I

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v15, v0, v6

    if-ltz v15, :cond_6

    sub-long/2addr v0, v6

    :cond_6
    iget-object v6, v14, La/f/b/h/l/o;->b:La/f/b/h/d;

    .line 2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_7

    iget v6, v6, La/f/b/h/d;->a0:F

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    if-ne v2, v7, :cond_8

    iget v6, v6, La/f/b/h/d;->b0:F

    goto :goto_3

    :cond_8
    const/high16 v6, -0x40800000    # -1.0f

    :goto_3
    const/4 v7, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v6

    long-to-float v1, v10

    sub-float v7, v14, v6

    div-float/2addr v1, v7

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_4

    :cond_9
    const-wide/16 v0, 0x0

    :goto_4
    long-to-float v0, v0

    mul-float v1, v0, v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v1, v7

    float-to-long v10, v1

    invoke-static {v14, v6, v0, v7}, Lb/a/a/a/a;->a(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v10, v12

    add-long/2addr v10, v0

    .line 3
    iget-object v0, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v1, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v1, v1, La/f/b/h/l/f;->f:I

    int-to-long v6, v1

    add-long/2addr v6, v10

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->f:I

    int-to-long v0, v0

    sub-long/2addr v6, v0

    goto :goto_6

    :cond_a
    iget-object v0, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    if-eqz v10, :cond_b

    iget-object v0, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v1, v0, La/f/b/h/l/f;->f:I

    int-to-long v6, v1

    invoke-virtual {v9, v0, v6, v7}, La/f/b/h/l/l;->b(La/f/b/h/l/f;J)J

    move-result-wide v0

    iget-object v6, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v6, v6, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v6, v6, La/f/b/h/l/f;->f:I

    int-to-long v6, v6

    add-long/2addr v6, v12

    goto :goto_5

    :cond_b
    if-eqz v11, :cond_c

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v1, v0, La/f/b/h/l/f;->f:I

    int-to-long v6, v1

    invoke-virtual {v9, v0, v6, v7}, La/f/b/h/l/l;->a(La/f/b/h/l/f;J)J

    move-result-wide v0

    iget-object v6, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v6, v6, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v6, v6, La/f/b/h/l/f;->f:I

    neg-int v6, v6

    int-to-long v6, v6

    add-long/2addr v6, v12

    neg-long v0, v0

    :goto_5
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_6

    :cond_c
    iget-object v1, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v1, v1, La/f/b/h/l/f;->f:I

    int-to-long v6, v1

    invoke-virtual {v0}, La/f/b/h/l/o;->j()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object v6, v9, La/f/b/h/l/l;->a:La/f/b/h/l/o;

    iget-object v6, v6, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v6, v6, La/f/b/h/l/f;->f:I

    int-to-long v6, v6

    sub-long v6, v0, v6

    .line 4
    :goto_6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v4

    return v0
.end method

.method public final e(La/f/b/h/l/o;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/b/h/l/o;",
            "I",
            "Ljava/util/ArrayList<",
            "La/f/b/h/l/l;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-object v0, v0, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/l/d;

    instance-of v2, v1, La/f/b/h/l/f;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, La/f/b/h/l/f;

    const/4 v6, 0x0

    iget-object v7, p1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, La/f/b/h/l/o;

    if-eqz v2, :cond_0

    check-cast v1, La/f/b/h/l/o;

    iget-object v3, v1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    const/4 v5, 0x0

    iget-object v6, p1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-object v0, v0, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/f/b/h/l/d;

    instance-of v2, v1, La/f/b/h/l/f;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, La/f/b/h/l/f;

    const/4 v6, 0x1

    iget-object v7, p1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, La/f/b/h/l/o;

    if-eqz v2, :cond_3

    check-cast v1, La/f/b/h/l/o;

    iget-object v3, v1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    const/4 v5, 0x1

    iget-object v6, p1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, La/f/b/h/l/m;

    iget-object p1, p1, La/f/b/h/l/m;->k:La/f/b/h/l/f;

    iget-object p1, p1, La/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/l/d;

    instance-of v1, v0, La/f/b/h/l/f;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, La/f/b/h/l/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, La/f/b/h/l/e;->a(La/f/b/h/l/f;IILa/f/b/h/l/f;Ljava/util/ArrayList;La/f/b/h/l/l;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V
    .locals 1

    iget-object v0, p0, La/f/b/h/l/e;->g:La/f/b/h/l/b$a;

    iput-object p2, v0, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    iput-object p4, v0, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    iput p3, v0, La/f/b/h/l/b$a;->c:I

    iput p5, v0, La/f/b/h/l/b$a;->d:I

    iget-object p2, p0, La/f/b/h/l/e;->f:La/f/b/h/l/b$b;

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(La/f/b/h/d;La/f/b/h/l/b$a;)V

    iget-object p2, p0, La/f/b/h/l/e;->g:La/f/b/h/l/b$a;

    iget p2, p2, La/f/b/h/l/b$a;->e:I

    invoke-virtual {p1, p2}, La/f/b/h/d;->M(I)V

    iget-object p2, p0, La/f/b/h/l/e;->g:La/f/b/h/l/b$a;

    iget p2, p2, La/f/b/h/l/b$a;->f:I

    invoke-virtual {p1, p2}, La/f/b/h/d;->H(I)V

    iget-object p2, p0, La/f/b/h/l/e;->g:La/f/b/h/l/b$a;

    iget-boolean p3, p2, La/f/b/h/l/b$a;->h:Z

    .line 1
    iput-boolean p3, p1, La/f/b/h/d;->z:Z

    .line 2
    iget p2, p2, La/f/b/h/l/b$a;->g:I

    invoke-virtual {p1, p2}, La/f/b/h/d;->E(I)V

    return-void
.end method

.method public g()V
    .locals 14

    sget-object v6, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    sget-object v7, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    iget-object v0, p0, La/f/b/h/l/e;->a:La/f/b/h/e;

    iget-object v0, v0, La/f/b/h/k;->m0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, La/f/b/h/d;

    iget-boolean v0, v9, La/f/b/h/d;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v9, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v1, 0x0

    aget-object v10, v0, v1

    const/4 v11, 0x1

    aget-object v12, v0, v11

    iget v0, v9, La/f/b/h/d;->m:I

    iget v2, v9, La/f/b/h/d;->n:I

    sget-object v4, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    if-eq v10, v4, :cond_3

    if-ne v10, v7, :cond_2

    if-ne v0, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eq v12, v4, :cond_4

    if-ne v12, v7, :cond_5

    if-ne v2, v11, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iget-object v2, v9, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v2, v2, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v3, v2, La/f/b/h/l/f;->j:Z

    iget-object v5, v9, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v5, v5, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    iget-boolean v13, v5, La/f/b/h/l/f;->j:Z

    if-eqz v3, :cond_6

    if-eqz v13, :cond_6

    iget v3, v2, La/f/b/h/l/f;->g:I

    iget v5, v5, La/f/b/h/l/f;->g:I

    move-object v0, p0

    move-object v1, v9

    move-object v2, v6

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    :goto_3
    iput-boolean v11, v9, La/f/b/h/d;->a:Z

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    iget v3, v2, La/f/b/h/l/f;->g:I

    iget v5, v5, La/f/b/h/l/f;->g:I

    move-object v0, p0

    move-object v1, v9

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v0, v9, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v9}, La/f/b/h/d;->l()I

    move-result v1

    if-ne v12, v7, :cond_7

    :goto_4
    iput v1, v0, La/f/b/h/l/g;->m:I

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v1}, La/f/b/h/l/g;->c(I)V

    goto :goto_3

    :cond_8
    if-eqz v13, :cond_9

    if-eqz v0, :cond_9

    iget v3, v2, La/f/b/h/l/f;->g:I

    iget v5, v5, La/f/b/h/l/f;->g:I

    move-object v0, p0

    move-object v1, v9

    move-object v2, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, La/f/b/h/l/e;->f(La/f/b/h/d;La/f/b/h/d$a;ILa/f/b/h/d$a;I)V

    iget-object v0, v9, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v0, v0, La/f/b/h/l/o;->e:La/f/b/h/l/g;

    invoke-virtual {v9}, La/f/b/h/d;->r()I

    move-result v1

    if-ne v10, v7, :cond_7

    goto :goto_4

    :cond_9
    :goto_5
    iget-boolean v0, v9, La/f/b/h/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, v9, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/m;->l:La/f/b/h/l/g;

    if-eqz v0, :cond_0

    .line 1
    iget v1, v9, La/f/b/h/d;->X:I

    .line 2
    invoke-virtual {v0, v1}, La/f/b/h/l/g;->c(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method
