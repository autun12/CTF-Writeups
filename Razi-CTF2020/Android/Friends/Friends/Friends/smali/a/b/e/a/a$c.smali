.class public La/b/e/a/a$c;
.super La/b/e/a/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public K:La/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L:La/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/e/a/a$c;La/b/e/a/a;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/b/e/a/d$a;-><init>(La/b/e/a/d$a;La/b/e/a/d;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object p2, p1, La/b/e/a/a$c;->K:La/e/e;

    iput-object p2, p0, La/b/e/a/a$c;->K:La/e/e;

    iget-object p1, p1, La/b/e/a/a$c;->L:La/e/i;

    goto :goto_0

    :cond_0
    new-instance p1, La/e/e;

    invoke-direct {p1}, La/e/e;-><init>()V

    iput-object p1, p0, La/b/e/a/a$c;->K:La/e/e;

    new-instance p1, La/e/i;

    const/16 p2, 0xa

    .line 1
    invoke-direct {p1, p2}, La/e/i;-><init>(I)V

    .line 2
    :goto_0
    iput-object p1, p0, La/b/e/a/a$c;->L:La/e/i;

    return-void
.end method

.method public static h(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, La/b/e/a/a$c;->K:La/e/e;

    invoke-virtual {v0}, La/e/e;->c()La/e/e;

    move-result-object v0

    iput-object v0, p0, La/b/e/a/a$c;->K:La/e/e;

    iget-object v0, p0, La/b/e/a/a$c;->L:La/e/i;

    invoke-virtual {v0}, La/e/i;->b()La/e/i;

    move-result-object v0

    iput-object v0, p0, La/b/e/a/a$c;->L:La/e/i;

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/b/e/a/a$c;->L:La/e/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, La/e/i;->e(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, La/b/e/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/b/e/a/a;-><init>(La/b/e/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, La/b/e/a/a;

    invoke-direct {v0, p0, p1}, La/b/e/a/a;-><init>(La/b/e/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
