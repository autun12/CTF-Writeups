.class public Lb/b/a/l/w/c/y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/w/c/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/w/c/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lb/b/a/l/w/c/w;

.field public final b:Lb/b/a/r/d;


# direct methods
.method public constructor <init>(Lb/b/a/l/w/c/w;Lb/b/a/r/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/c/y$a;->a:Lb/b/a/l/w/c/w;

    iput-object p2, p0, Lb/b/a/l/w/c/y$a;->b:Lb/b/a/r/d;

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/u/c0/d;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/c/y$a;->b:Lb/b/a/r/d;

    .line 1
    iget-object v0, v0, Lb/b/a/r/d;->c:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lb/b/a/l/u/c0/d;->e(Landroid/graphics/Bitmap;)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/c/y$a;->a:Lb/b/a/l/w/c/w;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/b/a/l/w/c/w;->b:[B

    array-length v1, v1

    iput v1, v0, Lb/b/a/l/w/c/w;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
