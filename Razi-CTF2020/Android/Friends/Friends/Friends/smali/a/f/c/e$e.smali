.class public La/f/c/e$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static n:Landroid/util/SparseIntArray;


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Z

.field public m:F


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/16 v5, 0x8

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/f/c/e$e;->a:Z

    const/4 v1, 0x0

    iput v1, p0, La/f/c/e$e;->b:F

    iput v1, p0, La/f/c/e$e;->c:F

    iput v1, p0, La/f/c/e$e;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, La/f/c/e$e;->e:F

    iput v2, p0, La/f/c/e$e;->f:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, La/f/c/e$e;->g:F

    iput v2, p0, La/f/c/e$e;->h:F

    iput v1, p0, La/f/c/e$e;->i:F

    iput v1, p0, La/f/c/e$e;->j:F

    iput v1, p0, La/f/c/e$e;->k:F

    iput-boolean v0, p0, La/f/c/e$e;->l:Z

    iput v1, p0, La/f/c/e$e;->m:F

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, La/f/c/k;->i:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, La/f/c/e$e;->a:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget-object v4, La/f/c/e$e;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/16 v5, 0x15

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-lt v0, v5, :cond_0

    iput-boolean p2, p0, La/f/c/e$e;->l:Z

    iget v4, p0, La/f/c/e$e;->m:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->m:F

    goto :goto_1

    :pswitch_1
    if-lt v0, v5, :cond_0

    iget v4, p0, La/f/c/e$e;->k:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->k:F

    goto :goto_1

    :pswitch_2
    iget v4, p0, La/f/c/e$e;->j:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->j:F

    goto :goto_1

    :pswitch_3
    iget v4, p0, La/f/c/e$e;->i:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->i:F

    goto :goto_1

    :pswitch_4
    iget v4, p0, La/f/c/e$e;->h:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->h:F

    goto :goto_1

    :pswitch_5
    iget v4, p0, La/f/c/e$e;->g:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->g:F

    goto :goto_1

    :pswitch_6
    iget v4, p0, La/f/c/e$e;->f:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->f:F

    goto :goto_1

    :pswitch_7
    iget v4, p0, La/f/c/e$e;->e:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->e:F

    goto :goto_1

    :pswitch_8
    iget v4, p0, La/f/c/e$e;->d:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->d:F

    goto :goto_1

    :pswitch_9
    iget v4, p0, La/f/c/e$e;->c:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->c:F

    goto :goto_1

    :pswitch_a
    iget v4, p0, La/f/c/e$e;->b:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, La/f/c/e$e;->b:F

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
