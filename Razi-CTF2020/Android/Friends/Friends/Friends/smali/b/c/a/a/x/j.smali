.class public Lb/c/a/a/x/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lb/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/j;->a:Lb/c/a/a/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lb/c/a/a/x/j;->a:Lb/c/a/a/x/h;

    iget-object p1, p1, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lb/c/a/a/x/j;->a:Lb/c/a/a/x/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lb/c/a/a/x/h;->e(Lb/c/a/a/x/h;Z)V

    iget-object p1, p0, Lb/c/a/a/x/j;->a:Lb/c/a/a/x/h;

    .line 1
    iput-boolean p2, p1, Lb/c/a/a/x/h;->g:Z

    :cond_0
    return-void
.end method
