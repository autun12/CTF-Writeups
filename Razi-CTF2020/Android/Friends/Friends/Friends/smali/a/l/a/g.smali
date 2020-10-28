.class public La/l/a/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:La/l/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/l/a/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/l/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l/a/i<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/l/a/g;->a:La/l/a/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, La/l/a/g;->a:La/l/a/i;

    iget-object v0, v0, La/l/a/i;->f:La/l/a/k;

    invoke-virtual {v0}, La/l/a/k;->e0()V

    return-void
.end method
