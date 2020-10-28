.class public Lb/b/a/l/w/c/l$d;
.super Lb/b/a/l/w/c/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/w/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/a/l/w/c/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lb/b/a/l/w/c/l$e;
    .locals 0

    sget-object p1, Lb/b/a/l/w/c/l$e;->c:Lb/b/a/l/w/c/l$e;

    return-object p1
.end method

.method public b(IIII)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
