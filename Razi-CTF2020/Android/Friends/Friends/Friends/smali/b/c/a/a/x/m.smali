.class public Lb/c/a/a/x/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lb/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/m;->a:Lb/c/a/a/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lb/c/a/a/x/m;->a:Lb/c/a/a/x/h;

    iget-object v0, v0, Lb/c/a/a/x/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method
