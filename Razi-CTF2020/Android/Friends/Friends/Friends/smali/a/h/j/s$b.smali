.class public La/h/j/s$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/j/s;->f(La/h/j/v;)La/h/j/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/h/j/v;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(La/h/j/s;La/h/j/v;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, La/h/j/s$b;->a:La/h/j/v;

    iput-object p3, p0, La/h/j/s$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, La/h/j/s$b;->a:La/h/j/v;

    check-cast p1, La/b/c/u$c;

    .line 1
    iget-object p1, p1, La/b/c/u$c;->a:La/b/c/u;

    iget-object p1, p1, La/b/c/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
