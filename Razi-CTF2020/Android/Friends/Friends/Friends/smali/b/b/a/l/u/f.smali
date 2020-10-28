.class public Lb/b/a/l/u/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/d0/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/d0/a$b;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/o;


# direct methods
.method public constructor <init>(Lb/b/a/l/d;Ljava/lang/Object;Lb/b/a/l/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/d<",
            "TDataType;>;TDataType;",
            "Lb/b/a/l/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/u/f;->a:Lb/b/a/l/d;

    iput-object p2, p0, Lb/b/a/l/u/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb/b/a/l/u/f;->c:Lb/b/a/l/o;

    return-void
.end method
