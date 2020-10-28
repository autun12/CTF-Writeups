.class public final La/o/a/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/n/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/o/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)La/n/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/n/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, La/o/a/b$b;

    invoke-direct {p1}, La/o/a/b$b;-><init>()V

    return-object p1
.end method
