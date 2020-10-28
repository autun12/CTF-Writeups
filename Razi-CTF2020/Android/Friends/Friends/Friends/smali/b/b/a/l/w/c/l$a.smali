.class public Lb/b/a/l/w/c/l$a;
.super Lb/b/a/l/w/c/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/w/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/a/l/w/c/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lb/b/a/l/w/c/l$e;
    .locals 1

    sget-object v0, Lb/b/a/l/w/c/l$e;->c:Lb/b/a/l/w/c/l$e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/a/l/w/c/l$a;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-boolean p1, Lb/b/a/l/w/c/l;->g:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lb/b/a/l/w/c/l$e;->b:Lb/b/a/l/w/c/l$e;

    :goto_0
    return-object v0
.end method

.method public b(IIII)F
    .locals 1

    sget-object v0, Lb/b/a/l/w/c/l;->a:Lb/b/a/l/w/c/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/b/a/l/w/c/l;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
