.class public La/h/j/x/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/j/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:La/h/j/x/b$a;

.field public static final f:La/h/j/x/b$a;

.field public static final g:La/h/j/x/b$a;

.field public static final h:La/h/j/x/b$a;

.field public static final i:La/h/j/x/b$a;

.field public static final j:La/h/j/x/b$a;

.field public static final k:La/h/j/x/b$a;

.field public static final l:La/h/j/x/b$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "La/h/j/x/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:La/h/j/x/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_0
    const/4 v3, 0x2

    if-lt v0, v1, :cond_1

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1
    const/4 v3, 0x4

    if-lt v0, v1, :cond_2

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_2
    const/16 v3, 0x8

    if-lt v0, v1, :cond_3

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 2
    :cond_3
    new-instance v3, La/h/j/x/b$a;

    const/16 v4, 0x10

    invoke-direct {v3, v4, v2}, La/h/j/x/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v3, La/h/j/x/b$a;->e:La/h/j/x/b$a;

    const/16 v3, 0x20

    if-lt v0, v1, :cond_4

    .line 3
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_4
    const/16 v3, 0x40

    if-lt v0, v1, :cond_5

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_5
    const/16 v3, 0x80

    if-lt v0, v1, :cond_6

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_6
    const/16 v3, 0x100

    if-lt v0, v1, :cond_7

    .line 4
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_7
    const/16 v3, 0x200

    if-lt v0, v1, :cond_8

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_8
    const/16 v3, 0x400

    if-lt v0, v1, :cond_9

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_9
    const/16 v3, 0x800

    if-lt v0, v1, :cond_a

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 5
    :cond_a
    new-instance v3, La/h/j/x/b$a;

    const/16 v4, 0x1000

    invoke-direct {v3, v4, v2}, La/h/j/x/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v3, La/h/j/x/b$a;->f:La/h/j/x/b$a;

    new-instance v3, La/h/j/x/b$a;

    const/16 v4, 0x2000

    invoke-direct {v3, v4, v2}, La/h/j/x/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v3, La/h/j/x/b$a;->g:La/h/j/x/b$a;

    const/16 v3, 0x4000

    if-lt v0, v1, :cond_b

    .line 6
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_b
    const v3, 0x8000

    if-lt v0, v1, :cond_c

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_c
    const/high16 v3, 0x10000

    if-lt v0, v1, :cond_d

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_d
    const/high16 v3, 0x20000

    if-lt v0, v1, :cond_e

    .line 7
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 8
    :cond_e
    new-instance v3, La/h/j/x/b$a;

    const/high16 v4, 0x40000

    invoke-direct {v3, v4, v2}, La/h/j/x/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v3, La/h/j/x/b$a;->h:La/h/j/x/b$a;

    new-instance v3, La/h/j/x/b$a;

    const/high16 v4, 0x80000

    invoke-direct {v3, v4, v2}, La/h/j/x/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v3, La/h/j/x/b$a;->i:La/h/j/x/b$a;

    new-instance v3, La/h/j/x/b$a;

    const/high16 v4, 0x100000

    invoke-direct {v3, v4, v2}, La/h/j/x/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v3, La/h/j/x/b$a;->j:La/h/j/x/b$a;

    const/high16 v3, 0x200000

    if-lt v0, v1, :cond_f

    .line 9
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_f
    const/16 v3, 0x17

    if-lt v0, v3, :cond_10

    .line 10
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    :cond_10
    move-object v4, v2

    :goto_0
    const v5, 0x1020036

    if-lt v0, v1, :cond_11

    if-nez v4, :cond_11

    .line 11
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_11
    if-lt v0, v3, :cond_12

    .line 12
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    :cond_12
    move-object v4, v2

    :goto_1
    const v5, 0x1020037

    if-lt v0, v1, :cond_13

    if-nez v4, :cond_13

    .line 13
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 14
    :cond_13
    new-instance v4, La/h/j/x/b$a;

    if-lt v0, v3, :cond_14

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v7, v5

    goto :goto_2

    :cond_14
    move-object v7, v2

    :goto_2
    const v8, 0x1020038

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, La/h/j/x/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;La/h/j/x/d;Ljava/lang/Class;)V

    sput-object v4, La/h/j/x/b$a;->k:La/h/j/x/b$a;

    if-lt v0, v3, :cond_15

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    :cond_15
    move-object v4, v2

    :goto_3
    const v5, 0x1020039

    if-lt v0, v1, :cond_16

    if-nez v4, :cond_16

    .line 15
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 16
    :cond_16
    new-instance v4, La/h/j/x/b$a;

    if-lt v0, v3, :cond_17

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v7, v5

    goto :goto_4

    :cond_17
    move-object v7, v2

    :goto_4
    const v8, 0x102003a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, La/h/j/x/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;La/h/j/x/d;Ljava/lang/Class;)V

    sput-object v4, La/h/j/x/b$a;->l:La/h/j/x/b$a;

    if-lt v0, v3, :cond_18

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5

    :cond_18
    move-object v4, v2

    :goto_5
    const v5, 0x102003b

    if-lt v0, v1, :cond_19

    if-nez v4, :cond_19

    .line 17
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_19
    const/16 v4, 0x1d

    if-lt v0, v4, :cond_1a

    .line 18
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_6

    :cond_1a
    move-object v5, v2

    :goto_6
    const v6, 0x1020046

    if-lt v0, v1, :cond_1b

    if-nez v5, :cond_1b

    .line 19
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1b
    if-lt v0, v4, :cond_1c

    .line 20
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_7

    :cond_1c
    move-object v5, v2

    :goto_7
    const v6, 0x1020047

    if-lt v0, v1, :cond_1d

    if-nez v5, :cond_1d

    .line 21
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1d
    if-lt v0, v4, :cond_1e

    .line 22
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_8

    :cond_1e
    move-object v5, v2

    :goto_8
    const v6, 0x1020048

    if-lt v0, v1, :cond_1f

    if-nez v5, :cond_1f

    .line 23
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1f
    if-lt v0, v4, :cond_20

    .line 24
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_9

    :cond_20
    move-object v4, v2

    :goto_9
    const v5, 0x1020049

    if-lt v0, v1, :cond_21

    if-nez v4, :cond_21

    .line 25
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_21
    if-lt v0, v3, :cond_22

    .line 26
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_a

    :cond_22
    move-object v3, v2

    :goto_a
    const v4, 0x102003c

    if-lt v0, v1, :cond_23

    if-nez v3, :cond_23

    .line 27
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_23
    const/16 v3, 0x18

    if-lt v0, v3, :cond_24

    .line 28
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_b

    :cond_24
    move-object v3, v2

    :goto_b
    const v4, 0x102003d

    if-lt v0, v1, :cond_25

    if-nez v3, :cond_25

    .line 29
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_25
    const/16 v3, 0x1a

    if-lt v0, v3, :cond_26

    .line 30
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_c

    :cond_26
    move-object v3, v2

    :goto_c
    const v4, 0x1020042

    if-lt v0, v1, :cond_27

    if-nez v3, :cond_27

    .line 31
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_27
    const/16 v3, 0x1c

    if-lt v0, v3, :cond_28

    .line 32
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_d

    :cond_28
    move-object v4, v2

    :goto_d
    const v5, 0x1020044

    if-lt v0, v1, :cond_29

    if-nez v4, :cond_29

    .line 33
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_29
    if-lt v0, v3, :cond_2a

    .line 34
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_e

    :cond_2a
    move-object v3, v2

    :goto_e
    const v4, 0x1020045

    if-lt v0, v1, :cond_2b

    if-nez v3, :cond_2b

    .line 35
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_2b
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, La/h/j/x/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;La/h/j/x/d;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/CharSequence;La/h/j/x/d;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/CharSequence;",
            "La/h/j/x/d;",
            "Ljava/lang/Class<",
            "+",
            "La/h/j/x/d$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La/h/j/x/b$a;->b:I

    iput-object p4, p0, La/h/j/x/b$a;->d:La/h/j/x/d;

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_0

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, La/h/j/x/b$a;->a:Ljava/lang/Object;

    iput-object p5, p0, La/h/j/x/b$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, La/h/j/x/b$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La/h/j/x/b$a;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, La/h/j/x/b$a;

    iget-object v1, p0, La/h/j/x/b$a;->a:Ljava/lang/Object;

    iget-object p1, p1, La/h/j/x/b$a;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    return v0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/h/j/x/b$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
