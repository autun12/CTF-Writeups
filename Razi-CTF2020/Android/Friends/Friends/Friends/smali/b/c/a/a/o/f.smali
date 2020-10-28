.class public Lb/c/a/a/o/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lb/c/a/a/o/d;


# direct methods
.method public constructor <init>(Lb/c/a/a/o/d;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/o/f;->b:Lb/c/a/a/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lb/c/a/a/o/f;->b:Lb/c/a/a/o/d;

    .line 1
    iget-object v1, v0, Lb/c/a/a/o/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRotation()F

    move-result v1

    iget v2, v0, Lb/c/a/a/o/d;->m:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    iput v1, v0, Lb/c/a/a/o/d;->m:F

    invoke-virtual {v0}, Lb/c/a/a/o/d;->s()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
