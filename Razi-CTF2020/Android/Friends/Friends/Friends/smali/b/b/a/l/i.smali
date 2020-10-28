.class public Lb/b/a/l/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/k;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Lb/b/a/l/u/c0/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/i;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lb/b/a/l/i;->b:Lb/b/a/l/u/c0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/ImageHeaderParser;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/b/a/l/i;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lb/b/a/l/i;->b:Lb/b/a/l/u/c0/b;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->b(Ljava/io/InputStream;Lb/b/a/l/u/c0/b;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/b/a/l/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/b/a/l/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    throw p1
.end method
