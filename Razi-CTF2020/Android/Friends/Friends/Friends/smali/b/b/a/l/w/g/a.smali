.class public Lb/b/a/l/w/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/w/g/a$b;,
        Lb/b/a/l/w/g/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/q<",
        "Ljava/nio/ByteBuffer;",
        "Lb/b/a/l/w/g/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lb/b/a/l/w/g/a$a;

.field public static final g:Lb/b/a/l/w/g/a$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/w/g/a$b;

.field public final d:Lb/b/a/l/w/g/a$a;

.field public final e:Lb/b/a/l/w/g/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/w/g/a$a;

    invoke-direct {v0}, Lb/b/a/l/w/g/a$a;-><init>()V

    sput-object v0, Lb/b/a/l/w/g/a;->f:Lb/b/a/l/w/g/a$a;

    new-instance v0, Lb/b/a/l/w/g/a$b;

    invoke-direct {v0}, Lb/b/a/l/w/g/a$b;-><init>()V

    sput-object v0, Lb/b/a/l/w/g/a;->g:Lb/b/a/l/w/g/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lb/b/a/l/u/c0/d;",
            "Lb/b/a/l/u/c0/b;",
            ")V"
        }
    .end annotation

    sget-object v0, Lb/b/a/l/w/g/a;->g:Lb/b/a/l/w/g/a$b;

    sget-object v1, Lb/b/a/l/w/g/a;->f:Lb/b/a/l/w/g/a$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/l/w/g/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/b/a/l/w/g/a;->b:Ljava/util/List;

    iput-object v1, p0, Lb/b/a/l/w/g/a;->d:Lb/b/a/l/w/g/a$a;

    new-instance p1, Lb/b/a/l/w/g/b;

    invoke-direct {p1, p3, p4}, Lb/b/a/l/w/g/b;-><init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;)V

    iput-object p1, p0, Lb/b/a/l/w/g/a;->e:Lb/b/a/l/w/g/b;

    iput-object v0, p0, Lb/b/a/l/w/g/a;->c:Lb/b/a/l/w/g/a$b;

    return-void
.end method

.method public static d(Lb/b/a/k/c;II)I
    .locals 4

    .line 1
    iget v0, p0, Lb/b/a/k/c;->g:I

    .line 2
    div-int/2addr v0, p2

    .line 3
    iget v1, p0, Lb/b/a/k/c;->f:I

    .line 4
    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downsampling GIF, sampleSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target dimens: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget p2, p0, Lb/b/a/k/c;->f:I

    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget p0, p0, Lb/b/a/k/c;->g:I

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 7

    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1
    iget-object p1, p0, Lb/b/a/l/w/g/a;->c:Lb/b/a/l/w/g/a$b;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lb/b/a/l/w/g/a$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/k/d;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/a/k/d;

    invoke-direct {v0}, Lb/b/a/k/d;-><init>()V

    :cond_0
    move-object v6, v0

    const/4 v0, 0x0

    .line 3
    iput-object v0, v6, Lb/b/a/k/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v6, Lb/b/a/k/d;->a:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lb/b/a/k/c;

    invoke-direct {v0}, Lb/b/a/k/c;-><init>()V

    iput-object v0, v6, Lb/b/a/k/d;->c:Lb/b/a/k/c;

    iput v2, v6, Lb/b/a/k/d;->d:I

    .line 4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, Lb/b/a/k/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v6, Lb/b/a/k/d;->b:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 6
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lb/b/a/l/w/g/a;->c(Ljava/nio/ByteBuffer;IILb/b/a/k/d;Lb/b/a/l/o;)Lb/b/a/l/w/g/e;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lb/b/a/l/w/g/a;->c:Lb/b/a/l/w/g/a$b;

    invoke-virtual {p2, v6}, Lb/b/a/l/w/g/a$b;->a(Lb/b/a/k/d;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lb/b/a/l/w/g/a;->c:Lb/b/a/l/w/g/a$b;

    invoke-virtual {p2, v6}, Lb/b/a/l/w/g/a$b;->a(Lb/b/a/k/d;)V

    throw p1

    :catchall_1
    move-exception p2

    .line 7
    monitor-exit p1

    throw p2
.end method

.method public b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1
    sget-object v0, Lb/b/a/l/w/g/i;->b:Lb/b/a/l/n;

    invoke-virtual {p2, v0}, Lb/b/a/l/o;->c(Lb/b/a/l/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lb/b/a/l/w/g/a;->b:Ljava/util/List;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_0
    new-instance v0, Lb/b/a/l/g;

    invoke-direct {v0, p1}, Lb/b/a/l/g;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p2, v0}, La/h/b/f;->I(Ljava/util/List;Lb/b/a/l/l;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    .line 3
    :goto_0
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final c(Ljava/nio/ByteBuffer;IILb/b/a/k/d;Lb/b/a/l/o;)Lb/b/a/l/w/g/e;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Decoded GIF from stream in "

    const-string v3, "BufferGifDecoder"

    .line 1
    sget v0, Lb/b/a/r/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x2

    .line 2
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lb/b/a/k/d;->b()Lb/b/a/k/c;

    move-result-object v0

    .line 3
    iget v7, v0, Lb/b/a/k/c;->c:I

    const/4 v8, 0x0

    if-lez v7, :cond_5

    .line 4
    iget v7, v0, Lb/b/a/k/c;->b:I

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v7, Lb/b/a/l/w/g/i;->a:Lb/b/a/l/n;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lb/b/a/l/o;->c(Lb/b/a/l/n;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lb/b/a/l/b;->c:Lb/b/a/l/b;

    if-ne v7, v9, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static {v0, v13, v14}, Lb/b/a/l/w/g/a;->d(Lb/b/a/k/c;II)I

    move-result v9

    iget-object v10, v1, Lb/b/a/l/w/g/a;->d:Lb/b/a/l/w/g/a$a;

    iget-object v11, v1, Lb/b/a/l/w/g/a;->e:Lb/b/a/l/w/g/b;

    .line 6
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lb/b/a/k/e;

    move-object/from16 v10, p1

    invoke-direct {v12, v11, v0, v10, v9}, Lb/b/a/k/e;-><init>(Lb/b/a/k/a$a;Lb/b/a/k/c;Ljava/nio/ByteBuffer;I)V

    .line 7
    invoke-virtual {v12, v7}, Lb/b/a/k/e;->i(Landroid/graphics/Bitmap$Config;)V

    .line 8
    iget v0, v12, Lb/b/a/k/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v7, v12, Lb/b/a/k/e;->l:Lb/b/a/k/c;

    iget v7, v7, Lb/b/a/k/c;->c:I

    rem-int/2addr v0, v7

    iput v0, v12, Lb/b/a/k/e;->k:I

    .line 9
    invoke-virtual {v12}, Lb/b/a/k/e;->f()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lb/b/a/r/f;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v8

    .line 10
    :cond_3
    :try_start_1
    sget-object v0, Lb/b/a/l/w/b;->b:Lb/b/a/l/s;

    check-cast v0, Lb/b/a/l/w/b;

    .line 11
    new-instance v7, Lb/b/a/l/w/g/c;

    iget-object v10, v1, Lb/b/a/l/w/g/a;->a:Landroid/content/Context;

    move-object v9, v7

    move-object v11, v12

    move-object v12, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lb/b/a/l/w/g/c;-><init>(Landroid/content/Context;Lb/b/a/k/a;Lb/b/a/l/s;IILandroid/graphics/Bitmap;)V

    new-instance v0, Lb/b/a/l/w/g/e;

    invoke-direct {v0, v7}, Lb/b/a/l/w/g/e;-><init>(Lb/b/a/l/w/g/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lb/b/a/r/f;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lb/b/a/r/f;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v8

    :catchall_0
    move-exception v0

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lb/b/a/r/f;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
.end method
