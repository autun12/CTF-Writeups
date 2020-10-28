.class public final Lb/b/a/l/u/c0/i$b;
.super Lb/b/a/l/u/c0/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/c0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/l/u/c0/c<",
        "Lb/b/a/l/u/c0/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/a/l/u/c0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/l/u/c0/l;
    .locals 1

    .line 1
    new-instance v0, Lb/b/a/l/u/c0/i$a;

    invoke-direct {v0, p0}, Lb/b/a/l/u/c0/i$a;-><init>(Lb/b/a/l/u/c0/i$b;)V

    return-object v0
.end method

.method public d(ILjava/lang/Class;)Lb/b/a/l/u/c0/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lb/b/a/l/u/c0/i$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/a/l/u/c0/c;->b()Lb/b/a/l/u/c0/l;

    move-result-object v0

    check-cast v0, Lb/b/a/l/u/c0/i$a;

    .line 1
    iput p1, v0, Lb/b/a/l/u/c0/i$a;->b:I

    iput-object p2, v0, Lb/b/a/l/u/c0/i$a;->c:Ljava/lang/Class;

    return-object v0
.end method
