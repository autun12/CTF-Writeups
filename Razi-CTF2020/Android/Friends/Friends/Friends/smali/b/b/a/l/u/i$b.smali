.class public final Lb/b/a/l/u/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/j$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/a;

.field public final synthetic b:Lb/b/a/l/u/i;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/i;Lb/b/a/l/a;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/u/i$b;->b:Lb/b/a/l/u/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/l/u/i$b;->a:Lb/b/a/l/a;

    return-void
.end method
