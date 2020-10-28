.class public La/r/b;
.super La/r/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/r/b$i;
    }
.end annotation


# static fields
.field public static final A:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "La/r/b$i;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final C:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "La/r/b$i;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static G:La/r/g;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public y:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/r/b;->z:[Ljava/lang/String;

    new-instance v0, La/r/b$a;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, La/r/b$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/b;->A:Landroid/util/Property;

    new-instance v0, La/r/b$b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, La/r/b$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/b;->B:Landroid/util/Property;

    new-instance v0, La/r/b$c;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, La/r/b$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/b;->C:Landroid/util/Property;

    new-instance v0, La/r/b$d;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, La/r/b$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/b;->D:Landroid/util/Property;

    new-instance v0, La/r/b$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, La/r/b$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/b;->E:Landroid/util/Property;

    new-instance v0, La/r/b$f;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, La/r/b$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/b;->F:Landroid/util/Property;

    new-instance v0, La/r/g;

    invoke-direct {v0}, La/r/g;-><init>()V

    sput-object v0, La/r/b;->G:La/r/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/r/i;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, La/r/b;->y:[I

    return-void
.end method


# virtual methods
.method public final H(La/r/q;)V
    .locals 6

    iget-object v0, p1, La/r/q;->b:Landroid/view/View;

    .line 1
    sget-object v1, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, La/r/q;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeBounds:bounds"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, La/r/q;->a:Ljava/util/Map;

    iget-object p1, p1, La/r/q;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v1, "android:changeBounds:parent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(La/r/q;)V
    .locals 0

    invoke-virtual {p0, p1}, La/r/b;->H(La/r/q;)V

    return-void
.end method

.method public g(La/r/q;)V
    .locals 0

    invoke-virtual {p0, p1}, La/r/b;->H(La/r/q;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;La/r/q;La/r/q;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_13

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v4, v1, La/r/q;->a:Ljava/util/Map;

    iget-object v5, v2, La/r/q;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:parent"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_12

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, v2, La/r/q;->b:Landroid/view/View;

    iget-object v5, v1, La/r/q;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:bounds"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v7, v2, La/r/q;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v11, v7

    sub-int v14, v5, v9

    sub-int v15, v12, v8

    sub-int v3, v6, v10

    iget-object v1, v1, La/r/q;->a:Ljava/util/Map;

    const-string v0, "android:changeBounds:clip"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, v2, La/r/q;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-eqz v13, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v15, :cond_7

    if-eqz v3, :cond_7

    :cond_3
    if-ne v7, v8, :cond_5

    if-eq v9, v10, :cond_4

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x1

    :goto_1
    if-ne v11, v12, :cond_6

    if-eq v5, v6, :cond_8

    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    :cond_a
    add-int/lit8 v16, v16, 0x1

    :cond_b
    move/from16 v0, v16

    if-lez v0, :cond_11

    invoke-static {v4, v7, v9, v11, v5}, La/r/t;->b(Landroid/view/View;IIII)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    if-ne v13, v15, :cond_c

    if-ne v14, v3, :cond_c

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, La/r/i;->u:La/r/e;

    int-to-float v3, v7

    int-to-float v5, v9

    int-to-float v6, v8

    int-to-float v7, v10

    .line 2
    invoke-virtual {v1, v3, v5, v6, v7}, La/r/e;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, La/r/b;->F:Landroid/util/Property;

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    new-instance v3, La/r/b$i;

    invoke-direct {v3, v4}, La/r/b$i;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v13, v0, La/r/i;->u:La/r/e;

    int-to-float v7, v7

    int-to-float v9, v9

    int-to-float v8, v8

    int-to-float v10, v10

    .line 4
    invoke-virtual {v13, v7, v9, v8, v10}, La/r/e;->a(FFFF)Landroid/graphics/Path;

    move-result-object v7

    sget-object v8, La/r/b;->B:Landroid/util/Property;

    invoke-static {v3, v8, v7}, La/h/b/f;->Q(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 5
    iget-object v8, v0, La/r/i;->u:La/r/e;

    int-to-float v9, v11

    int-to-float v5, v5

    int-to-float v10, v12

    int-to-float v6, v6

    .line 6
    invoke-virtual {v8, v9, v5, v10, v6}, La/r/e;->a(FFFF)Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, La/r/b;->C:Landroid/util/Property;

    invoke-static {v3, v6, v5}, La/h/b/f;->Q(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v7, v1, v8

    aput-object v5, v1, v2

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, La/r/b$g;

    invoke-direct {v1, v0, v3}, La/r/b$g;-><init>(La/r/b;La/r/b$i;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    if-ne v7, v8, :cond_f

    if-eq v9, v10, :cond_e

    goto :goto_3

    .line 7
    :cond_e
    iget-object v1, v0, La/r/i;->u:La/r/e;

    int-to-float v3, v11

    int-to-float v5, v5

    int-to-float v7, v12

    int-to-float v6, v6

    .line 8
    invoke-virtual {v1, v3, v5, v7, v6}, La/r/e;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, La/r/b;->D:Landroid/util/Property;

    goto :goto_4

    .line 9
    :cond_f
    :goto_3
    iget-object v1, v0, La/r/i;->u:La/r/e;

    int-to-float v3, v7

    int-to-float v5, v9

    int-to-float v6, v8

    int-to-float v7, v10

    .line 10
    invoke-virtual {v1, v3, v5, v6, v7}, La/r/e;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, La/r/b;->E:Landroid/util/Property;

    :goto_4
    invoke-static {v4, v3, v1}, La/h/b/f;->Q(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, La/r/s;->a(Landroid/view/ViewGroup;Z)V

    new-instance v2, La/r/b$h;

    invoke-direct {v2, v0, v1}, La/r/b$h;-><init>(La/r/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, La/r/i;->a(La/r/i$d;)La/r/i;

    :cond_10
    return-object v6

    :cond_11
    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1

    :cond_12
    :goto_6
    const/4 v1, 0x0

    return-object v1

    :cond_13
    :goto_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public p()[Ljava/lang/String;
    .locals 1

    sget-object v0, La/r/b;->z:[Ljava/lang/String;

    return-object v0
.end method
