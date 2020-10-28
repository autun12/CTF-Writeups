.class public Lb/b/a/l/v/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/r/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/r/g<",
            "Lb/b/a/l/v/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/v/m$a;

    invoke-direct {v0, p0, p1, p2}, Lb/b/a/l/v/m$a;-><init>(Lb/b/a/l/v/m;J)V

    iput-object v0, p0, Lb/b/a/l/v/m;->a:Lb/b/a/r/g;

    return-void
.end method
