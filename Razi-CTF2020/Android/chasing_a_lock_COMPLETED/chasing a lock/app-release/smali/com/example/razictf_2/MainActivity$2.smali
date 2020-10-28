.class Lcom/example/razictf_2/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/example/razictf_2/MainActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/example/razictf_2/MainActivity$2;->this$0:Lcom/example/razictf_2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 47
    iget-object p1, p0, Lcom/example/razictf_2/MainActivity$2;->this$0:Lcom/example/razictf_2/MainActivity;

    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Lcom/example/razictf_2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 56
    new-instance v1, Lcom/example/razictf_2/switcher;

    invoke-direct {v1}, Lcom/example/razictf_2/switcher;-><init>()V

    .line 57
    invoke-virtual {v1, v0}, Lcom/example/razictf_2/switcher;->run(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v2, p0, Lcom/example/razictf_2/MainActivity$2;->this$0:Lcom/example/razictf_2/MainActivity;

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Lcom/example/razictf_2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "0"

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
