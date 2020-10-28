.class public Lb/b/a/k/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/k/a;


# static fields
.field public static final u:Ljava/lang/String; = "e"


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:Lb/b/a/k/a$a;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[I

.field public k:I

.field public l:Lb/b/a/k/c;

.field public m:Landroid/graphics/Bitmap;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lb/b/a/k/a$a;Lb/b/a/k/c;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lb/b/a/k/e;->b:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lb/b/a/k/e;->t:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    new-instance p1, Lb/b/a/k/c;

    invoke-direct {p1}, Lb/b/a/k/c;-><init>()V

    iput-object p1, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    .line 2
    monitor-enter p0

    if-lez p4, :cond_3

    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    const/4 p4, 0x0

    iput p4, p0, Lb/b/a/k/e;->o:I

    iput-object p2, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    const/4 v0, -0x1

    iput v0, p0, Lb/b/a/k/e;->k:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lb/b/a/k/e;->n:Z

    iget-object p3, p2, Lb/b/a/k/c;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb/b/a/k/b;

    iget p4, p4, Lb/b/a/k/b;->g:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lb/b/a/k/e;->n:Z

    :cond_1
    iput p1, p0, Lb/b/a/k/e;->p:I

    iget p3, p2, Lb/b/a/k/c;->f:I

    div-int p4, p3, p1

    iput p4, p0, Lb/b/a/k/e;->r:I

    iget p2, p2, Lb/b/a/k/c;->g:I

    div-int p1, p2, p1

    iput p1, p0, Lb/b/a/k/e;->q:I

    iget-object p1, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int p3, p3, p2

    check-cast p1, Lb/b/a/l/w/g/b;

    :try_start_1
    invoke-virtual {p1, p3}, Lb/b/a/l/w/g/b;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lb/b/a/k/e;->i:[B

    iget-object p1, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    iget p2, p0, Lb/b/a/k/e;->r:I

    iget p3, p0, Lb/b/a/k/e;->q:I

    mul-int p2, p2, p3

    check-cast p1, Lb/b/a/l/w/g/b;

    .line 3
    iget-object p1, p1, Lb/b/a/l/w/g/b;->b:Lb/b/a/l/u/c0/b;

    if-nez p1, :cond_2

    new-array p1, p2, [I

    goto :goto_0

    :cond_2
    const-class p3, [I

    invoke-interface {p1, p2, p3}, Lb/b/a/l/u/c0/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 4
    :goto_0
    iput-object p1, p0, Lb/b/a/k/e;->j:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sample size must be >=0, not: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/b/a/k/e;->k:I

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v0, v0, Lb/b/a/k/c;->c:I

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lb/b/a/k/e;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/k/e;->j:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget-object v1, p0, Lb/b/a/k/e;->i:[B

    if-eqz v1, :cond_1

    iget-object v2, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    check-cast v2, Lb/b/a/l/w/g/b;

    .line 1
    iget-object v2, v2, Lb/b/a/l/w/g/b;->b:Lb/b/a/l/u/c0/b;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Lb/b/a/l/u/c0/b;->c(Ljava/lang/Object;)V

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Lb/b/a/k/e;->j:[I

    if-eqz v1, :cond_3

    iget-object v2, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    check-cast v2, Lb/b/a/l/w/g/b;

    .line 3
    iget-object v2, v2, Lb/b/a/l/w/g/b;->b:Lb/b/a/l/u/c0/b;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, v1}, Lb/b/a/l/u/c0/b;->c(Ljava/lang/Object;)V

    .line 4
    :cond_3
    :goto_1
    iget-object v1, p0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    check-cast v2, Lb/b/a/l/w/g/b;

    .line 5
    iget-object v2, v2, Lb/b/a/l/w/g/b;->a:Lb/b/a/l/u/c0/d;

    invoke-interface {v2, v1}, Lb/b/a/l/u/c0/d;->e(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_4
    iput-object v0, p0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    iget-object v0, p0, Lb/b/a/k/e;->e:[B

    if-eqz v0, :cond_6

    iget-object v1, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    check-cast v1, Lb/b/a/l/w/g/b;

    .line 7
    iget-object v1, v1, Lb/b/a/l/w/g/b;->b:Lb/b/a/l/u/c0/b;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1, v0}, Lb/b/a/l/u/c0/b;->c(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v1, v0, Lb/b/a/k/c;->c:I

    if-lez v1, :cond_2

    iget v2, p0, Lb/b/a/k/e;->k:I

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    if-ge v2, v1, :cond_1

    .line 1
    iget-object v0, v0, Lb/b/a/k/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/k/b;

    iget v0, v0, Lb/b/a/k/b;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public declared-synchronized f()Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v0, v0, Lb/b/a/k/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lb/b/a/k/e;->k:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lb/b/a/k/e;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v4, v4, Lb/b/a/k/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lb/b/a/k/e;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v2, p0, Lb/b/a/k/e;->o:I

    :cond_2
    iget v0, p0, Lb/b/a/k/e;->o:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/k/e;->o:I

    iget-object v5, p0, Lb/b/a/k/e;->e:[B

    if-nez v5, :cond_4

    iget-object v5, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xff

    check-cast v5, Lb/b/a/l/w/g/b;

    :try_start_1
    invoke-virtual {v5, v6}, Lb/b/a/l/w/g/b;->a(I)[B

    move-result-object v5

    iput-object v5, p0, Lb/b/a/k/e;->e:[B

    :cond_4
    iget-object v5, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget-object v5, v5, Lb/b/a/k/c;->e:Ljava/util/List;

    iget v6, p0, Lb/b/a/k/e;->k:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/a/k/b;

    iget v6, p0, Lb/b/a/k/e;->k:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_5

    iget-object v7, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget-object v7, v7, Lb/b/a/k/c;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/a/k/b;

    goto :goto_0

    :cond_5
    move-object v6, v3

    :goto_0
    iget-object v7, v5, Lb/b/a/k/b;->k:[I

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget-object v7, v7, Lb/b/a/k/c;->a:[I

    :goto_1
    iput-object v7, p0, Lb/b/a/k/e;->a:[I

    if-nez v7, :cond_8

    sget-object v0, Lb/b/a/k/e;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid color table found for frame #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lb/b/a/k/e;->k:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput v2, p0, Lb/b/a/k/e;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_8
    :try_start_2
    iget-boolean v1, v5, Lb/b/a/k/b;->f:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lb/b/a/k/e;->b:[I

    array-length v2, v7

    invoke-static {v7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lb/b/a/k/e;->b:[I

    iput-object v1, p0, Lb/b/a/k/e;->a:[I

    iget v2, v5, Lb/b/a/k/b;->h:I

    aput v0, v1, v2

    iget v0, v5, Lb/b/a/k/b;->g:I

    if-ne v0, v4, :cond_9

    iget v0, p0, Lb/b/a/k/e;->k:I

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    :cond_9
    invoke-virtual {p0, v5, v6}, Lb/b/a/k/e;->j(Lb/b/a/k/b;Lb/b/a/k/b;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_a
    :goto_2
    :try_start_3
    sget-object v0, Lb/b/a/k/e;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/b/a/k/e;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lb/b/a/k/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v1, v1, Lb/b/a/k/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lb/b/a/k/e;->k:I

    return-void
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/k/e;->t:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget-object v1, p0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    iget v2, p0, Lb/b/a/k/e;->r:I

    iget v3, p0, Lb/b/a/k/e;->q:I

    check-cast v1, Lb/b/a/l/w/g/b;

    .line 1
    iget-object v1, v1, Lb/b/a/l/w/g/b;->a:Lb/b/a/l/u/c0/d;

    invoke-interface {v1, v2, v3, v0}, Lb/b/a/l/u/c0/d;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method public i(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lb/b/a/k/e;->t:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final j(Lb/b/a/k/b;Lb/b/a/k/b;)Landroid/graphics/Bitmap;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v10, v0, Lb/b/a/k/e;->j:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1

    iget-object v3, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v4, v0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    check-cast v4, Lb/b/a/l/w/g/b;

    .line 1
    iget-object v4, v4, Lb/b/a/l/w/g/b;->a:Lb/b/a/l/u/c0/d;

    invoke-interface {v4, v3}, Lb/b/a/l/u/c0/d;->e(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v3, 0x0

    .line 2
    iput-object v3, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v12, 0x3

    if-eqz v2, :cond_2

    iget v3, v2, Lb/b/a/k/b;->g:I

    if-ne v3, v12, :cond_2

    iget-object v3, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v13, 0x2

    if-eqz v2, :cond_7

    iget v3, v2, Lb/b/a/k/b;->g:I

    if-lez v3, :cond_7

    if-ne v3, v13, :cond_6

    iget-boolean v3, v1, Lb/b/a/k/b;->f:Z

    if-nez v3, :cond_3

    iget-object v3, v0, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v4, v3, Lb/b/a/k/c;->k:I

    iget-object v5, v1, Lb/b/a/k/b;->k:[I

    if-eqz v5, :cond_4

    iget v3, v3, Lb/b/a/k/c;->j:I

    iget v5, v1, Lb/b/a/k/b;->h:I

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 v4, 0x0

    :cond_4
    iget v3, v2, Lb/b/a/k/b;->d:I

    iget v5, v0, Lb/b/a/k/e;->p:I

    div-int/2addr v3, v5

    iget v6, v2, Lb/b/a/k/b;->b:I

    div-int/2addr v6, v5

    iget v7, v2, Lb/b/a/k/b;->c:I

    div-int/2addr v7, v5

    iget v2, v2, Lb/b/a/k/b;->a:I

    div-int/2addr v2, v5

    iget v5, v0, Lb/b/a/k/e;->r:I

    mul-int v6, v6, v5

    add-int/2addr v6, v2

    mul-int v3, v3, v5

    add-int/2addr v3, v6

    :goto_0
    if-ge v6, v3, :cond_7

    add-int v2, v6, v7

    move v5, v6

    :goto_1
    if-ge v5, v2, :cond_5

    aput v4, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget v2, v0, Lb/b/a/k/e;->r:I

    add-int/2addr v6, v2

    goto :goto_0

    :cond_6
    if-ne v3, v12, :cond_7

    iget-object v2, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    iget v8, v0, Lb/b/a/k/e;->r:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lb/b/a/k/e;->q:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 3
    :cond_7
    iget-object v2, v0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    iget v3, v1, Lb/b/a/k/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v1, Lb/b/a/k/b;->c:I

    iget v3, v1, Lb/b/a/k/b;->d:I

    mul-int v2, v2, v3

    iget-object v3, v0, Lb/b/a/k/e;->i:[B

    if-eqz v3, :cond_8

    array-length v3, v3

    if-ge v3, v2, :cond_9

    :cond_8
    iget-object v3, v0, Lb/b/a/k/e;->c:Lb/b/a/k/a$a;

    check-cast v3, Lb/b/a/l/w/g/b;

    invoke-virtual {v3, v2}, Lb/b/a/l/w/g/b;->a(I)[B

    move-result-object v3

    iput-object v3, v0, Lb/b/a/k/e;->i:[B

    :cond_9
    iget-object v3, v0, Lb/b/a/k/e;->i:[B

    iget-object v4, v0, Lb/b/a/k/e;->f:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_a

    new-array v4, v5, [S

    iput-object v4, v0, Lb/b/a/k/e;->f:[S

    :cond_a
    iget-object v4, v0, Lb/b/a/k/e;->f:[S

    iget-object v6, v0, Lb/b/a/k/e;->g:[B

    if-nez v6, :cond_b

    new-array v6, v5, [B

    iput-object v6, v0, Lb/b/a/k/e;->g:[B

    :cond_b
    iget-object v6, v0, Lb/b/a/k/e;->g:[B

    iget-object v7, v0, Lb/b/a/k/e;->h:[B

    if-nez v7, :cond_c

    const/16 v7, 0x1001

    new-array v7, v7, [B

    iput-object v7, v0, Lb/b/a/k/e;->h:[B

    :cond_c
    iget-object v7, v0, Lb/b/a/k/e;->h:[B

    .line 4
    iget-object v8, v0, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    shl-int v14, v9, v8

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v14, 0x2

    add-int/2addr v8, v9

    shl-int v17, v9, v8

    const/4 v13, -0x1

    add-int/lit8 v17, v17, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v14, :cond_d

    .line 5
    aput-short v11, v4, v5

    int-to-byte v13, v5

    aput-byte v13, v6, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v13, -0x1

    goto :goto_2

    :cond_d
    iget-object v5, v0, Lb/b/a/k/e;->e:[B

    move-object v12, v0

    move/from16 v25, v8

    move/from16 v24, v16

    move/from16 v28, v17

    const/4 v9, 0x0

    const/4 v13, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_3
    const/16 v30, 0x8

    if-ge v9, v2, :cond_19

    if-nez v20, :cond_10

    .line 6
    iget-object v11, v12, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    if-gtz v11, :cond_e

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v34, v10

    move/from16 v33, v13

    goto :goto_4

    :cond_e
    move/from16 v31, v8

    .line 7
    iget-object v8, v12, Lb/b/a/k/e;->d:Ljava/nio/ByteBuffer;

    move/from16 v32, v9

    iget-object v9, v12, Lb/b/a/k/e;->e:[B

    move/from16 v33, v13

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v34, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_4
    if-gtz v11, :cond_f

    const/4 v8, 0x3

    .line 8
    iput v8, v12, Lb/b/a/k/e;->o:I

    goto/16 :goto_c

    :cond_f
    move/from16 v20, v11

    const/16 v21, 0x0

    goto :goto_5

    :cond_10
    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v34, v10

    move/from16 v33, v13

    :goto_5
    aget-byte v8, v5, v21

    and-int/lit16 v8, v8, 0xff

    shl-int v8, v8, v22

    add-int v23, v23, v8

    add-int/lit8 v22, v22, 0x8

    const/4 v8, 0x1

    add-int/lit8 v21, v21, 0x1

    const/4 v8, -0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v10, v22

    move/from16 v11, v24

    move/from16 v8, v25

    move/from16 v9, v32

    move/from16 v13, v33

    move-object/from16 v22, v5

    move/from16 v5, v26

    :goto_6
    if-lt v10, v8, :cond_18

    move-object/from16 v24, v12

    and-int v12, v23, v28

    shr-int v23, v23, v8

    sub-int/2addr v10, v8

    if-ne v12, v14, :cond_11

    move/from16 v25, v10

    move/from16 v11, v16

    move/from16 v28, v17

    move-object/from16 v12, v24

    move/from16 v8, v31

    const/4 v13, -0x1

    move/from16 v24, v5

    const/16 v5, 0x1000

    goto/16 :goto_a

    :cond_11
    if-ne v12, v15, :cond_12

    move-object/from16 v12, v24

    move/from16 v24, v5

    const/16 v5, 0x1000

    goto/16 :goto_b

    :cond_12
    move/from16 v25, v10

    const/4 v10, -0x1

    if-ne v13, v10, :cond_13

    aget-byte v5, v6, v12

    aput-byte v5, v3, v27

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v24, v12

    const/16 v5, 0x1000

    goto :goto_9

    :cond_13
    if-lt v12, v11, :cond_14

    int-to-byte v5, v5

    aput-byte v5, v7, v29

    add-int/lit8 v29, v29, 0x1

    move v5, v13

    goto :goto_7

    :cond_14
    move v5, v12

    :goto_7
    if-lt v5, v14, :cond_15

    aget-byte v10, v6, v5

    aput-byte v10, v7, v29

    add-int/lit8 v29, v29, 0x1

    aget-short v5, v4, v5

    goto :goto_7

    :cond_15
    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v10, v5

    aput-byte v10, v3, v27

    :goto_8
    const/16 v19, 0x1

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v9, v9, 0x1

    if-lez v29, :cond_16

    add-int/lit8 v29, v29, -0x1

    aget-byte v24, v7, v29

    aput-byte v24, v3, v27

    goto :goto_8

    :cond_16
    move/from16 v24, v5

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_17

    int-to-short v13, v13

    aput-short v13, v4, v11

    aput-byte v10, v6, v11

    add-int/lit8 v11, v11, 0x1

    and-int v10, v11, v28

    if-nez v10, :cond_17

    if-ge v11, v5, :cond_17

    add-int/lit8 v8, v8, 0x1

    add-int v28, v28, v11

    :cond_17
    :goto_9
    move v13, v12

    move-object v12, v0

    :goto_a
    move/from16 v5, v24

    move/from16 v10, v25

    goto/16 :goto_6

    :cond_18
    move/from16 v24, v5

    const/16 v5, 0x1000

    move-object v12, v0

    :goto_b
    move/from16 v25, v8

    move-object/from16 v5, v22

    move/from16 v26, v24

    move/from16 v8, v31

    move/from16 v22, v10

    move/from16 v24, v11

    move-object/from16 v10, v34

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_19
    move-object/from16 v34, v10

    :goto_c
    move/from16 v11, v27

    const/4 v10, 0x0

    invoke-static {v3, v11, v2, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 9
    iget-boolean v2, v1, Lb/b/a/k/b;->e:Z

    if-nez v2, :cond_24

    iget v2, v0, Lb/b/a/k/e;->p:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    goto/16 :goto_12

    .line 10
    :cond_1a
    iget-object v2, v0, Lb/b/a/k/e;->j:[I

    iget v3, v1, Lb/b/a/k/b;->d:I

    iget v4, v1, Lb/b/a/k/b;->b:I

    iget v5, v1, Lb/b/a/k/b;->c:I

    iget v6, v1, Lb/b/a/k/b;->a:I

    iget v7, v0, Lb/b/a/k/e;->k:I

    if-nez v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    :goto_d
    iget v8, v0, Lb/b/a/k/e;->r:I

    iget-object v9, v0, Lb/b/a/k/e;->i:[B

    iget-object v11, v0, Lb/b/a/k/e;->a:[I

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v3, :cond_20

    add-int v14, v13, v4

    mul-int v14, v14, v8

    add-int v15, v14, v6

    add-int v10, v15, v5

    add-int/2addr v14, v8

    if-ge v14, v10, :cond_1c

    move v10, v14

    :cond_1c
    iget v14, v1, Lb/b/a/k/b;->c:I

    mul-int v14, v14, v13

    :goto_f
    move/from16 v16, v3

    if-ge v15, v10, :cond_1f

    aget-byte v3, v9, v14

    move/from16 v17, v4

    and-int/lit16 v4, v3, 0xff

    if-eq v4, v12, :cond_1e

    aget v4, v11, v4

    if-eqz v4, :cond_1d

    aput v4, v2, v15

    goto :goto_10

    :cond_1d
    move v12, v3

    :cond_1e
    :goto_10
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_f

    :cond_1f
    move/from16 v17, v4

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_e

    :cond_20
    iget-object v2, v0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    iget-object v2, v0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_23

    if-eqz v7, :cond_23

    const/4 v2, -0x1

    if-eq v12, v2, :cond_23

    :cond_22
    const/4 v11, 0x1

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    :goto_11
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    goto/16 :goto_21

    .line 11
    :cond_24
    :goto_12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lb/b/a/k/e;->j:[I

    iget v4, v1, Lb/b/a/k/b;->d:I

    iget v5, v0, Lb/b/a/k/e;->p:I

    div-int/2addr v4, v5

    iget v6, v1, Lb/b/a/k/b;->b:I

    div-int/2addr v6, v5

    iget v7, v1, Lb/b/a/k/b;->c:I

    div-int/2addr v7, v5

    iget v8, v1, Lb/b/a/k/b;->a:I

    div-int/2addr v8, v5

    iget v9, v0, Lb/b/a/k/e;->k:I

    if-nez v9, :cond_25

    const/4 v10, 0x1

    goto :goto_13

    :cond_25
    const/4 v10, 0x0

    :goto_13
    iget v9, v0, Lb/b/a/k/e;->r:I

    iget v11, v0, Lb/b/a/k/e;->q:I

    iget-object v12, v0, Lb/b/a/k/e;->i:[B

    iget-object v13, v0, Lb/b/a/k/e;->a:[I

    iget-object v14, v0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    move-object/from16 p2, v2

    move-object v15, v14

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x8

    :goto_14
    move-object/from16 v18, v15

    if-ge v14, v4, :cond_3b

    iget-boolean v15, v1, Lb/b/a/k/b;->e:Z

    if-eqz v15, :cond_2a

    if-lt v2, v4, :cond_29

    add-int/lit8 v15, v16, 0x1

    move/from16 v21, v2

    const/4 v2, 0x2

    if-eq v15, v2, :cond_28

    const/4 v2, 0x3

    if-eq v15, v2, :cond_27

    const/4 v2, 0x4

    move/from16 v16, v15

    if-eq v15, v2, :cond_26

    goto :goto_15

    :cond_26
    const/16 v17, 0x2

    const/16 v21, 0x1

    goto :goto_15

    :cond_27
    const/4 v2, 0x4

    move/from16 v16, v15

    const/16 v17, 0x4

    const/16 v21, 0x2

    goto :goto_15

    :cond_28
    const/4 v2, 0x4

    move/from16 v16, v15

    const/16 v21, 0x4

    goto :goto_15

    :cond_29
    move/from16 v21, v2

    :goto_15
    add-int v2, v21, v17

    goto :goto_16

    :cond_2a
    move/from16 v21, v2

    move/from16 v21, v14

    :goto_16
    add-int v15, v21, v6

    move/from16 v20, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_17

    :cond_2b
    const/4 v2, 0x0

    :goto_17
    if-ge v15, v11, :cond_39

    mul-int v15, v15, v9

    add-int v21, v15, v8

    move/from16 v22, v4

    add-int v4, v21, v7

    add-int/2addr v15, v9

    if-ge v15, v4, :cond_2c

    move v4, v15

    :cond_2c
    mul-int v15, v14, v5

    move/from16 v23, v6

    iget v6, v1, Lb/b/a/k/b;->c:I

    mul-int v15, v15, v6

    if-eqz v2, :cond_30

    move v2, v15

    move-object/from16 v15, v18

    move/from16 v6, v21

    :goto_18
    move/from16 v24, v7

    if-ge v6, v4, :cond_2f

    aget-byte v7, v12, v2

    and-int/lit16 v7, v7, 0xff

    aget v7, v13, v7

    if-eqz v7, :cond_2d

    aput v7, v3, v6

    goto :goto_19

    :cond_2d
    if-eqz v10, :cond_2e

    if-nez v15, :cond_2e

    move-object/from16 v15, p2

    :cond_2e
    :goto_19
    add-int/2addr v2, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v24

    goto :goto_18

    :cond_2f
    move/from16 v31, v8

    move/from16 v32, v9

    goto/16 :goto_1f

    :cond_30
    move/from16 v24, v7

    sub-int v2, v4, v21

    mul-int v2, v2, v5

    add-int/2addr v2, v15

    move/from16 v6, v21

    :goto_1a
    if-ge v6, v4, :cond_3a

    iget v7, v1, Lb/b/a/k/b;->c:I

    move/from16 v29, v4

    move/from16 v31, v8

    move v4, v15

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 12
    :goto_1b
    iget v8, v0, Lb/b/a/k/e;->p:I

    add-int/2addr v8, v15

    if-ge v4, v8, :cond_32

    iget-object v8, v0, Lb/b/a/k/e;->i:[B

    move/from16 v32, v9

    array-length v9, v8

    if-ge v4, v9, :cond_33

    if-ge v4, v2, :cond_33

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    iget-object v9, v0, Lb/b/a/k/e;->a:[I

    aget v8, v9, v8

    if-eqz v8, :cond_31

    shr-int/lit8 v9, v8, 0x18

    and-int/lit16 v9, v9, 0xff

    add-int v21, v21, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v8, v8, 0xff

    add-int v27, v27, v8

    add-int/lit8 v28, v28, 0x1

    :cond_31
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v32

    goto :goto_1b

    :cond_32
    move/from16 v32, v9

    :cond_33
    add-int/2addr v7, v15

    move v4, v7

    :goto_1c
    iget v8, v0, Lb/b/a/k/e;->p:I

    add-int/2addr v8, v7

    if-ge v4, v8, :cond_35

    iget-object v8, v0, Lb/b/a/k/e;->i:[B

    array-length v9, v8

    if-ge v4, v9, :cond_35

    if-ge v4, v2, :cond_35

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    iget-object v9, v0, Lb/b/a/k/e;->a:[I

    aget v8, v9, v8

    if-eqz v8, :cond_34

    shr-int/lit8 v9, v8, 0x18

    and-int/lit16 v9, v9, 0xff

    add-int v21, v21, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v8, v8, 0xff

    add-int v27, v27, v8

    add-int/lit8 v28, v28, 0x1

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_35
    if-nez v28, :cond_36

    const/4 v4, 0x0

    goto :goto_1d

    :cond_36
    div-int v21, v21, v28

    shl-int/lit8 v4, v21, 0x18

    div-int v25, v25, v28

    shl-int/lit8 v7, v25, 0x10

    or-int/2addr v4, v7

    div-int v26, v26, v28

    shl-int/lit8 v7, v26, 0x8

    or-int/2addr v4, v7

    div-int v27, v27, v28

    or-int v4, v4, v27

    :goto_1d
    if-eqz v4, :cond_37

    .line 13
    aput v4, v3, v6

    goto :goto_1e

    :cond_37
    if-eqz v10, :cond_38

    if-nez v18, :cond_38

    move-object/from16 v18, p2

    :cond_38
    :goto_1e
    add-int/2addr v15, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v29

    move/from16 v8, v31

    move/from16 v9, v32

    goto/16 :goto_1a

    :cond_39
    move/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v7

    :cond_3a
    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v15, v18

    :goto_1f
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v20

    move/from16 v4, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v31

    move/from16 v9, v32

    goto/16 :goto_14

    :cond_3b
    iget-object v2, v0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_3d

    if-nez v18, :cond_3c

    const/4 v11, 0x0

    goto :goto_20

    :cond_3c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_20
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lb/b/a/k/e;->s:Ljava/lang/Boolean;

    .line 14
    :cond_3d
    :goto_21
    iget-boolean v2, v0, Lb/b/a/k/e;->n:Z

    if-eqz v2, :cond_40

    iget v1, v1, Lb/b/a/k/b;->g:I

    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    :cond_3e
    iget-object v1, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lb/b/a/k/e;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    :cond_3f
    iget-object v1, v0, Lb/b/a/k/e;->m:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lb/b/a/k/e;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lb/b/a/k/e;->q:I

    move-object/from16 v2, v34

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lb/b/a/k/e;->h()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    iget v7, v0, Lb/b/a/k/e;->r:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lb/b/a/k/e;->q:I

    move-object v1, v9

    move-object/from16 v2, v34

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method
