.class public Lb/c/a/a/o/d$c;
.super Lb/c/a/a/o/d$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/o/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lb/c/a/a/o/d;


# direct methods
.method public constructor <init>(Lb/c/a/a/o/d;)V
    .locals 1

    iput-object p1, p0, Lb/c/a/a/o/d$c;->d:Lb/c/a/a/o/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/c/a/a/o/d$h;-><init>(Lb/c/a/a/o/d;Lb/c/a/a/o/b;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    iget-object v0, p0, Lb/c/a/a/o/d$c;->d:Lb/c/a/a/o/d;

    iget v1, v0, Lb/c/a/a/o/d;->d:F

    iget v0, v0, Lb/c/a/a/o/d;->e:F

    add-float/2addr v1, v0

    return v1
.end method
