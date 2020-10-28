.class public La/f/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:La/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/f/b/e<",
            "La/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/f/b/e<",
            "La/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:La/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/f/b/e<",
            "La/f/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:[La/f/b/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/f/b/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, La/f/b/e;-><init>(I)V

    iput-object v0, p0, La/f/b/c;->a:La/f/b/e;

    new-instance v0, La/f/b/e;

    invoke-direct {v0, v1}, La/f/b/e;-><init>(I)V

    iput-object v0, p0, La/f/b/c;->b:La/f/b/e;

    new-instance v0, La/f/b/e;

    invoke-direct {v0, v1}, La/f/b/e;-><init>(I)V

    iput-object v0, p0, La/f/b/c;->c:La/f/b/e;

    const/16 v0, 0x20

    new-array v0, v0, [La/f/b/g;

    iput-object v0, p0, La/f/b/c;->d:[La/f/b/g;

    return-void
.end method
