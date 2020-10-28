.class public final Lb/b/a/l/u/a$b;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lb/b/a/l/u/q<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/m;

.field public final b:Z

.field public c:Lb/b/a/l/u/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/a/l/m;Lb/b/a/l/u/q;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/m;",
            "Lb/b/a/l/u/q<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lb/b/a/l/u/q<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    .line 1
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/l/u/a$b;->a:Lb/b/a/l/m;

    .line 3
    iget-boolean p1, p2, Lb/b/a/l/u/q;->b:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 4
    iget-object p1, p2, Lb/b/a/l/u/q;->d:Lb/b/a/l/u/w;

    .line 5
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-object p1, p0, Lb/b/a/l/u/a$b;->c:Lb/b/a/l/u/w;

    .line 7
    iget-boolean p1, p2, Lb/b/a/l/u/q;->b:Z

    .line 8
    iput-boolean p1, p0, Lb/b/a/l/u/a$b;->b:Z

    return-void
.end method
