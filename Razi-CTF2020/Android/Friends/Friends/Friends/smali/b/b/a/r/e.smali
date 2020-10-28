.class public final Lb/b/a/r/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/r/e$a;

    invoke-direct {v0}, Lb/b/a/r/e$a;-><init>()V

    sput-object v0, Lb/b/a/r/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lb/b/a/r/e$b;

    invoke-direct {v0}, Lb/b/a/r/e$b;-><init>()V

    sput-object v0, Lb/b/a/r/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
