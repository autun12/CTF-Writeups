.class public Lcom/example/razictf_2/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 20
    invoke-virtual {p0, p1}, Lcom/example/razictf_2/MainActivity;->setContentView(I)V

    const p1, 0x7f070099

    .line 21
    invoke-virtual {p0, p1}, Lcom/example/razictf_2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 22
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/example/razictf_2/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 24
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 25
    new-instance v3, Lcom/example/razictf_2/MainActivity$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/example/razictf_2/MainActivity$1;-><init>(Lcom/example/razictf_2/MainActivity;Landroid/util/DisplayMetrics;Landroid/widget/ImageButton;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 44
    new-instance v0, Lcom/example/razictf_2/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/example/razictf_2/MainActivity$2;-><init>(Lcom/example/razictf_2/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
