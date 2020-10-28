.class public Lb/c/a/a/x/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/x/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/c/a/a/x/a;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/a;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/a$a;->b:Lb/c/a/a/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lb/c/a/a/x/a$a;->b:Lb/c/a/a/x/a;

    iget-object p1, p1, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lb/c/a/a/x/a$a;->b:Lb/c/a/a/x/a;

    .line 3
    iget-object p1, p1, Lb/c/a/a/x/a;->g:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lb/c/a/a/x/a$a;->b:Lb/c/a/a/x/a;

    .line 5
    iget-object p1, p1, Lb/c/a/a/x/a;->f:Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lb/c/a/a/x/a$a;->b:Lb/c/a/a/x/a;

    .line 7
    iget-object p1, p1, Lb/c/a/a/x/a;->f:Landroid/animation/AnimatorSet;

    .line 8
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lb/c/a/a/x/a$a;->b:Lb/c/a/a/x/a;

    .line 9
    iget-object p1, p1, Lb/c/a/a/x/a;->g:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
