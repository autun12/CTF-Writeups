.class public Lb/c/a/a/t/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:[I

.field public static final i:[F

.field public static final j:[I

.field public static final k:[F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:I

.field public f:I

.field public final g:Landroid/graphics/Path;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lb/c/a/a/t/a;->h:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lb/c/a/a/t/a;->i:[F

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Lb/c/a/a/t/a;->j:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lb/c/a/a/t/a;->k:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/c/a/a/t/a;->g:Landroid/graphics/Path;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lb/c/a/a/t/a;->a(I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lb/c/a/a/t/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lb/c/a/a/t/a;->a:Landroid/graphics/Paint;

    iget v2, p0, Lb/c/a/a/t/a;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lb/c/a/a/t/a;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/16 v0, 0x44

    invoke-static {p1, v0}, La/h/d/a;->c(II)I

    move-result v0

    iput v0, p0, Lb/c/a/a/t/a;->d:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, La/h/d/a;->c(II)I

    move-result v0

    iput v0, p0, Lb/c/a/a/t/a;->e:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/h/d/a;->c(II)I

    move-result p1

    iput p1, p0, Lb/c/a/a/t/a;->f:I

    return-void
.end method
