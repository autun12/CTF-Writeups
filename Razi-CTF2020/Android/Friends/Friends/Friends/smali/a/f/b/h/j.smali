.class public La/f/b/h/j;
.super La/f/b/h/h;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/f/b/h/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/f/b/h/e;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget v0, p0, La/f/b/h/h;->n0:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, La/f/b/h/h;->m0:[La/f/b/h/d;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, La/f/b/h/d;->B:Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
