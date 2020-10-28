.class public La/h/j/s$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/j/s;->e(Landroid/view/View;La/h/j/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/h/j/t;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(La/h/j/s;La/h/j/t;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, La/h/j/s$a;->a:La/h/j/t;

    iput-object p3, p0, La/h/j/s$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, La/h/j/s$a;->a:La/h/j/t;

    iget-object v0, p0, La/h/j/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, La/h/j/t;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, La/h/j/s$a;->a:La/h/j/t;

    iget-object v0, p0, La/h/j/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, La/h/j/t;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, La/h/j/s$a;->a:La/h/j/t;

    iget-object v0, p0, La/h/j/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, La/h/j/t;->b(Landroid/view/View;)V

    return-void
.end method
