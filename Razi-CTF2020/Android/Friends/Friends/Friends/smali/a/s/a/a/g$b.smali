.class public La/s/a/a/g$b;
.super La/s/a/a/g$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/s/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/s/a/a/g$f;-><init>()V

    return-void
.end method

.method public constructor <init>(La/s/a/a/g$b;)V
    .locals 0

    invoke-direct {p0, p1}, La/s/a/a/g$f;-><init>(La/s/a/a/g$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
