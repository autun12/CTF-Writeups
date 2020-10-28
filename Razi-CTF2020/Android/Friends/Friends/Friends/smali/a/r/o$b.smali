.class public La/r/o$b;
.super La/r/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/r/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:La/r/o;


# direct methods
.method public constructor <init>(La/r/o;)V
    .locals 0

    invoke-direct {p0}, La/r/l;-><init>()V

    iput-object p1, p0, La/r/o$b;->a:La/r/o;

    return-void
.end method


# virtual methods
.method public a(La/r/i;)V
    .locals 1

    iget-object p1, p0, La/r/o$b;->a:La/r/o;

    iget-boolean v0, p1, La/r/o;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/r/i;->F()V

    iget-object p1, p0, La/r/o$b;->a:La/r/o;

    const/4 v0, 0x1

    iput-boolean v0, p1, La/r/o;->B:Z

    :cond_0
    return-void
.end method

.method public c(La/r/i;)V
    .locals 2

    iget-object v0, p0, La/r/o$b;->a:La/r/o;

    iget v1, v0, La/r/o;->A:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, La/r/o;->A:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, La/r/o;->B:Z

    invoke-virtual {v0}, La/r/i;->m()V

    :cond_0
    invoke-virtual {p1, p0}, La/r/i;->v(La/r/i$d;)La/r/i;

    return-void
.end method
