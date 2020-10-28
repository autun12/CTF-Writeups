.class public Landroidx/constraintlayout/widget/ConstraintLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/f/b/h/l/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_2

    const/high16 p1, -0x80000000

    if-eq v1, p1, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p3, p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(La/f/b/h/d;La/f/b/h/l/b$a;)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v4, v1, La/f/b/h/d;->d0:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 2
    iget-boolean v4, v1, La/f/b/h/d;->A:Z

    if-nez v4, :cond_1

    .line 3
    iput v6, v2, La/f/b/h/l/b$a;->e:I

    iput v6, v2, La/f/b/h/l/b$a;->f:I

    iput v6, v2, La/f/b/h/l/b$a;->g:I

    return-void

    :cond_1
    iget-object v4, v2, La/f/b/h/l/b$a;->a:La/f/b/h/d$a;

    iget-object v5, v2, La/f/b/h/l/b$a;->b:La/f/b/h/d$a;

    iget v7, v2, La/f/b/h/l/b$a;->c:I

    iget v8, v2, La/f/b/h/l/b$a;->d:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    add-int/2addr v9, v10

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 4
    iget-object v11, v1, La/f/b/h/d;->c0:Ljava/lang/Object;

    .line 5
    check-cast v11, Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v13, 0x2

    const/4 v15, 0x3

    const/4 v14, 0x1

    if-eqz v12, :cond_d

    if-eq v12, v14, :cond_c

    if-eq v12, v13, :cond_5

    if-eq v12, v15, :cond_2

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_2
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 6
    iget-object v12, v1, La/f/b/h/d;->E:La/f/b/h/c;

    if-eqz v12, :cond_3

    iget v12, v12, La/f/b/h/c;->g:I

    add-int/2addr v12, v6

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :goto_0
    iget-object v15, v1, La/f/b/h/d;->G:La/f/b/h/c;

    if-eqz v15, :cond_4

    iget v15, v15, La/f/b/h/c;->g:I

    add-int/2addr v12, v15

    :cond_4
    add-int/2addr v10, v12

    const/4 v12, -0x1

    .line 7
    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget-object v10, v1, La/f/b/h/d;->g:[I

    aput v12, v10, v13

    goto :goto_4

    :cond_5
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    const/4 v12, -0x2

    invoke-static {v7, v10, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v10, v1, La/f/b/h/d;->m:I

    if-ne v10, v14, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    iget-object v12, v1, La/f/b/h/d;->g:[I

    aput v6, v12, v13

    iget-boolean v15, v2, La/f/b/h/l/b$a;->j:Z

    if-eqz v15, :cond_b

    if-eqz v10, :cond_7

    const/4 v15, 0x3

    aget v18, v12, v15

    if-eqz v18, :cond_7

    aget v12, v12, v6

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v15

    if-ne v12, v15, :cond_8

    :cond_7
    instance-of v12, v11, La/f/c/i;

    if-eqz v12, :cond_9

    :cond_8
    const/4 v12, 0x1

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_2
    if-eqz v10, :cond_a

    if-eqz v12, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v7

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_4

    :cond_b
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_3

    :cond_c
    const/high16 v12, 0x40000000    # 2.0f

    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    const/4 v15, -0x2

    invoke-static {v7, v10, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget-object v10, v1, La/f/b/h/d;->g:[I

    aput v15, v10, v13

    :goto_3
    const/4 v10, 0x1

    goto :goto_5

    :cond_d
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget-object v12, v1, La/f/b/h/d;->g:[I

    aput v7, v12, v13

    move v7, v10

    :goto_4
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_19

    if-eq v12, v14, :cond_18

    if-eq v12, v13, :cond_11

    const/4 v8, 0x3

    if-eq v12, v8, :cond_e

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_e
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 8
    iget-object v12, v1, La/f/b/h/d;->E:La/f/b/h/c;

    if-eqz v12, :cond_f

    iget-object v12, v1, La/f/b/h/d;->F:La/f/b/h/c;

    iget v12, v12, La/f/b/h/c;->g:I

    add-int/2addr v12, v6

    goto :goto_6

    :cond_f
    const/4 v12, 0x0

    :goto_6
    iget-object v15, v1, La/f/b/h/d;->G:La/f/b/h/c;

    if-eqz v15, :cond_10

    iget-object v15, v1, La/f/b/h/d;->H:La/f/b/h/c;

    iget v15, v15, La/f/b/h/c;->g:I

    add-int/2addr v12, v15

    :cond_10
    add-int/2addr v9, v12

    const/4 v12, -0x1

    .line 9
    invoke-static {v8, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget-object v9, v1, La/f/b/h/d;->g:[I

    const/4 v15, 0x3

    aput v12, v9, v15

    goto :goto_a

    :cond_11
    const/4 v15, 0x3

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    const/4 v12, -0x2

    invoke-static {v8, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget v9, v1, La/f/b/h/d;->n:I

    if-ne v9, v14, :cond_12

    const/4 v9, 0x1

    goto :goto_7

    :cond_12
    const/4 v9, 0x0

    :goto_7
    iget-object v12, v1, La/f/b/h/d;->g:[I

    aput v6, v12, v15

    iget-boolean v15, v2, La/f/b/h/l/b$a;->j:Z

    if-eqz v15, :cond_17

    if-eqz v9, :cond_13

    aget v15, v12, v13

    if-eqz v15, :cond_13

    aget v12, v12, v14

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v15

    if-ne v12, v15, :cond_14

    :cond_13
    instance-of v12, v11, La/f/c/i;

    if-eqz v12, :cond_15

    :cond_14
    const/4 v12, 0x1

    goto :goto_8

    :cond_15
    const/4 v12, 0x0

    :goto_8
    if-eqz v9, :cond_16

    if-eqz v12, :cond_17

    :cond_16
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v8

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_a

    :cond_17
    const/high16 v12, 0x40000000    # 2.0f

    const/16 v16, 0x3

    goto :goto_9

    :cond_18
    const/high16 v12, 0x40000000    # 2.0f

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    const/4 v15, -0x2

    invoke-static {v8, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget-object v9, v1, La/f/b/h/d;->g:[I

    const/16 v16, 0x3

    aput v15, v9, v16

    :goto_9
    const/4 v9, 0x1

    goto :goto_b

    :cond_19
    const/high16 v12, 0x40000000    # 2.0f

    const/16 v16, 0x3

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v12, v1, La/f/b/h/d;->g:[I

    aput v8, v12, v16

    move v8, v9

    :goto_a
    const/4 v9, 0x0

    .line 10
    :goto_b
    iget-object v12, v1, La/f/b/h/d;->Q:La/f/b/h/d;

    .line 11
    check-cast v12, La/f/b/h/e;

    if-eqz v12, :cond_1b

    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    iget v15, v15, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/16 v14, 0x100

    .line 13
    invoke-static {v15, v14}, La/f/b/h/i;->b(II)Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v15

    if-ne v14, v15, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, La/f/b/h/d;->r()I

    move-result v15

    if-ge v14, v15, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v15

    if-ne v14, v15, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12}, La/f/b/h/d;->l()I

    move-result v12

    if-ge v14, v12, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 14
    iget v14, v1, La/f/b/h/d;->X:I

    if-ne v12, v14, :cond_1b

    .line 15
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->y()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 16
    iget v12, v1, La/f/b/h/d;->C:I

    .line 17
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v14

    invoke-virtual {v0, v12, v7, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(III)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 18
    iget v12, v1, La/f/b/h/d;->D:I

    .line 19
    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v14

    invoke-virtual {v0, v12, v8, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(III)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    goto :goto_c

    :cond_1a
    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_1b

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->r()I

    move-result v3

    iput v3, v2, La/f/b/h/l/b$a;->e:I

    invoke-virtual/range {p1 .. p1}, La/f/b/h/d;->l()I

    move-result v3

    iput v3, v2, La/f/b/h/l/b$a;->f:I

    .line 20
    iget v1, v1, La/f/b/h/d;->X:I

    .line 21
    iput v1, v2, La/f/b/h/l/b$a;->g:I

    return-void

    :cond_1b
    sget-object v12, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    if-ne v4, v12, :cond_1c

    const/4 v14, 0x1

    goto :goto_d

    :cond_1c
    const/4 v14, 0x0

    :goto_d
    if-ne v5, v12, :cond_1d

    const/4 v12, 0x1

    goto :goto_e

    :cond_1d
    const/4 v12, 0x0

    :goto_e
    sget-object v15, La/f/b/h/d$a;->e:La/f/b/h/d$a;

    if-eq v5, v15, :cond_1f

    if-ne v5, v3, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v5, 0x0

    goto :goto_10

    :cond_1f
    :goto_f
    const/4 v5, 0x1

    :goto_10
    if-eq v4, v15, :cond_21

    if-ne v4, v3, :cond_20

    goto :goto_11

    :cond_20
    const/4 v3, 0x0

    goto :goto_12

    :cond_21
    :goto_11
    const/4 v3, 0x1

    :goto_12
    const/4 v4, 0x0

    if-eqz v14, :cond_22

    iget v15, v1, La/f/b/h/d;->T:F

    cmpl-float v15, v15, v4

    if-lez v15, :cond_22

    const/4 v15, 0x1

    goto :goto_13

    :cond_22
    const/4 v15, 0x0

    :goto_13
    if-eqz v12, :cond_23

    iget v13, v1, La/f/b/h/d;->T:F

    cmpl-float v4, v13, v4

    if-lez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_14

    :cond_23
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-boolean v6, v2, La/f/b/h/l/b$a;->j:Z

    if-nez v6, :cond_25

    if-eqz v14, :cond_25

    iget v6, v1, La/f/b/h/d;->m:I

    if-nez v6, :cond_25

    if-eqz v12, :cond_25

    iget v6, v1, La/f/b/h/d;->n:I

    if-eqz v6, :cond_24

    goto :goto_15

    :cond_24
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    goto/16 :goto_1c

    :cond_25
    :goto_15
    instance-of v6, v11, La/f/c/l;

    if-eqz v6, :cond_26

    instance-of v6, v1, La/f/b/h/j;

    if-eqz v6, :cond_26

    move-object v6, v1

    check-cast v6, La/f/b/h/j;

    move-object v6, v11

    check-cast v6, La/f/c/l;

    invoke-virtual {v6}, La/f/c/l;->k()V

    const/4 v6, 0x0

    goto :goto_16

    :cond_26
    invoke-virtual {v11, v7, v8}, Landroid/view/View;->measure(II)V

    .line 22
    iput v7, v1, La/f/b/h/d;->C:I

    iput v8, v1, La/f/b/h/d;->D:I

    const/4 v6, 0x0

    .line 23
    iput-boolean v6, v1, La/f/b/h/d;->h:Z

    .line 24
    :goto_16
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v19

    if-eqz v10, :cond_27

    iget-object v10, v1, La/f/b/h/d;->g:[I

    aput v12, v10, v6

    const/16 v18, 0x2

    aput v14, v10, v18

    goto :goto_17

    :cond_27
    const/16 v18, 0x2

    iget-object v10, v1, La/f/b/h/d;->g:[I

    aput v6, v10, v6

    aput v6, v10, v18

    :goto_17
    if-eqz v9, :cond_28

    iget-object v9, v1, La/f/b/h/d;->g:[I

    const/4 v10, 0x1

    aput v14, v9, v10

    const/16 v17, 0x3

    aput v12, v9, v17

    goto :goto_18

    :cond_28
    const/4 v10, 0x1

    const/16 v17, 0x3

    iget-object v9, v1, La/f/b/h/d;->g:[I

    aput v6, v9, v10

    aput v6, v9, v17

    :goto_18
    iget v6, v1, La/f/b/h/d;->p:I

    if-lez v6, :cond_29

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_19

    :cond_29
    move v6, v12

    :goto_19
    iget v9, v1, La/f/b/h/d;->q:I

    if-lez v9, :cond_2a

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_2a
    iget v9, v1, La/f/b/h/d;->s:I

    if-lez v9, :cond_2b

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1a

    :cond_2b
    move v9, v14

    :goto_1a
    iget v10, v1, La/f/b/h/d;->t:I

    if-lez v10, :cond_2c

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_2c
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x1

    .line 26
    invoke-static {v10, v0}, La/f/b/h/i;->b(II)Z

    move-result v10

    if-nez v10, :cond_2e

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v15, :cond_2d

    if-eqz v5, :cond_2d

    iget v3, v1, La/f/b/h/d;->T:F

    int-to-float v4, v9

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v6, v0

    goto :goto_1b

    :cond_2d
    if-eqz v4, :cond_2e

    if-eqz v3, :cond_2e

    iget v3, v1, La/f/b/h/d;->T:F

    int-to-float v4, v6

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_2e
    :goto_1b
    if-ne v12, v6, :cond_30

    if-eq v14, v9, :cond_2f

    goto :goto_1d

    :cond_2f
    :goto_1c
    move v0, v6

    move/from16 v3, v19

    const/4 v4, -0x1

    const/4 v6, 0x0

    goto :goto_1e

    :cond_30
    :goto_1d
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v6, :cond_31

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_31
    if-eq v14, v9, :cond_32

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :cond_32
    invoke-virtual {v11, v7, v8}, Landroid/view/View;->measure(II)V

    .line 27
    iput v7, v1, La/f/b/h/d;->C:I

    iput v8, v1, La/f/b/h/d;->D:I

    const/4 v6, 0x0

    .line 28
    iput-boolean v6, v1, La/f/b/h/d;->h:Z

    .line 29
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v19

    move/from16 v3, v19

    const/4 v4, -0x1

    :goto_1e
    if-eq v3, v4, :cond_33

    const/4 v4, 0x1

    goto :goto_1f

    :cond_33
    const/4 v4, 0x0

    :goto_1f
    iget v5, v2, La/f/b/h/l/b$a;->c:I

    if-ne v0, v5, :cond_34

    iget v5, v2, La/f/b/h/l/b$a;->d:I

    if-eq v9, v5, :cond_35

    :cond_34
    const/4 v6, 0x1

    :cond_35
    iput-boolean v6, v2, La/f/b/h/l/b$a;->i:Z

    iget-boolean v5, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v5, :cond_36

    const/4 v10, 0x1

    goto :goto_20

    :cond_36
    move v10, v4

    :goto_20
    if-eqz v10, :cond_37

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    .line 30
    iget v1, v1, La/f/b/h/d;->X:I

    if-eq v1, v3, :cond_37

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v2, La/f/b/h/l/b$a;->i:Z

    :cond_37
    iput v0, v2, La/f/b/h/l/b$a;->e:I

    iput v9, v2, La/f/b/h/l/b$a;->f:I

    iput-boolean v10, v2, La/f/b/h/l/b$a;->h:Z

    iput v3, v2, La/f/b/h/l/b$a;->g:I

    return-void
.end method
