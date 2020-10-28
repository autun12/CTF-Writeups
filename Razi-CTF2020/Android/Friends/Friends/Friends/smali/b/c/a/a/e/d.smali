.class public Lb/c/a/a/e/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/e/d;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lb/c/a/a/e/d;->b:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lb/c/a/a/e/d;->c:I

    iput-boolean p4, p0, Lb/c/a/a/e/d;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/c/a/a/e/d;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean p1, p0, Lb/c/a/a/e/d;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/c/a/a/e/d;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, p0, Lb/c/a/a/e/d;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lb/c/a/a/e/d;->c:I

    iget-boolean v2, p0, Lb/c/a/a/e/d;->d:Z

    .line 1
    sget v3, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:I

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->z(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_0
    return-void
.end method
