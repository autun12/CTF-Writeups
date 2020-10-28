.class public Lb/c/a/a/u/m$a;
.super Lb/c/a/a/u/m$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/u/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lb/c/a/a/u/m$c;


# direct methods
.method public constructor <init>(Lb/c/a/a/u/m$c;)V
    .locals 0

    invoke-direct {p0}, Lb/c/a/a/u/m$f;-><init>()V

    iput-object p1, p0, Lb/c/a/a/u/m$a;->b:Lb/c/a/a/u/m$c;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lb/c/a/a/t/a;ILandroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v7, p4

    iget-object v3, v0, Lb/c/a/a/u/m$a;->b:Lb/c/a/a/u/m$c;

    .line 1
    iget v4, v3, Lb/c/a/a/u/m$c;->f:F

    .line 2
    iget v5, v3, Lb/c/a/a/u/m$c;->g:F

    .line 3
    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, v0, Lb/c/a/a/u/m$a;->b:Lb/c/a/a/u/m$c;

    .line 4
    iget v8, v6, Lb/c/a/a/u/m$c;->b:F

    .line 5
    iget v9, v6, Lb/c/a/a/u/m$c;->c:F

    .line 6
    iget v10, v6, Lb/c/a/a/u/m$c;->d:F

    .line 7
    iget v6, v6, Lb/c/a/a/u/m$c;->e:F

    .line 8
    invoke-direct {v3, v8, v9, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    sget-object v15, Lb/c/a/a/t/a;->j:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v10, v1, Lb/c/a/a/t/a;->g:Landroid/graphics/Path;

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v6, :cond_1

    aput v8, v15, v8

    iget v8, v1, Lb/c/a/a/t/a;->f:I

    aput v8, v15, v9

    iget v8, v1, Lb/c/a/a/t/a;->e:I

    aput v8, v15, v12

    iget v8, v1, Lb/c/a/a/t/a;->d:I

    aput v8, v15, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v10, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    neg-int v13, v2

    int-to-float v13, v13

    invoke-virtual {v3, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    aput v8, v15, v8

    iget v8, v1, Lb/c/a/a/t/a;->d:I

    aput v8, v15, v9

    iget v8, v1, Lb/c/a/a/t/a;->e:I

    aput v8, v15, v12

    iget v8, v1, Lb/c/a/a/t/a;->f:I

    aput v8, v15, v11

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v2, v8, v2

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    add-float/2addr v8, v2

    sget-object v16, Lb/c/a/a/t/a;->k:[F

    aput v2, v16, v9

    aput v8, v16, v12

    iget-object v2, v1, Lb/c/a/a/t/a;->b:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v14, v9, v11

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v2, p1

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-nez v6, :cond_2

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_2
    const/4 v6, 0x1

    iget-object v8, v1, Lb/c/a/a/t/a;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p4

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
