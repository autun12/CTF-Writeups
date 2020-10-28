.class public Lb/c/a/a/q/a;
.super La/b/h/r;
.source ""


# static fields
.field public static final g:[[I


# instance fields
.field public e:Landroid/content/res/ColorStateList;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lb/c/a/a/q/a;->g:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v0, 0x7f0f026b

    const v1, 0x7f030259

    .line 1
    invoke-static {p1, p2, v1, v0}, Lb/c/a/a/p/i;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, La/b/h/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lb/c/a/a/b;->m:[I

    const/4 p1, 0x0

    new-array v7, p1, [I

    const v6, 0x7f0f026b

    const v5, 0x7f030259

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lb/c/a/a/p/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lb/c/a/a/q/a;->f:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 7

    iget-object v0, p0, Lb/c/a/a/q/a;->e:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const v0, 0x7f0300af

    invoke-static {p0, v0}, Lb/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v0

    const v1, 0x7f0300b8

    invoke-static {p0, v1}, Lb/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v1

    const v2, 0x7f0300bf

    invoke-static {p0, v2}, Lb/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v2

    sget-object v3, Lb/c/a/a/q/a;->g:[[I

    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v6}, Lb/c/a/a/a;->n(IIF)I

    move-result v0

    aput v0, v4, v5

    const/4 v0, 0x1

    const v5, 0x3f0a3d71    # 0.54f

    invoke-static {v2, v1, v5}, Lb/c/a/a/a;->n(IIF)I

    move-result v5

    aput v5, v4, v0

    const/4 v0, 0x2

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v2, v1, v5}, Lb/c/a/a/a;->n(IIF)I

    move-result v6

    aput v6, v4, v0

    const/4 v0, 0x3

    invoke-static {v2, v1, v5}, Lb/c/a/a/a;->n(IIF)I

    move-result v1

    aput v1, v4, v0

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lb/c/a/a/q/a;->e:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lb/c/a/a/q/a;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->onAttachedToWindow()V

    iget-boolean v0, p0, Lb/c/a/a/q/a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, La/h/b/f;->y(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/c/a/a/q/a;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/c/a/a/q/a;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lb/c/a/a/q/a;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, La/h/b/f;->b0(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method
