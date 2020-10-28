.class public Lb/c/a/a/x/h$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/x/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lb/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    iget-object v0, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lb/c/a/a/x/h;->d(Lb/c/a/a/x/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lb/c/a/a/x/h;->o:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v5, v1, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v1, v1, Lb/c/a/a/x/h;->k:Lb/c/a/a/u/g;

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    iget-object v1, v1, Lb/c/a/a/x/h;->j:Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_1
    iget-object v1, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v5, v1, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    iget-object v7, v1, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lb/c/a/a/u/g;

    move-result-object v7

    const v8, 0x7f0300b0

    invoke-static {v0, v8}, Lb/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v8

    new-array v9, v3, [[I

    new-array v10, v4, [I

    const v11, 0x10100a7

    aput v11, v10, v6

    aput-object v10, v9, v6

    new-array v10, v6, [I

    aput-object v10, v9, v4

    const v10, 0x3dcccccd    # 0.1f

    if-ne v5, v3, :cond_4

    const v1, 0x7f0300bf

    .line 4
    invoke-static {v0, v1}, Lb/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v1

    new-instance v5, Lb/c/a/a/u/g;

    .line 5
    iget-object v11, v7, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v11, v11, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    .line 6
    invoke-direct {v5, v11}, Lb/c/a/a/u/g;-><init>(Lb/c/a/a/u/j;)V

    invoke-static {v8, v1, v10}, Lb/c/a/a/a;->n(IIF)I

    move-result v8

    new-array v10, v3, [I

    aput v8, v10, v6

    aput v6, v10, v4

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v11}, Lb/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_3

    invoke-virtual {v5, v1}, Lb/c/a/a/u/g;->setTint(I)V

    new-array v10, v3, [I

    aput v8, v10, v6

    aput v1, v10, v4

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v8, Lb/c/a/a/u/g;

    .line 7
    iget-object v9, v7, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v9, v9, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    .line 8
    invoke-direct {v8, v9}, Lb/c/a/a/u/g;-><init>(Lb/c/a/a/u/j;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lb/c/a/a/u/g;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v1, v5, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v1, v6

    aput-object v7, v1, v4

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v6

    aput-object v7, v1, v4

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 9
    :goto_1
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-ne v5, v4, :cond_6

    .line 10
    iget-object v1, v1, Lb/c/a/a/x/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v1

    invoke-static {v8, v1, v10}, Lb/c/a/a/a;->n(IIF)I

    move-result v5

    new-array v8, v3, [I

    aput v5, v8, v6

    aput v1, v8, v4

    if-eqz v2, :cond_5

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v1, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 12
    :cond_5
    new-instance v1, Lb/c/a/a/u/g;

    .line 13
    iget-object v5, v7, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    iget-object v5, v5, Lb/c/a/a/u/g$b;->a:Lb/c/a/a/u/j;

    .line 14
    invoke-direct {v1, v5}, Lb/c/a/a/u/g;-><init>(Lb/c/a/a/u/j;)V

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v5}, Lb/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v3, v6

    aput-object v1, v3, v4

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 15
    sget-object v3, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 16
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v5

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    .line 18
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v8

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 21
    :cond_6
    :goto_2
    iget-object v1, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lb/c/a/a/x/i;

    invoke-direct {v3, v1, v0}, Lb/c/a/a/x/i;-><init>(Lb/c/a/a/x/h;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lb/c/a/a/x/j;

    invoke-direct {v3, v1}, Lb/c/a/a/x/j;-><init>(Lb/c/a/a/x/h;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz v2, :cond_7

    new-instance v2, Lb/c/a/a/x/k;

    invoke-direct {v2, v1}, Lb/c/a/a/x/k;-><init>(Lb/c/a/a/x/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 23
    :cond_7
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    .line 24
    iget-object v1, v1, Lb/c/a/a/x/h;->d:Landroid/text/TextWatcher;

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    .line 26
    iget-object v1, v1, Lb/c/a/a/x/h;->d:Landroid/text/TextWatcher;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lb/c/a/a/x/h$c;->a:Lb/c/a/a/x/h;

    .line 28
    iget-object v0, v0, Lb/c/a/a/x/h;->e:Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
