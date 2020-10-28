.class public Lb/b/a/l/u/l$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/m<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lb/b/a/p/f;

.field public final synthetic c:Lb/b/a/l/u/l;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/l;Lb/b/a/p/f;Lb/b/a/l/u/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/p/f;",
            "Lb/b/a/l/u/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lb/b/a/l/u/l$d;->c:Lb/b/a/l/u/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/l/u/l$d;->b:Lb/b/a/p/f;

    iput-object p3, p0, Lb/b/a/l/u/l$d;->a:Lb/b/a/l/u/m;

    return-void
.end method
