.class public final Lb/a/b/w/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/b/w/e;->a:I

    iput-object p2, p0, Lb/a/b/w/e;->b:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lb/a/b/w/e;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/b/w/e;->d:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/b/w/e;->a:I

    iput-object p2, p0, Lb/a/b/w/e;->b:Ljava/util/List;

    iput p3, p0, Lb/a/b/w/e;->c:I

    iput-object p4, p0, Lb/a/b/w/e;->d:Ljava/io/InputStream;

    return-void
.end method
