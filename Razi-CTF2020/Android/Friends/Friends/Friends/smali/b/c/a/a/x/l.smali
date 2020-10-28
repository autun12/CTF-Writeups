.class public Lb/c/a/a/x/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lb/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/l;->a:Lb/c/a/a/x/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/c/a/a/x/l;->a:Lb/c/a/a/x/h;

    iget-object v0, p1, Lb/c/a/a/x/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1
    iget-boolean p1, p1, Lb/c/a/a/x/h;->h:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, Lb/c/a/a/x/l;->a:Lb/c/a/a/x/h;

    .line 3
    iget-object p1, p1, Lb/c/a/a/x/h;->n:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
