.class public Lb/c/a/a/x/o$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/a/x/o;->k(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Lb/c/a/a/x/o;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/o;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/o$a;->e:Lb/c/a/a/x/o;

    iput p2, p0, Lb/c/a/a/x/o$a;->a:I

    iput-object p3, p0, Lb/c/a/a/x/o$a;->b:Landroid/widget/TextView;

    iput p4, p0, Lb/c/a/a/x/o$a;->c:I

    iput-object p5, p0, Lb/c/a/a/x/o$a;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/c/a/a/x/o$a;->e:Lb/c/a/a/x/o;

    iget v0, p0, Lb/c/a/a/x/o$a;->a:I

    .line 1
    iput v0, p1, Lb/c/a/a/x/o;->i:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lb/c/a/a/x/o;->g:Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Lb/c/a/a/x/o$a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, Lb/c/a/a/x/o$a;->c:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lb/c/a/a/x/o$a;->e:Lb/c/a/a/x/o;

    .line 4
    iget-object p1, p1, Lb/c/a/a/x/o;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lb/c/a/a/x/o$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lb/c/a/a/x/o$a;->d:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/c/a/a/x/o$a;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
