.class public Lb/b/a/d;
.super Landroid/content/ContextWrapper;
.source ""


# static fields
.field public static final k:Lb/b/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/i<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lb/b/a/l/u/c0/b;

.field public final b:Lb/b/a/f;

.field public final c:Lb/b/a/p/h/f;

.field public final d:Lb/b/a/b$a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/p/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/i<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final g:Lb/b/a/l/u/l;

.field public final h:Z

.field public final i:I

.field public j:Lb/b/a/p/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/a;

    invoke-direct {v0}, Lb/b/a/a;-><init>()V

    sput-object v0, Lb/b/a/d;->k:Lb/b/a/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/b/a/l/u/c0/b;Lb/b/a/f;Lb/b/a/p/h/f;Lb/b/a/b$a;Ljava/util/Map;Ljava/util/List;Lb/b/a/l/u/l;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/b/a/l/u/c0/b;",
            "Lb/b/a/f;",
            "Lb/b/a/p/h/f;",
            "Lb/b/a/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lb/b/a/p/d<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lb/b/a/l/u/l;",
            "ZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lb/b/a/d;->a:Lb/b/a/l/u/c0/b;

    iput-object p3, p0, Lb/b/a/d;->b:Lb/b/a/f;

    iput-object p4, p0, Lb/b/a/d;->c:Lb/b/a/p/h/f;

    iput-object p5, p0, Lb/b/a/d;->d:Lb/b/a/b$a;

    iput-object p7, p0, Lb/b/a/d;->e:Ljava/util/List;

    iput-object p6, p0, Lb/b/a/d;->f:Ljava/util/Map;

    iput-object p8, p0, Lb/b/a/d;->g:Lb/b/a/l/u/l;

    iput-boolean p9, p0, Lb/b/a/d;->h:Z

    iput p10, p0, Lb/b/a/d;->i:I

    return-void
.end method
