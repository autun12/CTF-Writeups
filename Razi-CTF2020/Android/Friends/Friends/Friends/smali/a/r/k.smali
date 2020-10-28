.class public La/r/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:La/r/i;


# direct methods
.method public constructor <init>(La/r/i;)V
    .locals 0

    iput-object p1, p0, La/r/k;->a:La/r/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, La/r/k;->a:La/r/i;

    invoke-virtual {v0}, La/r/i;->m()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
