.class public Lb/c/a/a/x/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/x/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/c/a/a/x/q;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/q;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/q$a;->b:Lb/c/a/a/x/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lb/c/a/a/x/q$a;->b:Lb/c/a/a/x/q;

    iget-object p2, p1, Lb/c/a/a/x/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lb/c/a/a/x/q;->d(Lb/c/a/a/x/q;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
