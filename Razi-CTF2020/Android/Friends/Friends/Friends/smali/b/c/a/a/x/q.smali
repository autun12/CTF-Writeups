.class public Lb/c/a/a/x/q;
.super Lb/c/a/a/x/n;
.source ""


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Lcom/google/android/material/textfield/TextInputLayout$f;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/c/a/a/x/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Lb/c/a/a/x/q$a;

    invoke-direct {p1, p0}, Lb/c/a/a/x/q$a;-><init>(Lb/c/a/a/x/q;)V

    iput-object p1, p0, Lb/c/a/a/x/q;->d:Landroid/text/TextWatcher;

    new-instance p1, Lb/c/a/a/x/q$b;

    invoke-direct {p1, p0}, Lb/c/a/a/x/q$b;-><init>(Lb/c/a/a/x/q;)V

    iput-object p1, p0, Lb/c/a/a/x/q;->e:Lcom/google/android/material/textfield/TextInputLayout$f;

    new-instance p1, Lb/c/a/a/x/q$c;

    invoke-direct {p1, p0}, Lb/c/a/a/x/q$c;-><init>(Lb/c/a/a/x/q;)V

    iput-object p1, p0, Lb/c/a/a/x/q;->f:Lcom/google/android/material/textfield/TextInputLayout$g;

    return-void
.end method

.method public static d(Lb/c/a/a/x/q;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lb/c/a/a/x/n;->b:Landroid/content/Context;

    const v2, 0x7f07006b

    invoke-static {v1, v2}, La/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lb/c/a/a/x/q$d;

    invoke-direct {v1, p0}, Lb/c/a/a/x/q$d;-><init>(Lb/c/a/a/x/q;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lb/c/a/a/x/q;->e:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    iget-object v0, p0, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lb/c/a/a/x/q;->f:Lcom/google/android/material/textfield/TextInputLayout$g;

    .line 1
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
