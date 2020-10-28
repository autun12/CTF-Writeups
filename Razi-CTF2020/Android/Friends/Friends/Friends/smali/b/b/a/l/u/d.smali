.class public Lb/b/a/l/u/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/g;
.implements Lb/b/a/l/t/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/u/g;",
        "Lb/b/a/l/t/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/l/m;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/u/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/u/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lb/b/a/l/u/g$a;

.field public e:I

.field public f:Lb/b/a/l/m;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/l/v/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public h:I

.field public volatile i:Lb/b/a/l/v/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>(Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/h<",
            "*>;",
            "Lb/b/a/l/u/g$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lb/b/a/l/u/h;->a()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lb/b/a/l/u/d;->e:I

    iput-object v0, p0, Lb/b/a/l/u/d;->b:Ljava/util/List;

    iput-object p1, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    iput-object p2, p0, Lb/b/a/l/u/d;->d:Lb/b/a/l/u/g$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lb/b/a/l/u/h;Lb/b/a/l/u/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/l/m;",
            ">;",
            "Lb/b/a/l/u/h<",
            "*>;",
            "Lb/b/a/l/u/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/b/a/l/u/d;->e:I

    iput-object p1, p0, Lb/b/a/l/u/d;->b:Ljava/util/List;

    iput-object p2, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    iput-object p3, p0, Lb/b/a/l/u/d;->d:Lb/b/a/l/u/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/b/a/l/u/d;->g:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 1
    iget v3, p0, Lb/b/a/l/u/d;->h:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 3
    iget v3, p0, Lb/b/a/l/u/d;->h:I

    iget-object v4, p0, Lb/b/a/l/u/d;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 4
    iget-object v3, p0, Lb/b/a/l/u/d;->g:Ljava/util/List;

    iget v4, p0, Lb/b/a/l/u/d;->h:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lb/b/a/l/u/d;->h:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/l/v/n;

    iget-object v4, p0, Lb/b/a/l/u/d;->j:Ljava/io/File;

    iget-object v5, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    .line 5
    iget v6, v5, Lb/b/a/l/u/h;->e:I

    .line 6
    iget v7, v5, Lb/b/a/l/u/h;->f:I

    .line 7
    iget-object v5, v5, Lb/b/a/l/u/h;->i:Lb/b/a/l/o;

    .line 8
    invoke-interface {v3, v4, v6, v7, v5}, Lb/b/a/l/v/n;->a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;

    move-result-object v3

    iput-object v3, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    iget-object v3, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    iget-object v4, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    iget-object v4, v4, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v4}, Lb/b/a/l/t/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/a/l/u/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    iget-object v3, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    .line 9
    iget-object v3, v3, Lb/b/a/l/u/h;->o:Lb/b/a/e;

    .line 10
    invoke-interface {v0, v3, p0}, Lb/b/a/l/t/d;->d(Lb/b/a/e;Lb/b/a/l/t/d$a;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    return v0

    :cond_6
    :goto_4
    iget v0, p0, Lb/b/a/l/u/d;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lb/b/a/l/u/d;->e:I

    iget-object v2, p0, Lb/b/a/l/u/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lb/b/a/l/u/d;->b:Ljava/util/List;

    iget v2, p0, Lb/b/a/l/u/d;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/l/m;

    new-instance v2, Lb/b/a/l/u/e;

    iget-object v3, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    .line 11
    iget-object v4, v3, Lb/b/a/l/u/h;->n:Lb/b/a/l/m;

    .line 12
    invoke-direct {v2, v0, v4}, Lb/b/a/l/u/e;-><init>(Lb/b/a/l/m;Lb/b/a/l/m;)V

    invoke-virtual {v3}, Lb/b/a/l/u/h;->b()Lb/b/a/l/u/d0/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lb/b/a/l/u/d0/a;->b(Lb/b/a/l/m;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lb/b/a/l/u/d;->j:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lb/b/a/l/u/d;->f:Lb/b/a/l/m;

    iget-object v0, p0, Lb/b/a/l/u/d;->c:Lb/b/a/l/u/h;

    .line 13
    iget-object v0, v0, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 14
    iget-object v0, v0, Lb/b/a/d;->b:Lb/b/a/f;

    .line 15
    invoke-virtual {v0, v2}, Lb/b/a/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lb/b/a/l/u/d;->g:Ljava/util/List;

    iput v1, p0, Lb/b/a/l/u/d;->h:I

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lb/b/a/l/u/d;->d:Lb/b/a/l/u/g$a;

    iget-object v1, p0, Lb/b/a/l/u/d;->f:Lb/b/a/l/m;

    iget-object v2, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    iget-object v2, v2, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    sget-object v3, Lb/b/a/l/a;->d:Lb/b/a/l/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lb/b/a/l/u/g$a;->d(Lb/b/a/l/m;Ljava/lang/Exception;Lb/b/a/l/t/d;Lb/b/a/l/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    invoke-interface {v0}, Lb/b/a/l/t/d;->cancel()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lb/b/a/l/u/d;->d:Lb/b/a/l/u/g$a;

    iget-object v1, p0, Lb/b/a/l/u/d;->f:Lb/b/a/l/m;

    iget-object v2, p0, Lb/b/a/l/u/d;->i:Lb/b/a/l/v/n$a;

    iget-object v3, v2, Lb/b/a/l/v/n$a;->c:Lb/b/a/l/t/d;

    sget-object v4, Lb/b/a/l/a;->d:Lb/b/a/l/a;

    iget-object v5, p0, Lb/b/a/l/u/d;->f:Lb/b/a/l/m;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lb/b/a/l/u/g$a;->c(Lb/b/a/l/m;Ljava/lang/Object;Lb/b/a/l/t/d;Lb/b/a/l/a;Lb/b/a/l/m;)V

    return-void
.end method
