.class public Lb/b/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/b$a;
    }
.end annotation


# static fields
.field public static volatile j:Lb/b/a/b;

.field public static volatile k:Z


# instance fields
.field public final b:Lb/b/a/l/u/c0/d;

.field public final c:Lb/b/a/l/u/d0/i;

.field public final d:Lb/b/a/d;

.field public final e:Lb/b/a/f;

.field public final f:Lb/b/a/l/u/c0/b;

.field public final g:Lb/b/a/m/l;

.field public final h:Lb/b/a/m/d;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/b/a/l/u/l;Lb/b/a/l/u/d0/i;Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;Lb/b/a/m/l;Lb/b/a/m/d;ILb/b/a/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/b/a/l/u/l;",
            "Lb/b/a/l/u/d0/i;",
            "Lb/b/a/l/u/c0/d;",
            "Lb/b/a/l/u/c0/b;",
            "Lb/b/a/m/l;",
            "Lb/b/a/m/d;",
            "I",
            "Lb/b/a/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lb/b/a/p/d<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    const-class v3, Lb/b/a/k/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lb/b/a/b;->i:Ljava/util/List;

    iput-object v2, v1, Lb/b/a/b;->b:Lb/b/a/l/u/c0/d;

    iput-object v4, v1, Lb/b/a/b;->f:Lb/b/a/l/u/c0/b;

    move-object/from16 v8, p3

    iput-object v8, v1, Lb/b/a/b;->c:Lb/b/a/l/u/d0/i;

    move-object/from16 v8, p6

    iput-object v8, v1, Lb/b/a/b;->g:Lb/b/a/m/l;

    move-object/from16 v8, p7

    iput-object v8, v1, Lb/b/a/b;->h:Lb/b/a/m/d;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Lb/b/a/f;

    invoke-direct {v9}, Lb/b/a/f;-><init>()V

    iput-object v9, v1, Lb/b/a/b;->e:Lb/b/a/f;

    new-instance v10, Lb/b/a/l/w/c/k;

    invoke-direct {v10}, Lb/b/a/l/w/c/k;-><init>()V

    .line 1
    iget-object v11, v9, Lb/b/a/f;->g:Lb/b/a/o/b;

    .line 2
    monitor-enter v11

    :try_start_0
    iget-object v12, v11, Lb/b/a/o/b;->a:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v11

    .line 3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1b

    if-lt v10, v11, :cond_0

    new-instance v11, Lb/b/a/l/w/c/p;

    invoke-direct {v11}, Lb/b/a/l/w/c/p;-><init>()V

    .line 4
    iget-object v12, v9, Lb/b/a/f;->g:Lb/b/a/o/b;

    .line 5
    monitor-enter v12

    :try_start_1
    iget-object v13, v12, Lb/b/a/o/b;->a:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lb/b/a/f;->e()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lb/b/a/l/w/g/a;

    invoke-direct {v12, v0, v11, v2, v4}, Lb/b/a/l/w/g/a;-><init>(Landroid/content/Context;Ljava/util/List;Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;)V

    .line 7
    new-instance v13, Lb/b/a/l/w/c/b0;

    new-instance v14, Lb/b/a/l/w/c/b0$g;

    invoke-direct {v14}, Lb/b/a/l/w/c/b0$g;-><init>()V

    invoke-direct {v13, v2, v14}, Lb/b/a/l/w/c/b0;-><init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/w/c/b0$f;)V

    .line 8
    new-instance v14, Lb/b/a/l/w/c/m;

    invoke-virtual {v9}, Lb/b/a/f;->e()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v14, v15, v1, v2, v4}, Lb/b/a/l/w/c/m;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;)V

    if-eqz p13, :cond_1

    const/16 v1, 0x1c

    if-lt v10, v1, :cond_1

    new-instance v1, Lb/b/a/l/w/c/t;

    invoke-direct {v1}, Lb/b/a/l/w/c/t;-><init>()V

    new-instance v15, Lb/b/a/l/w/c/h;

    invoke-direct {v15}, Lb/b/a/l/w/c/h;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v15, Lb/b/a/l/w/c/g;

    invoke-direct {v15, v14}, Lb/b/a/l/w/c/g;-><init>(Lb/b/a/l/w/c/m;)V

    new-instance v1, Lb/b/a/l/w/c/y;

    invoke-direct {v1, v14, v4}, Lb/b/a/l/w/c/y;-><init>(Lb/b/a/l/w/c/m;Lb/b/a/l/u/c0/b;)V

    :goto_1
    move-object/from16 v16, v7

    new-instance v7, Lb/b/a/l/w/e/d;

    invoke-direct {v7, v0}, Lb/b/a/l/w/e/d;-><init>(Landroid/content/Context;)V

    move/from16 p3, v10

    new-instance v10, Lb/b/a/l/v/s$c;

    invoke-direct {v10, v8}, Lb/b/a/l/v/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v0, Lb/b/a/l/v/s$d;

    invoke-direct {v0, v8}, Lb/b/a/l/v/s$d;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    new-instance v5, Lb/b/a/l/v/s$b;

    invoke-direct {v5, v8}, Lb/b/a/l/v/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v0

    new-instance v0, Lb/b/a/l/v/s$a;

    invoke-direct {v0, v8}, Lb/b/a/l/v/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p7, v0

    new-instance v0, Lb/b/a/l/w/c/c;

    invoke-direct {v0, v4}, Lb/b/a/l/w/c/c;-><init>(Lb/b/a/l/u/c0/b;)V

    move-object/from16 v18, v6

    new-instance v6, Lb/b/a/l/w/h/a;

    invoke-direct {v6}, Lb/b/a/l/w/h/a;-><init>()V

    move-object/from16 p13, v6

    new-instance v6, Lb/b/a/l/w/h/d;

    invoke-direct {v6}, Lb/b/a/l/w/h/d;-><init>()V

    move-object/from16 v19, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v20, v6

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v21, v5

    new-instance v5, Lb/b/a/l/v/c;

    invoke-direct {v5}, Lb/b/a/l/v/c;-><init>()V

    invoke-virtual {v9, v6, v5}, Lb/b/a/f;->a(Ljava/lang/Class;Lb/b/a/l/d;)Lb/b/a/f;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lb/b/a/l/v/t;

    invoke-direct {v6, v4}, Lb/b/a/l/v/t;-><init>(Lb/b/a/l/u/c0/b;)V

    invoke-virtual {v9, v5, v6}, Lb/b/a/f;->a(Ljava/lang/Class;Lb/b/a/l/d;)Lb/b/a/f;

    const-string v5, "Bitmap"

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v22, v10

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5, v6, v10, v15}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-string v5, "Bitmap"

    const-class v6, Ljava/io/InputStream;

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5, v6, v10, v1}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    invoke-static {}, Lb/b/a/l/t/m;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/Bitmap;

    move-object/from16 v23, v7

    new-instance v7, Lb/b/a/l/w/c/v;

    invoke-direct {v7, v14}, Lb/b/a/l/w/c/v;-><init>(Lb/b/a/l/w/c/m;)V

    invoke-virtual {v9, v5, v6, v10, v7}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    goto :goto_2

    :cond_2
    move-object/from16 v23, v7

    :goto_2
    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5, v6, v7, v13}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-string v5, "Bitmap"

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    .line 9
    new-instance v10, Lb/b/a/l/w/c/b0;

    new-instance v14, Lb/b/a/l/w/c/b0$c;

    move-object/from16 v24, v3

    const/4 v3, 0x0

    invoke-direct {v14, v3}, Lb/b/a/l/w/c/b0$c;-><init>(Lb/b/a/l/w/c/b0$a;)V

    invoke-direct {v10, v2, v14}, Lb/b/a/l/w/c/b0;-><init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/w/c/b0$f;)V

    .line 10
    invoke-virtual {v9, v5, v6, v7, v10}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-class v3, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/Bitmap;

    sget-object v6, Lb/b/a/l/v/v$a;->a:Lb/b/a/l/v/v$a;

    invoke-virtual {v9, v3, v5, v6}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-string v3, "Bitmap"

    const-class v5, Landroid/graphics/Bitmap;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v10, Lb/b/a/l/w/c/a0;

    invoke-direct {v10}, Lb/b/a/l/w/c/a0;-><init>()V

    invoke-virtual {v9, v3, v5, v7, v10}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v3, v0}, Lb/b/a/f;->b(Ljava/lang/Class;Lb/b/a/l/r;)Lb/b/a/f;

    const-string v3, "BitmapDrawable"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lb/b/a/l/w/c/a;

    invoke-direct {v10, v8, v15}, Lb/b/a/l/w/c/a;-><init>(Landroid/content/res/Resources;Lb/b/a/l/q;)V

    invoke-virtual {v9, v3, v5, v7, v10}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-string v3, "BitmapDrawable"

    const-class v5, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lb/b/a/l/w/c/a;

    invoke-direct {v10, v8, v1}, Lb/b/a/l/w/c/a;-><init>(Landroid/content/res/Resources;Lb/b/a/l/q;)V

    invoke-virtual {v9, v3, v5, v7, v10}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-string v1, "BitmapDrawable"

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lb/b/a/l/w/c/a;

    invoke-direct {v7, v8, v13}, Lb/b/a/l/w/c/a;-><init>(Landroid/content/res/Resources;Lb/b/a/l/q;)V

    invoke-virtual {v9, v1, v3, v5, v7}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Lb/b/a/l/w/c/b;

    invoke-direct {v3, v2, v0}, Lb/b/a/l/w/c/b;-><init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/r;)V

    invoke-virtual {v9, v1, v3}, Lb/b/a/f;->b(Ljava/lang/Class;Lb/b/a/l/r;)Lb/b/a/f;

    const-string v0, "Gif"

    const-class v1, Ljava/io/InputStream;

    const-class v3, Lb/b/a/l/w/g/c;

    new-instance v5, Lb/b/a/l/w/g/j;

    invoke-direct {v5, v11, v12, v4}, Lb/b/a/l/w/g/j;-><init>(Ljava/util/List;Lb/b/a/l/q;Lb/b/a/l/u/c0/b;)V

    invoke-virtual {v9, v0, v1, v3, v5}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-string v0, "Gif"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v3, Lb/b/a/l/w/g/c;

    invoke-virtual {v9, v0, v1, v3, v12}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-class v0, Lb/b/a/l/w/g/c;

    new-instance v1, Lb/b/a/l/w/g/d;

    invoke-direct {v1}, Lb/b/a/l/w/g/d;-><init>()V

    invoke-virtual {v9, v0, v1}, Lb/b/a/f;->b(Ljava/lang/Class;Lb/b/a/l/r;)Lb/b/a/f;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v0, v6}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-string v1, "Bitmap"

    const-class v3, Landroid/graphics/Bitmap;

    new-instance v5, Lb/b/a/l/w/g/h;

    invoke-direct {v5, v2}, Lb/b/a/l/w/g/h;-><init>(Lb/b/a/l/u/c0/d;)V

    invoke-virtual {v9, v1, v0, v3, v5}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v3, "legacy_append"

    move-object/from16 v5, v23

    .line 11
    invoke-virtual {v9, v3, v0, v1, v5}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    .line 12
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v3, Lb/b/a/l/w/c/x;

    invoke-direct {v3, v5, v2}, Lb/b/a/l/w/c/x;-><init>(Lb/b/a/l/w/e/d;Lb/b/a/l/u/c0/d;)V

    const-string v5, "legacy_append"

    .line 13
    invoke-virtual {v9, v5, v0, v1, v3}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    .line 14
    new-instance v0, Lb/b/a/l/w/d/a$a;

    invoke-direct {v0}, Lb/b/a/l/w/d/a$a;-><init>()V

    invoke-virtual {v9, v0}, Lb/b/a/f;->g(Lb/b/a/l/t/e$a;)Lb/b/a/f;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v3, Lb/b/a/l/v/d$b;

    invoke-direct {v3}, Lb/b/a/l/v/d$b;-><init>()V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lb/b/a/l/v/f$e;

    invoke-direct {v3}, Lb/b/a/l/v/f$e;-><init>()V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    new-instance v3, Lb/b/a/l/w/f/a;

    invoke-direct {v3}, Lb/b/a/l/w/f/a;-><init>()V

    const-string v5, "legacy_append"

    .line 15
    invoke-virtual {v9, v5, v0, v1, v3}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    .line 16
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lb/b/a/l/v/f$b;

    invoke-direct {v3}, Lb/b/a/l/v/f$b;-><init>()V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    invoke-virtual {v9, v0, v1, v6}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    new-instance v0, Lb/b/a/l/t/k$a;

    invoke-direct {v0, v4}, Lb/b/a/l/t/k$a;-><init>(Lb/b/a/l/u/c0/b;)V

    invoke-virtual {v9, v0}, Lb/b/a/f;->g(Lb/b/a/l/t/e$a;)Lb/b/a/f;

    invoke-static {}, Lb/b/a/l/t/m;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lb/b/a/l/t/m$a;

    invoke-direct {v0}, Lb/b/a/l/t/m$a;-><init>()V

    invoke-virtual {v9, v0}, Lb/b/a/f;->g(Lb/b/a/l/t/e$a;)Lb/b/a/f;

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v3, v22

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v5, v21

    invoke-virtual {v9, v0, v1, v5}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v7, v18

    invoke-virtual {v9, v7, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9, v7, v1, v5}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Landroid/net/Uri;

    move-object/from16 v3, p6

    invoke-virtual {v9, v7, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v5, p7

    invoke-virtual {v9, v0, v1, v5}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v9, v7, v1, v5}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v1, Landroid/net/Uri;

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lb/b/a/l/v/e$c;

    invoke-direct {v1}, Lb/b/a/l/v/e$c;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v9, v3, v0, v1}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Lb/b/a/l/v/e$c;

    invoke-direct {v5}, Lb/b/a/l/v/e$c;-><init>()V

    invoke-virtual {v9, v0, v1, v5}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lb/b/a/l/v/u$c;

    invoke-direct {v1}, Lb/b/a/l/v/u$c;-><init>()V

    invoke-virtual {v9, v3, v0, v1}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Lb/b/a/l/v/u$b;

    invoke-direct {v1}, Lb/b/a/l/v/u$b;-><init>()V

    invoke-virtual {v9, v3, v0, v1}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Lb/b/a/l/v/u$a;

    invoke-direct {v1}, Lb/b/a/l/v/u$a;-><init>()V

    invoke-virtual {v9, v3, v0, v1}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lb/b/a/l/v/y/b$a;

    invoke-direct {v3}, Lb/b/a/l/v/y/b$a;-><init>()V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lb/b/a/l/v/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lb/b/a/l/v/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lb/b/a/l/v/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lb/b/a/l/v/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lb/b/a/l/v/y/c$a;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lb/b/a/l/v/y/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lb/b/a/l/v/y/d$a;

    invoke-direct {v3, v5}, Lb/b/a/l/v/y/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v1, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const/16 v0, 0x1d

    move/from16 v1, p3

    if-lt v1, v0, :cond_4

    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v7, Lb/b/a/l/v/y/e$c;

    invoke-direct {v7, v5}, Lb/b/a/l/v/y/e$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lb/b/a/l/v/y/e$b;

    invoke-direct {v7, v5}, Lb/b/a/l/v/y/e$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    :cond_4
    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v7, Lb/b/a/l/v/w$d;

    move-object/from16 v10, v20

    invoke-direct {v7, v10}, Lb/b/a/l/v/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lb/b/a/l/v/w$b;

    invoke-direct {v7, v10}, Lb/b/a/l/v/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lb/b/a/l/v/w$a;

    invoke-direct {v7, v10}, Lb/b/a/l/v/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v7, Lb/b/a/l/v/x$a;

    invoke-direct {v7}, Lb/b/a/l/v/x$a;-><init>()V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/net/URL;

    const-class v3, Ljava/io/InputStream;

    new-instance v7, Lb/b/a/l/v/y/f$a;

    invoke-direct {v7}, Lb/b/a/l/v/y/f$a;-><init>()V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/File;

    new-instance v7, Lb/b/a/l/v/k$a;

    invoke-direct {v7, v5}, Lb/b/a/l/v/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Lb/b/a/l/v/g;

    const-class v3, Ljava/io/InputStream;

    new-instance v7, Lb/b/a/l/v/y/a$a;

    invoke-direct {v7}, Lb/b/a/l/v/y/a$a;-><init>()V

    invoke-virtual {v9, v0, v3, v7}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v3, Lb/b/a/l/v/b$a;

    invoke-direct {v3}, Lb/b/a/l/v/b$a;-><init>()V

    move-object/from16 v7, v16

    invoke-virtual {v9, v7, v0, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v3, Lb/b/a/l/v/b$d;

    invoke-direct {v3}, Lb/b/a/l/v/b$d;-><init>()V

    invoke-virtual {v9, v7, v0, v3}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/net/Uri;

    invoke-virtual {v9, v0, v3, v6}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v0, v3, v6}, Lb/b/a/f;->c(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/v/o;)Lb/b/a/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v3, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lb/b/a/l/w/e/e;

    invoke-direct {v6}, Lb/b/a/l/w/e/e;-><init>()V

    const-string v10, "legacy_append"

    .line 17
    invoke-virtual {v9, v10, v0, v3, v6}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    .line 18
    const-class v0, Landroid/graphics/Bitmap;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lb/b/a/l/w/h/b;

    invoke-direct {v6, v8}, Lb/b/a/l/w/h/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v9, v0, v3, v6}, Lb/b/a/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/w/h/e;)Lb/b/a/f;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v3, p13

    invoke-virtual {v9, v0, v7, v3}, Lb/b/a/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/w/h/e;)Lb/b/a/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lb/b/a/l/w/h/c;

    move-object/from16 v10, v19

    invoke-direct {v6, v2, v3, v10}, Lb/b/a/l/w/h/c;-><init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/w/h/e;Lb/b/a/l/w/h/e;)V

    invoke-virtual {v9, v0, v7, v6}, Lb/b/a/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/w/h/e;)Lb/b/a/f;

    const-class v0, Lb/b/a/l/w/g/c;

    invoke-virtual {v9, v0, v7, v10}, Lb/b/a/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/w/h/e;)Lb/b/a/f;

    const/16 v0, 0x17

    if-lt v1, v0, :cond_5

    .line 19
    new-instance v0, Lb/b/a/l/w/c/b0;

    new-instance v1, Lb/b/a/l/w/c/b0$d;

    invoke-direct {v1}, Lb/b/a/l/w/c/b0$d;-><init>()V

    invoke-direct {v0, v2, v1}, Lb/b/a/l/w/c/b0;-><init>(Lb/b/a/l/u/c0/d;Lb/b/a/l/w/c/b0$f;)V

    .line 20
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    const-string v3, "legacy_append"

    .line 21
    invoke-virtual {v9, v3, v1, v2, v0}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    .line 22
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Lb/b/a/l/w/c/a;

    invoke-direct {v3, v8, v0}, Lb/b/a/l/w/c/a;-><init>(Landroid/content/res/Resources;Lb/b/a/l/q;)V

    const-string v0, "legacy_append"

    .line 23
    invoke-virtual {v9, v0, v1, v2, v3}, Lb/b/a/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lb/b/a/l/q;)Lb/b/a/f;

    .line 24
    :cond_5
    new-instance v6, Lb/b/a/p/h/f;

    invoke-direct {v6}, Lb/b/a/p/h/f;-><init>()V

    new-instance v0, Lb/b/a/d;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v5, v9

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p2

    move/from16 v11, p12

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lb/b/a/d;-><init>(Landroid/content/Context;Lb/b/a/l/u/c0/b;Lb/b/a/f;Lb/b/a/p/h/f;Lb/b/a/b$a;Ljava/util/Map;Ljava/util/List;Lb/b/a/l/u/l;ZI)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/b/a/b;->d:Lb/b/a/d;

    return-void

    :catchall_1
    move-exception v0

    .line 25
    monitor-exit v11

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 24

    sget-boolean v0, Lb/b/a/b;->k:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    sput-boolean v0, Lb/b/a/b;->k:Z

    .line 1
    new-instance v1, Lb/b/a/c;

    invoke-direct {v1}, Lb/b/a/c;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const-string v2, "ManifestParser"

    const/4 v3, 0x3

    .line 3
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Got null app info metadata"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got app info metadata: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "GlideModule"

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Lb/b/a/n/e;->a(Ljava/lang/String;)Lb/b/a/n/c;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded Glide module: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Finished loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string v2, "Glide"

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->c()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->c()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/a/n/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/n/c;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-static {v5}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lb/b/a/c;->l:Lb/b/a/m/l$b;

    .line 6
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/n/c;

    invoke-interface {v3, v15, v1}, Lb/b/a/n/b;->a(Landroid/content/Context;Lb/b/a/c;)V

    goto :goto_4

    .line 7
    :cond_a
    sget-object v2, Lb/b/a/l/u/e0/a$b;->b:Lb/b/a/l/u/e0/a$b;

    iget-object v3, v1, Lb/b/a/c;->f:Lb/b/a/l/u/e0/a;

    const-string v4, "Name must be non-null and non-empty, but given: "

    const/4 v5, 0x0

    if-nez v3, :cond_c

    .line 8
    invoke-static {}, Lb/b/a/l/u/e0/a;->a()I

    move-result v8

    const-string v3, "source"

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v9, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lb/b/a/l/u/e0/a$a;

    invoke-direct {v7, v3, v2, v5}, Lb/b/a/l/u/e0/a$a;-><init>(Ljava/lang/String;Lb/b/a/l/u/e0/a$b;Z)V

    move-object v6, v13

    move-object v3, v7

    move v7, v8

    move-object v5, v13

    move-object v13, v3

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lb/b/a/l/u/e0/a;

    invoke-direct {v3, v5}, Lb/b/a/l/u/e0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 10
    iput-object v3, v1, Lb/b/a/c;->f:Lb/b/a/l/u/e0/a;

    goto :goto_5

    .line 11
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v3}, Lb/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_c
    :goto_5
    iget-object v3, v1, Lb/b/a/c;->g:Lb/b/a/l/u/e0/a;

    if-nez v3, :cond_e

    .line 13
    sget v3, Lb/b/a/l/u/e0/a;->c:I

    const-string v3, "disk-cache"

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v9, 0x0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v13, Lb/b/a/l/u/e0/a$a;

    invoke-direct {v13, v3, v2, v0}, Lb/b/a/l/u/e0/a$a;-><init>(Ljava/lang/String;Lb/b/a/l/u/e0/a$b;Z)V

    const/4 v8, 0x1

    move-object v6, v5

    move v7, v8

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lb/b/a/l/u/e0/a;

    invoke-direct {v3, v5}, Lb/b/a/l/u/e0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 15
    iput-object v3, v1, Lb/b/a/c;->g:Lb/b/a/l/u/e0/a;

    goto :goto_6

    .line 16
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v3}, Lb/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_e
    :goto_6
    iget-object v3, v1, Lb/b/a/c;->m:Lb/b/a/l/u/e0/a;

    if-nez v3, :cond_11

    .line 18
    invoke-static {}, Lb/b/a/l/u/e0/a;->a()I

    move-result v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_f

    const/4 v3, 0x2

    const/4 v7, 0x2

    goto :goto_7

    :cond_f
    const/4 v3, 0x1

    const/4 v7, 0x1

    :goto_7
    const-string v3, "animation"

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v8, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Lb/b/a/l/u/e0/a$a;

    invoke-direct {v12, v3, v2, v0}, Lb/b/a/l/u/e0/a$a;-><init>(Ljava/lang/String;Lb/b/a/l/u/e0/a$b;Z)V

    move-object v5, v4

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lb/b/a/l/u/e0/a;

    invoke-direct {v0, v4}, Lb/b/a/l/u/e0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 20
    iput-object v0, v1, Lb/b/a/c;->m:Lb/b/a/l/u/e0/a;

    goto :goto_8

    .line 21
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v3}, Lb/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_11
    :goto_8
    iget-object v0, v1, Lb/b/a/c;->i:Lb/b/a/l/u/d0/j;

    if-nez v0, :cond_12

    new-instance v0, Lb/b/a/l/u/d0/j$a;

    invoke-direct {v0, v15}, Lb/b/a/l/u/d0/j$a;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v3, Lb/b/a/l/u/d0/j;

    invoke-direct {v3, v0}, Lb/b/a/l/u/d0/j;-><init>(Lb/b/a/l/u/d0/j$a;)V

    .line 24
    iput-object v3, v1, Lb/b/a/c;->i:Lb/b/a/l/u/d0/j;

    :cond_12
    iget-object v0, v1, Lb/b/a/c;->j:Lb/b/a/m/d;

    if-nez v0, :cond_13

    new-instance v0, Lb/b/a/m/f;

    invoke-direct {v0}, Lb/b/a/m/f;-><init>()V

    iput-object v0, v1, Lb/b/a/c;->j:Lb/b/a/m/d;

    :cond_13
    iget-object v0, v1, Lb/b/a/c;->c:Lb/b/a/l/u/c0/d;

    if-nez v0, :cond_15

    iget-object v0, v1, Lb/b/a/c;->i:Lb/b/a/l/u/d0/j;

    .line 25
    iget v0, v0, Lb/b/a/l/u/d0/j;->a:I

    if-lez v0, :cond_14

    .line 26
    new-instance v3, Lb/b/a/l/u/c0/j;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lb/b/a/l/u/c0/j;-><init>(J)V

    iput-object v3, v1, Lb/b/a/c;->c:Lb/b/a/l/u/c0/d;

    goto :goto_9

    :cond_14
    new-instance v0, Lb/b/a/l/u/c0/e;

    invoke-direct {v0}, Lb/b/a/l/u/c0/e;-><init>()V

    iput-object v0, v1, Lb/b/a/c;->c:Lb/b/a/l/u/c0/d;

    :cond_15
    :goto_9
    iget-object v0, v1, Lb/b/a/c;->d:Lb/b/a/l/u/c0/b;

    if-nez v0, :cond_16

    new-instance v0, Lb/b/a/l/u/c0/i;

    iget-object v3, v1, Lb/b/a/c;->i:Lb/b/a/l/u/d0/j;

    .line 27
    iget v3, v3, Lb/b/a/l/u/d0/j;->d:I

    .line 28
    invoke-direct {v0, v3}, Lb/b/a/l/u/c0/i;-><init>(I)V

    iput-object v0, v1, Lb/b/a/c;->d:Lb/b/a/l/u/c0/b;

    :cond_16
    iget-object v0, v1, Lb/b/a/c;->e:Lb/b/a/l/u/d0/i;

    if-nez v0, :cond_17

    new-instance v0, Lb/b/a/l/u/d0/h;

    iget-object v3, v1, Lb/b/a/c;->i:Lb/b/a/l/u/d0/j;

    .line 29
    iget v3, v3, Lb/b/a/l/u/d0/j;->b:I

    int-to-long v3, v3

    .line 30
    invoke-direct {v0, v3, v4}, Lb/b/a/l/u/d0/h;-><init>(J)V

    iput-object v0, v1, Lb/b/a/c;->e:Lb/b/a/l/u/d0/i;

    :cond_17
    iget-object v0, v1, Lb/b/a/c;->h:Lb/b/a/l/u/d0/a$a;

    if-nez v0, :cond_18

    new-instance v0, Lb/b/a/l/u/d0/g;

    invoke-direct {v0, v15}, Lb/b/a/l/u/d0/g;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lb/b/a/c;->h:Lb/b/a/l/u/d0/a$a;

    :cond_18
    iget-object v0, v1, Lb/b/a/c;->b:Lb/b/a/l/u/l;

    if-nez v0, :cond_19

    new-instance v0, Lb/b/a/l/u/l;

    iget-object v4, v1, Lb/b/a/c;->e:Lb/b/a/l/u/d0/i;

    iget-object v5, v1, Lb/b/a/c;->h:Lb/b/a/l/u/d0/a$a;

    iget-object v6, v1, Lb/b/a/c;->g:Lb/b/a/l/u/e0/a;

    iget-object v7, v1, Lb/b/a/c;->f:Lb/b/a/l/u/e0/a;

    .line 31
    new-instance v8, Lb/b/a/l/u/e0/a;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v19, Lb/b/a/l/u/e0/a;->b:J

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lb/b/a/l/u/e0/a$a;

    const-string v10, "source-unlimited"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v2, v11}, Lb/b/a/l/u/e0/a$a;-><init>(Ljava/lang/String;Lb/b/a/l/u/e0/a$b;Z)V

    const/16 v17, 0x0

    const v18, 0x7fffffff

    move-object/from16 v16, v3

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v8, v3}, Lb/b/a/l/u/e0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 32
    iget-object v9, v1, Lb/b/a/c;->m:Lb/b/a/l/u/e0/a;

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lb/b/a/l/u/l;-><init>(Lb/b/a/l/u/d0/i;Lb/b/a/l/u/d0/a$a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Z)V

    iput-object v0, v1, Lb/b/a/c;->b:Lb/b/a/l/u/l;

    :cond_19
    iget-object v0, v1, Lb/b/a/c;->n:Ljava/util/List;

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_1a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_a
    iput-object v0, v1, Lb/b/a/c;->n:Ljava/util/List;

    new-instance v8, Lb/b/a/m/l;

    iget-object v0, v1, Lb/b/a/c;->l:Lb/b/a/m/l$b;

    invoke-direct {v8, v0}, Lb/b/a/m/l;-><init>(Lb/b/a/m/l$b;)V

    new-instance v0, Lb/b/a/b;

    iget-object v4, v1, Lb/b/a/c;->b:Lb/b/a/l/u/l;

    iget-object v5, v1, Lb/b/a/c;->e:Lb/b/a/l/u/d0/i;

    iget-object v6, v1, Lb/b/a/c;->c:Lb/b/a/l/u/c0/d;

    iget-object v7, v1, Lb/b/a/c;->d:Lb/b/a/l/u/c0/b;

    iget-object v9, v1, Lb/b/a/c;->j:Lb/b/a/m/d;

    const/4 v10, 0x4

    iget-object v11, v1, Lb/b/a/c;->k:Lb/b/a/b$a;

    iget-object v12, v1, Lb/b/a/c;->a:Ljava/util/Map;

    iget-object v13, v1, Lb/b/a/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v18, v14

    move v14, v1

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lb/b/a/b;-><init>(Landroid/content/Context;Lb/b/a/l/u/l;Lb/b/a/l/u/d0/i;Lb/b/a/l/u/c0/d;Lb/b/a/l/u/c0/b;Lb/b/a/m/l;Lb/b/a/m/d;ILb/b/a/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    .line 33
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/n/c;

    :try_start_1
    iget-object v4, v0, Lb/b/a/b;->e:Lb/b/a/f;

    invoke-interface {v3, v1, v0, v4}, Lb/b/a/n/f;->b(Landroid/content/Context;Lb/b/a/b;Lb/b/a/f;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v2}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1b
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lb/b/a/b;->j:Lb/b/a/b;

    .line 34
    sput-boolean v17, Lb/b/a/b;->k:Z

    return-void

    :catch_1
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 36
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public static b(Landroid/content/Context;)Lb/b/a/b;
    .locals 7

    sget-object v0, Lb/b/a/b;->j:Lb/b/a/b;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb/b/a/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    invoke-static {p0}, Lb/b/a/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    invoke-static {p0}, Lb/b/a/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p0

    invoke-static {p0}, Lb/b/a/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    nop

    const/4 v0, 0x5

    const-string v2, "Glide"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :goto_0
    const-class v0, Lb/b/a/b;

    monitor-enter v0

    :try_start_1
    sget-object v2, Lb/b/a/b;->j:Lb/b/a/b;

    if-nez v2, :cond_1

    invoke-static {p0, v1}, Lb/b/a/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lb/b/a/b;->j:Lb/b/a/b;

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Lb/b/a/h;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/b/a/b;->g:Lb/b/a/m/l;

    .line 4
    invoke-virtual {v0, p0}, Lb/b/a/m/l;->b(Landroid/content/Context;)Lb/b/a/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lb/b/a/r/j;->a()V

    iget-object v0, p0, Lb/b/a/b;->c:Lb/b/a/l/u/d0/i;

    check-cast v0, Lb/b/a/r/g;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lb/b/a/r/g;->e(J)V

    .line 3
    iget-object v0, p0, Lb/b/a/b;->b:Lb/b/a/l/u/c0/d;

    invoke-interface {v0}, Lb/b/a/l/u/c0/d;->a()V

    iget-object v0, p0, Lb/b/a/b;->f:Lb/b/a/l/u/c0/b;

    invoke-interface {v0}, Lb/b/a/l/u/c0/b;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    .line 1
    invoke-static {}, Lb/b/a/r/j;->a()V

    iget-object v0, p0, Lb/b/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/h;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/a/b;->c:Lb/b/a/l/u/d0/i;

    check-cast v0, Lb/b/a/l/u/d0/h;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_1

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lb/b/a/r/g;->e(J)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3

    .line 6
    :cond_2
    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Lb/b/a/r/g;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x2

    .line 7
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lb/b/a/r/g;->e(J)V

    .line 8
    :cond_3
    :goto_1
    iget-object v0, p0, Lb/b/a/b;->b:Lb/b/a/l/u/c0/d;

    invoke-interface {v0, p1}, Lb/b/a/l/u/c0/d;->b(I)V

    iget-object v0, p0, Lb/b/a/b;->f:Lb/b/a/l/u/c0/b;

    invoke-interface {v0, p1}, Lb/b/a/l/u/c0/b;->b(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
