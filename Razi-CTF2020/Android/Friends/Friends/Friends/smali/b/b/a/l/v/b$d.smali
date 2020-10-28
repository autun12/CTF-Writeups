.class public Lb/b/a/l/v/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/o<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb/b/a/l/v/r;)Lb/b/a/l/v/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/r;",
            ")",
            "Lb/b/a/l/v/n<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lb/b/a/l/v/b;

    new-instance v0, Lb/b/a/l/v/b$d$a;

    invoke-direct {v0, p0}, Lb/b/a/l/v/b$d$a;-><init>(Lb/b/a/l/v/b$d;)V

    invoke-direct {p1, v0}, Lb/b/a/l/v/b;-><init>(Lb/b/a/l/v/b$b;)V

    return-object p1
.end method
