.class public Lb/b/a/l/u/l$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lb/b/a/l/u/e0/a;

.field public final b:Lb/b/a/l/u/e0/a;

.field public final c:Lb/b/a/l/u/e0/a;

.field public final d:Lb/b/a/l/u/e0/a;

.field public final e:Lb/b/a/l/u/n;

.field public final f:Lb/b/a/l/u/q$a;

.field public final g:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "Lb/b/a/l/u/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/e0/a;Lb/b/a/l/u/n;Lb/b/a/l/u/q$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/a/l/u/l$b$a;

    invoke-direct {v0, p0}, Lb/b/a/l/u/l$b$a;-><init>(Lb/b/a/l/u/l$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lb/b/a/r/k/a;->a(ILb/b/a/r/k/a$b;)La/h/i/c;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/l/u/l$b;->g:La/h/i/c;

    iput-object p1, p0, Lb/b/a/l/u/l$b;->a:Lb/b/a/l/u/e0/a;

    iput-object p2, p0, Lb/b/a/l/u/l$b;->b:Lb/b/a/l/u/e0/a;

    iput-object p3, p0, Lb/b/a/l/u/l$b;->c:Lb/b/a/l/u/e0/a;

    iput-object p4, p0, Lb/b/a/l/u/l$b;->d:Lb/b/a/l/u/e0/a;

    iput-object p5, p0, Lb/b/a/l/u/l$b;->e:Lb/b/a/l/u/n;

    iput-object p6, p0, Lb/b/a/l/u/l$b;->f:Lb/b/a/l/u/q$a;

    return-void
.end method
