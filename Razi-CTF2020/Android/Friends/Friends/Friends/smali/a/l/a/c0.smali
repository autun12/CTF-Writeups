.class public La/l/a/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/n/g;


# instance fields
.field public b:La/n/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/l/a/c0;->b:La/n/h;

    return-void
.end method


# virtual methods
.method public a()La/n/d;
    .locals 1

    .line 1
    iget-object v0, p0, La/l/a/c0;->b:La/n/h;

    if-nez v0, :cond_0

    new-instance v0, La/n/h;

    invoke-direct {v0, p0}, La/n/h;-><init>(La/n/g;)V

    iput-object v0, p0, La/l/a/c0;->b:La/n/h;

    .line 2
    :cond_0
    iget-object v0, p0, La/l/a/c0;->b:La/n/h;

    return-object v0
.end method
