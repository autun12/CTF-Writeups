.class public La/r/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:La/r/z;

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, La/r/y;

    invoke-direct {v0}, La/r/y;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, La/r/x;

    invoke-direct {v0}, La/r/x;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    new-instance v0, La/r/w;

    invoke-direct {v0}, La/r/w;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, La/r/v;

    invoke-direct {v0}, La/r/v;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, La/r/u;

    invoke-direct {v0}, La/r/u;-><init>()V

    :goto_0
    sput-object v0, La/r/t;->a:La/r/z;

    new-instance v0, La/r/t$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, La/r/t$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, La/r/t;->b:Landroid/util/Property;

    new-instance v0, La/r/t$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, La/r/t$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1

    sget-object v0, La/r/t;->a:La/r/z;

    invoke-virtual {v0, p0}, La/r/z;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, La/r/t;->a:La/r/z;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, La/r/z;->d(Landroid/view/View;IIII)V

    return-void
.end method
