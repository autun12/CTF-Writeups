.class public Lb/c/a/a/u/g;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements La/h/d/l/a;
.implements Lb/c/a/a/u/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/u/g$b;
    }
.end annotation


# static fields
.field public static final w:Landroid/graphics/Paint;


# instance fields
.field public b:Lb/c/a/a/u/g$b;

.field public final c:[Lb/c/a/a/u/m$f;

.field public final d:[Lb/c/a/a/u/m$f;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Lb/c/a/a/u/j;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Lb/c/a/a/t/a;

.field public final q:Lb/c/a/a/u/k$a;

.field public final r:Lb/c/a/a/u/k;

.field public s:Landroid/graphics/PorterDuffColorFilter;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public u:Landroid/graphics/Rect;

.field public final v:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lb/c/a/a/u/g;->w:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/c/a/a/u/j;

    invoke-direct {v0}, Lb/c/a/a/u/j;-><init>()V

    invoke-direct {p0, v0}, Lb/c/a/a/u/g;-><init>(Lb/c/a/a/u/j;)V

    return-void
.end method

.method public constructor <init>(Lb/c/a/a/u/g$b;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lb/c/a/a/u/m$f;

    iput-object v1, p0, Lb/c/a/a/u/g;->c:[Lb/c/a/a/u/m$f;

    new-array v0, v0, [Lb/c/a/a/u/m$f;

    iput-object v0, p0, Lb/c/a/a/u/g;->d:[Lb/c/a/a/u/m$f;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->f:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->k:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lb/c/a/a/u/g;->l:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    new-instance v1, Lb/c/a/a/t/a;

    invoke-direct {v1}, Lb/c/a/a/t/a;-><init>()V

    iput-object v1, p0, Lb/c/a/a/u/g;->p:Lb/c/a/a/t/a;

    new-instance v1, Lb/c/a/a/u/k;

    invoke-direct {v1}, Lb/c/a/a/u/k;-><init>()V

    iput-object v1, p0, Lb/c/a/a/u/g;->r:Lb/c/a/a/u/k;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lb/c/a/a/u/g;->v:Landroid/graphics/RectF;

    iput-object p1, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lb/c/a/a/u/g;->w:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->v()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->u([I)Z

    new-instance p1, Lb/c/a/a/u/g$a;

    invoke-direct {p1, p0}, Lb/c/a/a/u/g$a;-><init>(Lb/c/a/a/u/g;)V

    iput-object p1, p0, Lb/c/a/a/u/g;->q:Lb/c/a/a/u/k$a;

    return-void
.end method

.method public constructor <init>(Lb/c/a/a/u/j;)V
    .locals 2

    new-instance v0, Lb/c/a/a/u/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb/c/a/a/u/g$b;-><init>(Lb/c/a/a/u/j;Lb/c/a/a/m/a;)V

    invoke-direct {p0, v0}, Lb/c/a/a/u/g;-><init>(Lb/c/a/a/u/g$b;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lb/c/a/a/u/g;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v0, v0, Lb/c/a/a/u/g$b;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/u/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lb/c/a/a/u/g;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v1, Lb/c/a/a/u/g$b;->j:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lb/c/a/a/u/g;->f:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lb/c/a/a/u/g;->v:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lb/c/a/a/u/g;->r:Lb/c/a/a/u/k;

    iget-object v1, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v2, v1, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    iget v3, v1, Lb/c/a/a/u/g$b;->k:F

    iget-object v4, p0, Lb/c/a/a/u/g;->q:Lb/c/a/a/u/k$a;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lb/c/a/a/u/k;->a(Lb/c/a/a/u/j;FLandroid/graphics/RectF;Lb/c/a/a/u/k$a;Landroid/graphics/Path;)V

    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->e(I)I

    move-result p1

    :cond_1
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->e(I)I

    move-result p2

    if-eq p2, p1, :cond_3

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/c/a/a/u/g;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v3, v3, Lb/c/a/a/u/g$b;->m:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v3, v3, Lb/c/a/a/u/g$b;->l:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v4, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v4, v4, Lb/c/a/a/u/g$b;->m:I

    ushr-int/lit8 v5, v4, 0x7

    add-int/2addr v4, v5

    mul-int v4, v4, v2

    ushr-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v3, p0, Lb/c/a/a/u/g;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1
    invoke-virtual {p0}, Lb/c/a/a/u/g;->k()F

    move-result v3

    neg-float v3, v3

    .line 2
    iget-object v5, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v5, v5, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    .line 3
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v6, Lb/c/a/a/u/j$b;

    invoke-direct {v6, v5}, Lb/c/a/a/u/j$b;-><init>(Lb/c/a/a/u/j;)V

    .line 5
    iget-object v7, v5, Lb/c/a/a/u/j;->e:Lb/c/a/a/u/c;

    .line 6
    instance-of v8, v7, Lb/c/a/a/u/h;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lb/c/a/a/u/b;

    invoke-direct {v8, v3, v7}, Lb/c/a/a/u/b;-><init>(FLb/c/a/a/u/c;)V

    move-object v7, v8

    .line 7
    :goto_0
    iput-object v7, v6, Lb/c/a/a/u/j$b;->e:Lb/c/a/a/u/c;

    .line 8
    iget-object v7, v5, Lb/c/a/a/u/j;->f:Lb/c/a/a/u/c;

    .line 9
    instance-of v8, v7, Lb/c/a/a/u/h;

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lb/c/a/a/u/b;

    invoke-direct {v8, v3, v7}, Lb/c/a/a/u/b;-><init>(FLb/c/a/a/u/c;)V

    move-object v7, v8

    .line 10
    :goto_1
    iput-object v7, v6, Lb/c/a/a/u/j$b;->f:Lb/c/a/a/u/c;

    .line 11
    iget-object v7, v5, Lb/c/a/a/u/j;->h:Lb/c/a/a/u/c;

    .line 12
    instance-of v8, v7, Lb/c/a/a/u/h;

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v8, Lb/c/a/a/u/b;

    invoke-direct {v8, v3, v7}, Lb/c/a/a/u/b;-><init>(FLb/c/a/a/u/c;)V

    move-object v7, v8

    .line 13
    :goto_2
    iput-object v7, v6, Lb/c/a/a/u/j$b;->h:Lb/c/a/a/u/c;

    .line 14
    iget-object v5, v5, Lb/c/a/a/u/j;->g:Lb/c/a/a/u/c;

    .line 15
    instance-of v7, v5, Lb/c/a/a/u/h;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v7, Lb/c/a/a/u/b;

    invoke-direct {v7, v3, v5}, Lb/c/a/a/u/b;-><init>(FLb/c/a/a/u/c;)V

    move-object v5, v7

    .line 16
    :goto_3
    iput-object v5, v6, Lb/c/a/a/u/j$b;->g:Lb/c/a/a/u/c;

    .line 17
    invoke-virtual {v6}, Lb/c/a/a/u/j$b;->a()Lb/c/a/a/u/j;

    move-result-object v8

    .line 18
    iput-object v8, p0, Lb/c/a/a/u/g;->m:Lb/c/a/a/u/j;

    iget-object v7, p0, Lb/c/a/a/u/g;->r:Lb/c/a/a/u/k;

    iget-object v3, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v9, v3, Lb/c/a/a/u/g$b;->k:F

    invoke-virtual {p0}, Lb/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v10

    iget-object v12, p0, Lb/c/a/a/u/g;->h:Landroid/graphics/Path;

    const/4 v11, 0x0

    .line 19
    invoke-virtual/range {v7 .. v12}, Lb/c/a/a/u/k;->a(Lb/c/a/a/u/j;FLandroid/graphics/RectF;Lb/c/a/a/u/k$a;Landroid/graphics/Path;)V

    .line 20
    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v3, v5}, Lb/c/a/a/u/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v4, p0, Lb/c/a/a/u/g;->e:Z

    .line 21
    :cond_4
    iget-object v3, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v5, v3, Lb/c/a/a/u/g$b;->q:I

    const/16 v6, 0x15

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_8

    iget v9, v3, Lb/c/a/a/u/g$b;->r:I

    if-lez v9, :cond_8

    if-eq v5, v7, :cond_7

    if-lt v0, v6, :cond_6

    .line 22
    iget-object v3, v3, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3, v5}, Lb/c/a/a/u/j;->d(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 23
    iget-object v3, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    invoke-virtual {p0}, Lb/c/a/a/u/g;->i()I

    move-result v3

    invoke-virtual {p0}, Lb/c/a/a/u/g;->j()I

    move-result v5

    if-ge v0, v6, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v6, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v6, v6, Lb/c/a/a/u/g$b;->r:I

    neg-int v6, v6

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_9
    int-to-float v0, v3

    int-to-float v3, v5

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    iget-object v0, p0, Lb/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lb/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Lb/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v6, v6, Lb/c/a/a/u/g$b;->r:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    add-int/2addr v6, v0

    iget-object v5, p0, Lb/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v9, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v9, v9, Lb/c/a/a/u/g$b;->r:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v5

    add-int/2addr v9, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v9, v9, Lb/c/a/a/u/g$b;->r:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v0

    int-to-float v0, v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v9, v9, Lb/c/a/a/u/g$b;->r:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v3

    int-to-float v3, v7

    neg-float v7, v0

    neg-float v9, v3

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    iget-object v7, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v7, v7, Lb/c/a/a/u/g$b;->s:I

    if-eqz v7, :cond_a

    iget-object v7, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    iget-object v9, p0, Lb/c/a/a/u/g;->p:Lb/c/a/a/t/a;

    .line 28
    iget-object v9, v9, Lb/c/a/a/t/a;->a:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    const/4 v7, 0x0

    :goto_7
    const/4 v9, 0x4

    if-ge v7, v9, :cond_b

    iget-object v9, p0, Lb/c/a/a/u/g;->c:[Lb/c/a/a/u/m$f;

    aget-object v9, v9, v7

    iget-object v10, p0, Lb/c/a/a/u/g;->p:Lb/c/a/a/t/a;

    iget-object v11, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v11, v11, Lb/c/a/a/u/g$b;->r:I

    .line 30
    sget-object v12, Lb/c/a/a/u/m$f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v9, v12, v10, v11, v6}, Lb/c/a/a/u/m$f;->a(Landroid/graphics/Matrix;Lb/c/a/a/t/a;ILandroid/graphics/Canvas;)V

    .line 31
    iget-object v9, p0, Lb/c/a/a/u/g;->d:[Lb/c/a/a/u/m$f;

    aget-object v9, v9, v7

    iget-object v10, p0, Lb/c/a/a/u/g;->p:Lb/c/a/a/t/a;

    iget-object v11, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v11, v11, Lb/c/a/a/u/g$b;->r:I

    .line 32
    invoke-virtual {v9, v12, v10, v11, v6}, Lb/c/a/a/u/m$f;->a(Landroid/graphics/Matrix;Lb/c/a/a/t/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 33
    :cond_b
    invoke-virtual {p0}, Lb/c/a/a/u/g;->i()I

    move-result v7

    invoke-virtual {p0}, Lb/c/a/a/u/g;->j()I

    move-result v9

    neg-int v10, v7

    int-to-float v10, v10

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    sget-object v11, Lb/c/a/a/u/g;->w:Landroid/graphics/Paint;

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v7, v7

    int-to-float v9, v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    .line 34
    invoke-virtual {p1, v5, v0, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    :cond_c
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v3, v0, Lb/c/a/a/u/g$b;->v:Landroid/graphics/Paint$Style;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v3, v5, :cond_d

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v3, v5, :cond_e

    :cond_d
    const/4 v4, 0x1

    :cond_e
    if-eqz v4, :cond_f

    .line 36
    iget-object v7, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    iget-object v8, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    iget-object v9, v0, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lb/c/a/a/u/g;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lb/c/a/a/u/j;Landroid/graphics/RectF;)V

    .line 37
    :cond_f
    invoke-virtual {p0}, Lb/c/a/a/u/g;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    iget-object v5, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v6, p0, Lb/c/a/a/u/g;->h:Landroid/graphics/Path;

    iget-object v7, p0, Lb/c/a/a/u/g;->m:Lb/c/a/a/u/j;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lb/c/a/a/u/g;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lb/c/a/a/u/j;Landroid/graphics/RectF;)V

    .line 39
    :cond_10
    iget-object p1, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final e(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->o:F

    .line 2
    iget v2, v0, Lb/c/a/a/u/g$b;->p:F

    add-float/2addr v1, v2

    .line 3
    iget v2, v0, Lb/c/a/a/u/g$b;->n:F

    add-float/2addr v1, v2

    .line 4
    iget-object v0, v0, Lb/c/a/a/u/g$b;->b:Lb/c/a/a/m/a;

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v2, v0, Lb/c/a/a/m/a;->a:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    .line 6
    invoke-static {p1, v2}, La/h/d/a;->c(II)I

    move-result v3

    iget v4, v0, Lb/c/a/a/m/a;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 7
    iget v3, v0, Lb/c/a/a/m/a;->d:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_2

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    div-float/2addr v1, v3

    const/high16 v3, 0x40900000    # 4.5f

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v1, v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 8
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1, v2}, La/h/d/a;->c(II)I

    move-result p1

    iget v0, v0, Lb/c/a/a/m/a;->b:I

    invoke-static {p1, v0, v4}, Lb/c/a/a/a;->n(IIF)I

    move-result p1

    invoke-static {p1, v1}, La/h/d/a;->c(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lb/c/a/a/u/j;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Lb/c/a/a/u/j;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object p3, p4, Lb/c/a/a/u/j;->f:Lb/c/a/a/u/c;

    .line 2
    invoke-interface {p3, p5}, Lb/c/a/a/u/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public g()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/a/u/g;->i:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lb/c/a/a/u/g;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->q:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, v0, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/a/a/u/j;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/c/a/a/u/g;->l()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lb/c/a/a/u/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_2
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lb/c/a/a/u/g;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/a/u/g;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lb/c/a/a/u/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lb/c/a/a/u/g;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lb/c/a/a/u/g;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lb/c/a/a/u/g;->k:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lb/c/a/a/u/g;->k:Landroid/graphics/Region;

    iget-object v1, p0, Lb/c/a/a/u/g;->l:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lb/c/a/a/u/g;->k:Landroid/graphics/Region;

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 6

    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lb/c/a/a/u/g;->k()F

    move-result v1

    iget-object v2, p0, Lb/c/a/a/u/g;->j:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lb/c/a/a/u/g;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public i()I
    .locals 5

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lb/c/a/a/u/g$b;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/c/a/a/u/g;->e:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()I
    .locals 5

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lb/c/a/a/u/g$b;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public final k()F
    .locals 2

    invoke-virtual {p0}, Lb/c/a/a/u/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    .line 1
    iget-object v0, v0, Lb/c/a/a/u/j;->e:Lb/c/a/a/u/c;

    .line 2
    invoke-virtual {p0}, Lb/c/a/a/u/g;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/c/a/a/u/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lb/c/a/a/u/g$b;

    iget-object v1, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    invoke-direct {v0, v1}, Lb/c/a/a/u/g$b;-><init>(Lb/c/a/a/u/g$b;)V

    iput-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    return-object p0
.end method

.method public n(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    new-instance v1, Lb/c/a/a/m/a;

    invoke-direct {v1, p1}, Lb/c/a/a/m/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lb/c/a/a/u/g$b;->b:Lb/c/a/a/m/a;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->w()V

    return-void
.end method

.method public o(F)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/u/g$b;->o:F

    invoke-virtual {p0}, Lb/c/a/a/u/g;->w()V

    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/c/a/a/u/g;->e:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->u([I)Z

    move-result p1

    invoke-virtual {p0}, Lb/c/a/a/u/g;->v()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lb/c/a/a/u/g;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public p(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v1, v0, Lb/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lb/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public q(F)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lb/c/a/a/u/g$b;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/c/a/a/u/g;->e:Z

    invoke-virtual {p0}, Lb/c/a/a/u/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public r(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput p1, v0, Lb/c/a/a/u/g$b;->l:F

    invoke-virtual {p0}, Lb/c/a/a/u/g;->invalidateSelf()V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->t(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public s(FLandroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput p1, v0, Lb/c/a/a/u/g$b;->l:F

    invoke-virtual {p0}, Lb/c/a/a/u/g;->invalidateSelf()V

    .line 2
    invoke-virtual {p0, p2}, Lb/c/a/a/u/g;->t(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lb/c/a/a/u/g$b;->m:I

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput-object p1, v0, Lb/c/a/a/u/g$b;->c:Landroid/graphics/ColorFilter;

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShapeAppearanceModel(Lb/c/a/a/u/j;)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput-object p1, v0, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iput-object p1, v0, Lb/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->v()Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v1, v0, Lb/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lb/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lb/c/a/a/u/g;->v()Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public t(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v1, v0, Lb/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lb/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/c/a/a/u/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final u([I)Z
    .locals 4

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v0, v0, Lb/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v2, v2, Lb/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v2, v2, Lb/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v3, v3, Lb/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object v0, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final v()Z
    .locals 7

    iget-object v0, p0, Lb/c/a/a/u/g;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lb/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v3, v2, Lb/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lb/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lb/c/a/a/u/g;->n:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lb/c/a/a/u/g;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lb/c/a/a/u/g;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v3, v2, Lb/c/a/a/u/g$b;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lb/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lb/c/a/a/u/g;->o:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, Lb/c/a/a/u/g;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lb/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-boolean v3, v2, Lb/c/a/a/u/g$b;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lb/c/a/a/u/g;->p:Lb/c/a/a/t/a;

    iget-object v2, v2, Lb/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, Lb/c/a/a/t/a;->a(I)V

    :cond_0
    iget-object v2, p0, Lb/c/a/a/u/g;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 1
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lb/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget v1, v0, Lb/c/a/a/u/g$b;->o:F

    .line 2
    iget v2, v0, Lb/c/a/a/u/g$b;->p:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v1

    float-to-double v2, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lb/c/a/a/u/g$b;->r:I

    iget-object v0, p0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lb/c/a/a/u/g$b;->s:I

    invoke-virtual {p0}, Lb/c/a/a/u/g;->v()Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
