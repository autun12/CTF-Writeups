.class public abstract Lb/c/a/a/o/d$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/o/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public final synthetic c:Lb/c/a/a/o/d;


# direct methods
.method public constructor <init>(Lb/c/a/a/o/d;Lb/c/a/a/o/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/a/o/d$h;->c:Lb/c/a/a/o/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb/c/a/a/o/d$h;->c:Lb/c/a/a/o/d;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/c/a/a/o/d$h;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Lb/c/a/a/o/d$h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/c/a/a/o/d$h;->c:Lb/c/a/a/o/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/c/a/a/o/d$h;->a()F

    move-result v0

    iput v0, p0, Lb/c/a/a/o/d$h;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/c/a/a/o/d$h;->a:Z

    :cond_0
    iget-object v0, p0, Lb/c/a/a/o/d$h;->c:Lb/c/a/a/o/d;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
