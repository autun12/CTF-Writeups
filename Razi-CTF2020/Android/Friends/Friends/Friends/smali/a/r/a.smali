.class public La/r/a;
.super La/r/o;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, La/r/o;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, La/r/o;->J(I)La/r/o;

    new-instance v1, La/r/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, La/r/c;-><init>(I)V

    invoke-virtual {p0, v1}, La/r/o;->H(La/r/i;)La/r/o;

    new-instance v1, La/r/b;

    invoke-direct {v1}, La/r/b;-><init>()V

    invoke-virtual {p0, v1}, La/r/o;->H(La/r/i;)La/r/o;

    new-instance v1, La/r/c;

    invoke-direct {v1, v0}, La/r/c;-><init>(I)V

    invoke-virtual {p0, v1}, La/r/o;->H(La/r/i;)La/r/o;

    return-void
.end method
