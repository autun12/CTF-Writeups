.class Lcom/example/razictf_2/MainActivity$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/razictf_2/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/razictf_2/MainActivity;

.field final synthetic val$button:Landroid/widget/ImageButton;

.field final synthetic val$displaymetrics:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/example/razictf_2/MainActivity;Landroid/util/DisplayMetrics;Landroid/widget/ImageButton;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/example/razictf_2/MainActivity$1;->this$0:Lcom/example/razictf_2/MainActivity;

    iput-object p2, p0, Lcom/example/razictf_2/MainActivity$1;->val$displaymetrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/example/razictf_2/MainActivity$1;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/example/razictf_2/MainActivity$1;->this$0:Lcom/example/razictf_2/MainActivity;

    new-instance v1, Lcom/example/razictf_2/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/example/razictf_2/MainActivity$1$1;-><init>(Lcom/example/razictf_2/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/example/razictf_2/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
