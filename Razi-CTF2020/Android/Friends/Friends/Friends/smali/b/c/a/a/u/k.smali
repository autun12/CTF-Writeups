.class public Lb/c/a/a/u/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/u/k$a;
    }
.end annotation


# instance fields
.field public final a:[Lb/c/a/a/u/m;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Lb/c/a/a/u/m;

.field public final f:[F

.field public final g:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lb/c/a/a/u/m;

    iput-object v1, p0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lb/c/a/a/u/k;->d:Landroid/graphics/PointF;

    new-instance v1, Lb/c/a/a/u/m;

    invoke-direct {v1}, Lb/c/a/a/u/m;-><init>()V

    iput-object v1, p0, Lb/c/a/a/u/k;->e:Lb/c/a/a/u/m;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lb/c/a/a/u/k;->f:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lb/c/a/a/u/k;->g:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    new-instance v3, Lb/c/a/a/u/m;

    invoke-direct {v3}, Lb/c/a/a/u/m;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lb/c/a/a/u/j;FLandroid/graphics/RectF;Lb/c/a/a/u/k$a;Landroid/graphics/Path;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ge v6, v9, :cond_9

    if-eq v6, v10, :cond_2

    if-eq v6, v7, :cond_1

    if-eq v6, v8, :cond_0

    .line 1
    iget-object v9, v1, Lb/c/a/a/u/j;->f:Lb/c/a/a/u/c;

    goto :goto_1

    .line 2
    :cond_0
    iget-object v9, v1, Lb/c/a/a/u/j;->e:Lb/c/a/a/u/c;

    goto :goto_1

    .line 3
    :cond_1
    iget-object v9, v1, Lb/c/a/a/u/j;->h:Lb/c/a/a/u/c;

    goto :goto_1

    .line 4
    :cond_2
    iget-object v9, v1, Lb/c/a/a/u/j;->g:Lb/c/a/a/u/c;

    :goto_1
    if-eq v6, v10, :cond_5

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_3

    .line 5
    iget-object v11, v1, Lb/c/a/a/u/j;->b:Lb/c/a/a/u/d;

    goto :goto_2

    .line 6
    :cond_3
    iget-object v11, v1, Lb/c/a/a/u/j;->a:Lb/c/a/a/u/d;

    goto :goto_2

    .line 7
    :cond_4
    iget-object v11, v1, Lb/c/a/a/u/j;->d:Lb/c/a/a/u/d;

    goto :goto_2

    .line 8
    :cond_5
    iget-object v11, v1, Lb/c/a/a/u/j;->c:Lb/c/a/a/u/d;

    .line 9
    :goto_2
    iget-object v12, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v12, v12, v6

    const/high16 v13, 0x42b40000    # 90.0f

    .line 10
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v3}, Lb/c/a/a/u/c;->a(Landroid/graphics/RectF;)F

    move-result v9

    invoke-virtual {v11, v12, v13, v2, v9}, Lb/c/a/a/u/d;->a(Lb/c/a/a/u/m;FFF)V

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v11, v9, 0x5a

    int-to-float v11, v11

    .line 11
    iget-object v12, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    iget-object v12, v0, Lb/c/a/a/u/k;->d:Landroid/graphics/PointF;

    if-eq v6, v10, :cond_8

    if-eq v6, v7, :cond_7

    if-eq v6, v8, :cond_6

    .line 12
    iget v7, v3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_6
    iget v7, v3, Landroid/graphics/RectF;->left:F

    :goto_3
    iget v8, v3, Landroid/graphics/RectF;->top:F

    goto :goto_5

    :cond_7
    iget v7, v3, Landroid/graphics/RectF;->left:F

    goto :goto_4

    :cond_8
    iget v7, v3, Landroid/graphics/RectF;->right:F

    :goto_4
    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    :goto_5
    invoke-virtual {v12, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 13
    iget-object v7, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v8, v0, Lb/c/a/a/u/k;->d:Landroid/graphics/PointF;

    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 14
    iget-object v7, v0, Lb/c/a/a/u/k;->f:[F

    iget-object v8, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v12, v8, v6

    .line 15
    iget v12, v12, Lb/c/a/a/u/m;->c:F

    .line 16
    aput v12, v7, v5

    aget-object v8, v8, v6

    .line 17
    iget v8, v8, Lb/c/a/a/u/m;->d:F

    .line 18
    aput v8, v7, v10

    iget-object v8, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v7, v0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, v0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v8, v0, Lb/c/a/a/u/k;->f:[F

    aget v12, v8, v5

    aget v8, v8, v10

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    aget-object v6, v7, v6

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v6, v9

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v9, :cond_11

    .line 19
    iget-object v11, v0, Lb/c/a/a/u/k;->f:[F

    iget-object v12, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v13, v12, v6

    .line 20
    iget v13, v13, Lb/c/a/a/u/m;->a:F

    .line 21
    aput v13, v11, v5

    aget-object v12, v12, v6

    .line 22
    iget v12, v12, Lb/c/a/a/u/m;->b:F

    .line 23
    aput v12, v11, v10

    iget-object v12, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v11, v0, Lb/c/a/a/u/k;->f:[F

    if-nez v6, :cond_a

    aget v12, v11, v5

    aget v11, v11, v10

    invoke-virtual {v4, v12, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_7

    :cond_a
    aget v12, v11, v5

    aget v11, v11, v10

    invoke-virtual {v4, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    iget-object v11, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v11, v11, v6

    iget-object v12, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12, v4}, Lb/c/a/a/u/m;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz p4, :cond_b

    iget-object v11, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v11, v11, v6

    iget-object v12, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    move-object/from16 v13, p4

    check-cast v13, Lb/c/a/a/u/g$a;

    .line 24
    iget-object v13, v13, Lb/c/a/a/u/g$a;->a:Lb/c/a/a/u/g;

    .line 25
    iget-object v13, v13, Lb/c/a/a/u/g;->c:[Lb/c/a/a/u/m$f;

    .line 26
    iget v14, v11, Lb/c/a/a/u/m;->f:F

    .line 27
    invoke-virtual {v11, v14}, Lb/c/a/a/u/m;->b(F)V

    new-instance v14, Ljava/util/ArrayList;

    iget-object v15, v11, Lb/c/a/a/u/m;->h:Ljava/util/List;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Lb/c/a/a/u/l;

    invoke-direct {v15, v11, v14, v12}, Lb/c/a/a/u/l;-><init>(Lb/c/a/a/u/m;Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 28
    aput-object v15, v13, v6

    :cond_b
    add-int/lit8 v11, v6, 0x1

    .line 29
    rem-int/lit8 v12, v11, 0x4

    iget-object v13, v0, Lb/c/a/a/u/k;->f:[F

    iget-object v14, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v15, v14, v6

    .line 30
    iget v15, v15, Lb/c/a/a/u/m;->c:F

    .line 31
    aput v15, v13, v5

    aget-object v14, v14, v6

    .line 32
    iget v14, v14, Lb/c/a/a/u/m;->d:F

    .line 33
    aput v14, v13, v10

    iget-object v14, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v14, v14, v6

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v13, v0, Lb/c/a/a/u/k;->g:[F

    iget-object v14, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v15, v14, v12

    .line 34
    iget v15, v15, Lb/c/a/a/u/m;->a:F

    .line 35
    aput v15, v13, v5

    aget-object v14, v14, v12

    .line 36
    iget v14, v14, Lb/c/a/a/u/m;->b:F

    .line 37
    aput v14, v13, v10

    iget-object v14, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v12, v14, v12

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v12, v0, Lb/c/a/a/u/k;->f:[F

    aget v13, v12, v5

    iget-object v14, v0, Lb/c/a/a/u/k;->g:[F

    aget v15, v14, v5

    sub-float/2addr v13, v15

    float-to-double v7, v13

    aget v12, v12, v10

    aget v13, v14, v10

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3a83126f    # 0.001f

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 38
    iget-object v12, v0, Lb/c/a/a/u/k;->f:[F

    iget-object v13, v0, Lb/c/a/a/u/k;->a:[Lb/c/a/a/u/m;

    aget-object v14, v13, v6

    iget v14, v14, Lb/c/a/a/u/m;->c:F

    aput v14, v12, v5

    aget-object v13, v13, v6

    iget v13, v13, Lb/c/a/a/u/m;->d:F

    aput v13, v12, v10

    iget-object v13, v0, Lb/c/a/a/u/k;->b:[Landroid/graphics/Matrix;

    aget-object v13, v13, v6

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v6, v10, :cond_c

    const/4 v12, 0x3

    if-eq v6, v12, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget-object v13, v0, Lb/c/a/a/u/k;->f:[F

    aget v13, v13, v10

    goto :goto_8

    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget-object v13, v0, Lb/c/a/a/u/k;->f:[F

    aget v13, v13, v5

    :goto_8
    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 39
    iget-object v13, v0, Lb/c/a/a/u/k;->e:Lb/c/a/a/u/m;

    const/high16 v14, 0x43870000    # 270.0f

    .line 40
    invoke-virtual {v13, v8, v8, v14, v8}, Lb/c/a/a/u/m;->e(FFFF)V

    if-eq v6, v10, :cond_f

    const/4 v8, 0x2

    if-eq v6, v8, :cond_e

    const/4 v13, 0x3

    if-eq v6, v13, :cond_d

    .line 41
    iget-object v14, v1, Lb/c/a/a/u/j;->j:Lb/c/a/a/u/f;

    goto :goto_9

    .line 42
    :cond_d
    iget-object v14, v1, Lb/c/a/a/u/j;->i:Lb/c/a/a/u/f;

    goto :goto_9

    :cond_e
    const/4 v13, 0x3

    .line 43
    iget-object v14, v1, Lb/c/a/a/u/j;->l:Lb/c/a/a/u/f;

    goto :goto_9

    :cond_f
    const/4 v8, 0x2

    const/4 v13, 0x3

    .line 44
    iget-object v14, v1, Lb/c/a/a/u/j;->k:Lb/c/a/a/u/f;

    .line 45
    :goto_9
    iget-object v15, v0, Lb/c/a/a/u/k;->e:Lb/c/a/a/u/m;

    invoke-virtual {v14, v7, v12, v2, v15}, Lb/c/a/a/u/f;->a(FFFLb/c/a/a/u/m;)V

    iget-object v7, v0, Lb/c/a/a/u/k;->e:Lb/c/a/a/u/m;

    iget-object v12, v0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v7, v12, v4}, Lb/c/a/a/u/m;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz p4, :cond_10

    iget-object v7, v0, Lb/c/a/a/u/k;->e:Lb/c/a/a/u/m;

    iget-object v12, v0, Lb/c/a/a/u/k;->c:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    move-object/from16 v14, p4

    check-cast v14, Lb/c/a/a/u/g$a;

    .line 46
    iget-object v14, v14, Lb/c/a/a/u/g$a;->a:Lb/c/a/a/u/g;

    .line 47
    iget-object v14, v14, Lb/c/a/a/u/g;->d:[Lb/c/a/a/u/m$f;

    .line 48
    iget v15, v7, Lb/c/a/a/u/m;->f:F

    .line 49
    invoke-virtual {v7, v15}, Lb/c/a/a/u/m;->b(F)V

    new-instance v15, Ljava/util/ArrayList;

    iget-object v5, v7, Lb/c/a/a/u/m;->h:Ljava/util/List;

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lb/c/a/a/u/l;

    invoke-direct {v5, v7, v15, v12}, Lb/c/a/a/u/l;-><init>(Lb/c/a/a/u/m;Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 50
    aput-object v5, v14, v6

    :cond_10
    move v6, v11

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    goto/16 :goto_6

    .line 51
    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    return-void
.end method
