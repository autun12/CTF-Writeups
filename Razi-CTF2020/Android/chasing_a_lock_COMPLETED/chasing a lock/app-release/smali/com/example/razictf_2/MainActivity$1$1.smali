.class Lcom/example/razictf_2/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/razictf_2/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/razictf_2/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/example/razictf_2/MainActivity$1;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/example/razictf_2/MainActivity$1$1;->this$1:Lcom/example/razictf_2/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/example/razictf_2/MainActivity$1$1;->this$1:Lcom/example/razictf_2/MainActivity$1;

    iget-object v2, v2, Lcom/example/razictf_2/MainActivity$1;->val$displaymetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 33
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, p0, Lcom/example/razictf_2/MainActivity$1$1;->this$1:Lcom/example/razictf_2/MainActivity$1;

    iget-object v2, v2, Lcom/example/razictf_2/MainActivity$1;->val$displaymetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    .line 34
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 35
    iget-object v2, p0, Lcom/example/razictf_2/MainActivity$1$1;->this$1:Lcom/example/razictf_2/MainActivity$1;

    iget-object v2, v2, Lcom/example/razictf_2/MainActivity$1;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
