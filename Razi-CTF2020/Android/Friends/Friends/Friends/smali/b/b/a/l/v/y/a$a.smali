.class public Lb/b/a/l/v/y/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/o<",
        "Lb/b/a/l/v/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/m<",
            "Lb/b/a/l/v/g;",
            "Lb/b/a/l/v/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/v/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lb/b/a/l/v/m;-><init>(J)V

    iput-object v0, p0, Lb/b/a/l/v/y/a$a;->a:Lb/b/a/l/v/m;

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
            "Lb/b/a/l/v/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lb/b/a/l/v/y/a;

    iget-object v0, p0, Lb/b/a/l/v/y/a$a;->a:Lb/b/a/l/v/m;

    invoke-direct {p1, v0}, Lb/b/a/l/v/y/a;-><init>(Lb/b/a/l/v/m;)V

    return-object p1
.end method
