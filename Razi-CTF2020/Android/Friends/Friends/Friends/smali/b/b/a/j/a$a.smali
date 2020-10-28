.class public Lb/b/a/j/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/j/a;


# direct methods
.method public constructor <init>(Lb/b/a/j/a;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/j/a$a;->a:Lb/b/a/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/a/j/a$a;->a:Lb/b/a/j/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/a/j/a$a;->a:Lb/b/a/j/a;

    .line 2
    iget-object v2, v1, Lb/b/a/j/a;->j:Ljava/io/Writer;

    if-nez v2, :cond_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Lb/b/a/j/a;->o()V

    .line 5
    iget-object v1, p0, Lb/b/a/j/a$a;->a:Lb/b/a/j/a;

    .line 6
    invoke-virtual {v1}, Lb/b/a/j/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lb/b/a/j/a$a;->a:Lb/b/a/j/a;

    .line 8
    invoke-virtual {v1}, Lb/b/a/j/a;->m()V

    .line 9
    iget-object v1, p0, Lb/b/a/j/a$a;->a:Lb/b/a/j/a;

    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lb/b/a/j/a;->l:I

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
