.class public Lb/c/a/a/y/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lb/c/a/a/k/d;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lb/c/a/a/k/d;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lb/c/a/a/y/b;->a:Lb/c/a/a/k/d;

    iput-object p3, p0, Lb/c/a/a/y/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/c/a/a/y/b;->a:Lb/c/a/a/k/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/c/a/a/k/d;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/c/a/a/y/b;->a:Lb/c/a/a/k/d;

    iget-object v0, p0, Lb/c/a/a/y/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lb/c/a/a/k/d;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
