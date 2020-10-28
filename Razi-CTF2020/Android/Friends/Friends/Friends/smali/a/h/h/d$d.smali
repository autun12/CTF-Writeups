.class public La/h/h/d$d;
.super La/h/h/d$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(La/h/h/d$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, La/h/h/d$c;-><init>(La/h/h/d$b;)V

    iput-boolean p2, p0, La/h/h/d$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, La/h/h/d$d;->b:Z

    return v0
.end method
