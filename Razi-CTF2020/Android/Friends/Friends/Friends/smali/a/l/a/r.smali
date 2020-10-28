.class public abstract La/l/a/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/l/a/r$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/l/a/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/l/a/r;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/l/a/r;->p:Z

    return-void
.end method


# virtual methods
.method public b(La/l/a/r$a;)V
    .locals 1

    iget-object v0, p0, La/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, La/l/a/r;->b:I

    iput v0, p1, La/l/a/r$a;->c:I

    iget v0, p0, La/l/a/r;->c:I

    iput v0, p1, La/l/a/r$a;->d:I

    iget v0, p0, La/l/a/r;->d:I

    iput v0, p1, La/l/a/r$a;->e:I

    iget v0, p0, La/l/a/r;->e:I

    iput v0, p1, La/l/a/r$a;->f:I

    return-void
.end method
