.class public La/b/h/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/g/i/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/h/k0$c;,
        La/b/h/k0$d;,
        La/b/h/k0$e;,
        La/b/h/k0$a;,
        La/b/h/k0$b;
    }
.end annotation


# static fields
.field public static B:Ljava/lang/reflect/Method;

.field public static C:Ljava/lang/reflect/Method;

.field public static D:Ljava/lang/reflect/Method;


# instance fields
.field public A:Landroid/widget/PopupWindow;

.field public b:Landroid/content/Context;

.field public c:Landroid/widget/ListAdapter;

.field public d:La/b/h/f0;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroid/database/DataSetObserver;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/AdapterView$OnItemClickListener;

.field public final s:La/b/h/k0$e;

.field public final t:La/b/h/k0$d;

.field public final u:La/b/h/k0$c;

.field public final v:La/b/h/k0$a;

.field public final w:Landroid/os/Handler;

.field public final x:Landroid/graphics/Rect;

.field public y:Landroid/graphics/Rect;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ListPopupWindow"

    const/16 v5, 0x1c

    if-gt v1, v5, :cond_0

    :try_start_0
    const-class v5, Landroid/widget/PopupWindow;

    const-string v6, "setClipToScreenEnabled"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, La/b/h/k0;->B:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-class v5, Landroid/widget/PopupWindow;

    const-string v6, "setEpicenterBounds"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, La/b/h/k0;->D:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v5, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/16 v5, 0x17

    if-gt v1, v5, :cond_1

    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string v5, "getMaxAvailableHeight"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v3

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, La/b/h/k0;->C:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, La/b/h/k0;->e:I

    iput v0, p0, La/b/h/k0;->f:I

    const/16 v0, 0x3ea

    iput v0, p0, La/b/h/k0;->i:I

    const/4 v0, 0x0

    iput v0, p0, La/b/h/k0;->m:I

    const v1, 0x7fffffff

    iput v1, p0, La/b/h/k0;->n:I

    iput v0, p0, La/b/h/k0;->o:I

    new-instance v1, La/b/h/k0$e;

    invoke-direct {v1, p0}, La/b/h/k0$e;-><init>(La/b/h/k0;)V

    iput-object v1, p0, La/b/h/k0;->s:La/b/h/k0$e;

    new-instance v1, La/b/h/k0$d;

    invoke-direct {v1, p0}, La/b/h/k0$d;-><init>(La/b/h/k0;)V

    iput-object v1, p0, La/b/h/k0;->t:La/b/h/k0$d;

    new-instance v1, La/b/h/k0$c;

    invoke-direct {v1, p0}, La/b/h/k0$c;-><init>(La/b/h/k0;)V

    iput-object v1, p0, La/b/h/k0;->u:La/b/h/k0$c;

    new-instance v1, La/b/h/k0$a;

    invoke-direct {v1, p0}, La/b/h/k0$a;-><init>(La/b/h/k0;)V

    iput-object v1, p0, La/b/h/k0;->v:La/b/h/k0$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    iput-object p1, p0, La/b/h/k0;->b:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, La/b/h/k0;->w:Landroid/os/Handler;

    sget-object v1, La/b/b;->o:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, La/b/h/k0;->g:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, La/b/h/k0;->h:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, La/b/h/k0;->j:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, La/b/h/p;

    invoke-direct {v0, p1, p2, p3, p4}, La/b/h/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, La/b/h/k0;->g:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, La/b/h/k0;->g:I

    return v0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    iget-object v0, p0, La/b/h/k0;->w:Landroid/os/Handler;

    iget-object v1, p0, La/b/h/k0;->s:La/b/h/k0$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, La/b/h/k0;->d:La/b/h/f0;

    return-object v0
.end method

.method public i()V
    .locals 15

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, La/b/h/k0;->b:Landroid/content/Context;

    iget-boolean v3, p0, La/b/h/k0;->z:Z

    xor-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, La/b/h/k0;->q(Landroid/content/Context;Z)La/b/h/f0;

    move-result-object v1

    iput-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    iget-object v3, p0, La/b/h/k0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    iget-object v3, p0, La/b/h/k0;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    new-instance v3, La/b/h/j0;

    invoke-direct {v3, p0}, La/b/h/j0;-><init>(La/b/h/k0;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    iget-object v3, p0, La/b/h/k0;->u:La/b/h/k0$c;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, La/b/h/k0;->d:La/b/h/f0;

    iget-object v3, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    iget-boolean v5, p0, La/b/h/k0;->j:Z

    if-nez v5, :cond_2

    neg-int v4, v4

    iput v4, p0, La/b/h/k0;->h:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v1, 0x0

    :cond_2
    :goto_1
    iget-object v4, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 2
    :goto_2
    iget-object v6, p0, La/b/h/k0;->q:Landroid/view/View;

    .line 3
    iget v7, p0, La/b/h/k0;->h:I

    const/16 v8, 0x17

    const-string v9, "ListPopupWindow"

    if-gt v0, v8, :cond_5

    .line 4
    sget-object v8, La/b/h/k0;->C:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    :try_start_0
    iget-object v10, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v11, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v4, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    goto :goto_3

    :cond_5
    iget-object v8, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v6, v7, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 5
    :goto_3
    iget v6, p0, La/b/h/k0;->e:I

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-ne v6, v8, :cond_6

    add-int/2addr v4, v1

    goto :goto_6

    :cond_6
    iget v6, p0, La/b/h/k0;->f:I

    if-eq v6, v7, :cond_8

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v6, v8, :cond_7

    goto :goto_4

    :cond_7
    iget-object v6, p0, La/b/h/k0;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v6, v12

    goto :goto_4

    :cond_8
    iget-object v6, p0, La/b/h/k0;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    sub-int/2addr v6, v11

    const/high16 v10, -0x80000000

    :goto_4
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v10, p0, La/b/h/k0;->d:La/b/h/f0;

    sub-int/2addr v4, v3

    invoke-virtual {v10, v6, v4, v8}, La/b/h/f0;->a(III)I

    move-result v4

    if-lez v4, :cond_9

    iget-object v6, p0, La/b/h/k0;->d:La/b/h/f0;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    iget-object v10, p0, La/b/h/k0;->d:La/b/h/f0;

    invoke-virtual {v10}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v6

    add-int/2addr v10, v1

    add-int/2addr v10, v3

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    add-int/2addr v4, v10

    .line 6
    :goto_6
    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    if-ne v1, v5, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    .line 7
    :goto_7
    iget-object v5, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    iget v6, p0, La/b/h/k0;->i:I

    invoke-static {v5, v6}, La/h/b/f;->p0(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 8
    iget-object v0, p0, La/b/h/k0;->q:Landroid/view/View;

    .line 9
    sget-object v5, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 10
    :cond_b
    iget v0, p0, La/b/h/k0;->f:I

    if-ne v0, v8, :cond_c

    const/4 v0, -0x1

    goto :goto_8

    :cond_c
    if-ne v0, v7, :cond_d

    .line 11
    iget-object v0, p0, La/b/h/k0;->q:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_d
    :goto_8
    iget v5, p0, La/b/h/k0;->e:I

    if-ne v5, v8, :cond_12

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    const/4 v4, -0x1

    :goto_9
    if-eqz v1, :cond_10

    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    iget v5, p0, La/b/h/k0;->f:I

    if-ne v5, v8, :cond_f

    const/4 v5, -0x1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_10
    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    iget v5, p0, La/b/h/k0;->f:I

    if-ne v5, v8, :cond_11

    const/4 v3, -0x1

    :cond_11
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_12
    if-ne v5, v7, :cond_13

    goto :goto_b

    :cond_13
    move v4, v5

    :goto_b
    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v9, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    .line 13
    iget-object v10, p0, La/b/h/k0;->q:Landroid/view/View;

    .line 14
    iget v11, p0, La/b/h/k0;->g:I

    iget v12, p0, La/b/h/k0;->h:I

    if-gez v0, :cond_14

    const/4 v13, -0x1

    goto :goto_c

    :cond_14
    move v13, v0

    :goto_c
    if-gez v4, :cond_15

    const/4 v14, -0x1

    goto :goto_d

    :cond_15
    move v14, v4

    :goto_d
    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_12

    :cond_16
    iget v1, p0, La/b/h/k0;->f:I

    if-ne v1, v8, :cond_17

    const/4 v1, -0x1

    goto :goto_e

    :cond_17
    if-ne v1, v7, :cond_18

    .line 15
    iget-object v1, p0, La/b/h/k0;->q:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_18
    :goto_e
    iget v5, p0, La/b/h/k0;->e:I

    if-ne v5, v8, :cond_19

    const/4 v4, -0x1

    goto :goto_f

    :cond_19
    if-ne v5, v7, :cond_1a

    goto :goto_f

    :cond_1a
    move v4, v5

    :goto_f
    iget-object v5, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1b

    .line 17
    sget-object v4, La/b/h/k0;->B:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1c

    :try_start_1
    iget-object v5, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    const-string v4, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1b
    iget-object v4, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 18
    :cond_1c
    :goto_10
    iget-object v4, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v4, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    iget-object v5, p0, La/b/h/k0;->t:La/b/h/k0$d;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v4, p0, La/b/h/k0;->l:Z

    if-eqz v4, :cond_1d

    iget-object v4, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, La/b/h/k0;->k:Z

    invoke-static {v4, v5}, La/h/b/f;->j0(Landroid/widget/PopupWindow;Z)V

    :cond_1d
    if-gt v0, v1, :cond_1e

    sget-object v0, La/b/h/k0;->D:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_2
    iget-object v1, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, La/b/h/k0;->y:Landroid/graphics/Rect;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_1e
    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    iget-object v1, p0, La/b/h/k0;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :cond_1f
    :goto_11
    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    .line 19
    iget-object v1, p0, La/b/h/k0;->q:Landroid/view/View;

    .line 20
    iget v3, p0, La/b/h/k0;->g:I

    iget v4, p0, La/b/h/k0;->h:I

    iget v5, p0, La/b/h/k0;->m:I

    .line 21
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 22
    iget-object v0, p0, La/b/h/k0;->d:La/b/h/f0;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setSelection(I)V

    iget-boolean v0, p0, La/b/h/k0;->z:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, La/b/h/k0;->d:La/b/h/f0;

    invoke-virtual {v0}, La/b/h/f0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23
    :cond_20
    iget-object v0, p0, La/b/h/k0;->d:La/b/h/f0;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v2}, La/b/h/f0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 24
    :cond_21
    iget-boolean v0, p0, La/b/h/k0;->z:Z

    if-nez v0, :cond_22

    iget-object v0, p0, La/b/h/k0;->w:Landroid/os/Handler;

    iget-object v1, p0, La/b/h/k0;->v:La/b/h/k0$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    :goto_12
    return-void
.end method

.method public j()I
    .locals 1

    iget-boolean v0, p0, La/b/h/k0;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, La/b/h/k0;->h:I

    return v0
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, La/b/h/k0;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/h/k0;->j:Z

    return-void
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, La/b/h/k0;->p:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, La/b/h/k0$b;

    invoke-direct {v0, p0}, La/b/h/k0$b;-><init>(La/b/h/k0;)V

    iput-object v0, p0, La/b/h/k0;->p:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/b/h/k0;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, La/b/h/k0;->c:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, La/b/h/k0;->p:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, La/b/h/k0;->d:La/b/h/f0;

    if-eqz p1, :cond_3

    iget-object v0, p0, La/b/h/k0;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public q(Landroid/content/Context;Z)La/b/h/f0;
    .locals 1

    new-instance v0, La/b/h/f0;

    invoke-direct {v0, p1, p2}, La/b/h/f0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public r(I)V
    .locals 2

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, La/b/h/k0;->x:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, La/b/h/k0;->f:I

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, La/b/h/k0;->f:I

    :goto_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    iput-boolean p1, p0, La/b/h/k0;->z:Z

    iget-object v0, p0, La/b/h/k0;->A:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method
