.class public La/h/j/w$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/j/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:La/h/j/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, La/h/j/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/h/j/w;-><init>(La/h/j/w;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/h/j/w$c;->a:La/h/j/w;

    return-void
.end method

.method public constructor <init>(La/h/j/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/h/j/w$c;->a:La/h/j/w;

    return-void
.end method


# virtual methods
.method public a()La/h/j/w;
    .locals 1

    iget-object v0, p0, La/h/j/w$c;->a:La/h/j/w;

    return-object v0
.end method

.method public b(La/h/d/b;)V
    .locals 0

    return-void
.end method

.method public c(La/h/d/b;)V
    .locals 0

    return-void
.end method
