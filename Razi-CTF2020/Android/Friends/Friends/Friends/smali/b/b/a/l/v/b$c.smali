.class public Lb/b/a/l/v/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/t/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/t/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:[B

.field public final c:Lb/b/a/l/v/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLb/b/a/l/v/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lb/b/a/l/v/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/b$c;->b:[B

    iput-object p2, p0, Lb/b/a/l/v/b$c;->c:Lb/b/a/l/v/b$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/l/v/b$c;->c:Lb/b/a/l/v/b$b;

    invoke-interface {v0}, Lb/b/a/l/v/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public d(Lb/b/a/e;Lb/b/a/l/t/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/e;",
            "Lb/b/a/l/t/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lb/b/a/l/v/b$c;->c:Lb/b/a/l/v/b$b;

    iget-object v0, p0, Lb/b/a/l/v/b$c;->b:[B

    invoke-interface {p1, v0}, Lb/b/a/l/v/b$b;->b([B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lb/b/a/l/t/d$a;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lb/b/a/l/a;
    .locals 1

    sget-object v0, Lb/b/a/l/a;->b:Lb/b/a/l/a;

    return-object v0
.end method
