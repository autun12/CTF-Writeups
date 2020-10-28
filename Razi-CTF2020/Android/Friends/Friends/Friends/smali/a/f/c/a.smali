.class public La/f/c/a;
.super La/f/c/c;
.source ""


# instance fields
.field public h:I

.field public i:I

.field public j:La/f/b/h/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, La/f/c/c;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public e(Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, La/f/c/c;->e(Landroid/util/AttributeSet;)V

    new-instance p1, La/f/b/h/a;

    invoke-direct {p1}, La/f/b/h/a;-><init>()V

    iput-object p1, p0, La/f/c/a;->j:La/f/b/h/a;

    .line 1
    iput-object p1, p0, La/f/c/c;->e:La/f/b/h/g;

    invoke-virtual {p0}, La/f/c/c;->j()V

    return-void
.end method

.method public f(La/f/b/h/d;Z)V
    .locals 3

    iget v0, p0, La/f/c/a;->h:I

    .line 1
    iput v0, p0, La/f/c/a;->i:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz p2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    :goto_0
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, La/f/c/a;->i:I

    goto :goto_3

    :cond_2
    if-ne v0, v1, :cond_3

    :goto_2
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    instance-of p2, p1, La/f/b/h/a;

    if-eqz p2, :cond_4

    check-cast p1, La/f/b/h/a;

    iget p2, p0, La/f/c/a;->i:I

    .line 2
    iput p2, p1, La/f/b/h/a;->o0:I

    :cond_4
    return-void
.end method

.method public getMargin()I
    .locals 1

    iget-object v0, p0, La/f/c/a;->j:La/f/b/h/a;

    .line 1
    iget v0, v0, La/f/b/h/a;->q0:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, La/f/c/a;->h:I

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    iget-object v0, p0, La/f/c/a;->j:La/f/b/h/a;

    .line 1
    iput-boolean p1, v0, La/f/b/h/a;->p0:Z

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, La/f/c/a;->j:La/f/b/h/a;

    .line 1
    iput p1, v0, La/f/b/h/a;->q0:I

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    iget-object v0, p0, La/f/c/a;->j:La/f/b/h/a;

    .line 1
    iput p1, v0, La/f/b/h/a;->q0:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, La/f/c/a;->h:I

    return-void
.end method
