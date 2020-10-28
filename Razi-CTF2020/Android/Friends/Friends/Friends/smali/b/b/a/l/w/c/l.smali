.class public abstract Lb/b/a/l/w/c/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/w/c/l$e;,
        Lb/b/a/l/w/c/l$a;,
        Lb/b/a/l/w/c/l$d;,
        Lb/b/a/l/w/c/l$b;,
        Lb/b/a/l/w/c/l$c;
    }
.end annotation


# static fields
.field public static final a:Lb/b/a/l/w/c/l;

.field public static final b:Lb/b/a/l/w/c/l;

.field public static final c:Lb/b/a/l/w/c/l;

.field public static final d:Lb/b/a/l/w/c/l;

.field public static final e:Lb/b/a/l/w/c/l;

.field public static final f:Lb/b/a/l/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/n<",
            "Lb/b/a/l/w/c/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/b/a/l/w/c/l$c;

    invoke-direct {v0}, Lb/b/a/l/w/c/l$c;-><init>()V

    sput-object v0, Lb/b/a/l/w/c/l;->a:Lb/b/a/l/w/c/l;

    new-instance v0, Lb/b/a/l/w/c/l$a;

    invoke-direct {v0}, Lb/b/a/l/w/c/l$a;-><init>()V

    sput-object v0, Lb/b/a/l/w/c/l;->b:Lb/b/a/l/w/c/l;

    new-instance v0, Lb/b/a/l/w/c/l$b;

    invoke-direct {v0}, Lb/b/a/l/w/c/l$b;-><init>()V

    sput-object v0, Lb/b/a/l/w/c/l;->c:Lb/b/a/l/w/c/l;

    new-instance v1, Lb/b/a/l/w/c/l$d;

    invoke-direct {v1}, Lb/b/a/l/w/c/l$d;-><init>()V

    sput-object v1, Lb/b/a/l/w/c/l;->d:Lb/b/a/l/w/c/l;

    sput-object v0, Lb/b/a/l/w/c/l;->e:Lb/b/a/l/w/c/l;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, Lb/b/a/l/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/b/a/l/n;

    move-result-object v0

    sput-object v0, Lb/b/a/l/w/c/l;->f:Lb/b/a/l/n;

    const/4 v0, 0x1

    sput-boolean v0, Lb/b/a/l/w/c/l;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lb/b/a/l/w/c/l$e;
.end method

.method public abstract b(IIII)F
.end method
