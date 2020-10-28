.class public Lb/b/a/l/v/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/d$a;,
        Lb/b/a/l/v/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
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
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 0

    check-cast p1, Ljava/io/File;

    .line 1
    new-instance p2, Lb/b/a/l/v/n$a;

    new-instance p3, Lb/b/a/q/b;

    invoke-direct {p3, p1}, Lb/b/a/q/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lb/b/a/l/v/d$a;

    invoke-direct {p4, p1}, Lb/b/a/l/v/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3, p4}, Lb/b/a/l/v/n$a;-><init>(Lb/b/a/l/m;Lb/b/a/l/t/d;)V

    return-object p2
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    const/4 p1, 0x1

    return p1
.end method
