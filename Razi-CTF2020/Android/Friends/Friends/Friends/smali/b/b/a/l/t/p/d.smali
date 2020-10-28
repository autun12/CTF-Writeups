.class public Lb/b/a/l/t/p/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Lb/b/a/l/t/p/a;


# instance fields
.field public final a:Lb/b/a/l/t/p/c;

.field public final b:Lb/b/a/l/u/c0/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/t/p/a;

    invoke-direct {v0}, Lb/b/a/l/t/p/a;-><init>()V

    sput-object v0, Lb/b/a/l/t/p/d;->e:Lb/b/a/l/t/p/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lb/b/a/l/t/p/c;Lb/b/a/l/u/c0/b;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lb/b/a/l/t/p/c;",
            "Lb/b/a/l/u/c0/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/l/t/p/d;->a:Lb/b/a/l/t/p/c;

    iput-object p3, p0, Lb/b/a/l/t/p/d;->b:Lb/b/a/l/u/c0/b;

    iput-object p4, p0, Lb/b/a/l/t/p/d;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, Lb/b/a/l/t/p/d;->d:Ljava/util/List;

    return-void
.end method
