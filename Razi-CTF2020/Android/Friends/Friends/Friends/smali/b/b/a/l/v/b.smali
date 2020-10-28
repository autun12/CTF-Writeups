.class public Lb/b/a/l/v/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/b$d;,
        Lb/b/a/l/v/b$a;,
        Lb/b/a/l/v/b$c;,
        Lb/b/a/l/v/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/v/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/a/l/v/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/b;->a:Lb/b/a/l/v/b$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 1

    check-cast p1, [B

    .line 1
    new-instance p2, Lb/b/a/l/v/n$a;

    new-instance p3, Lb/b/a/q/b;

    invoke-direct {p3, p1}, Lb/b/a/q/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lb/b/a/l/v/b$c;

    iget-object v0, p0, Lb/b/a/l/v/b;->a:Lb/b/a/l/v/b$b;

    invoke-direct {p4, p1, v0}, Lb/b/a/l/v/b$c;-><init>([BLb/b/a/l/v/b$b;)V

    invoke-direct {p2, p3, p4}, Lb/b/a/l/v/n$a;-><init>(Lb/b/a/l/m;Lb/b/a/l/t/d;)V

    return-object p2
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [B

    const/4 p1, 0x1

    return p1
.end method
