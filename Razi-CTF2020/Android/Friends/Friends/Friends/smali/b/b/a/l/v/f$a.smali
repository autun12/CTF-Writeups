.class public Lb/b/a/l/v/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/o<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/v/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/a/l/v/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/f$a;->a:Lb/b/a/l/v/f$d;

    return-void
.end method


# virtual methods
.method public final b(Lb/b/a/l/v/r;)Lb/b/a/l/v/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/r;",
            ")",
            "Lb/b/a/l/v/n<",
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    new-instance p1, Lb/b/a/l/v/f;

    iget-object v0, p0, Lb/b/a/l/v/f$a;->a:Lb/b/a/l/v/f$d;

    invoke-direct {p1, v0}, Lb/b/a/l/v/f;-><init>(Lb/b/a/l/v/f$d;)V

    return-object p1
.end method
