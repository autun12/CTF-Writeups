.class public Lb/b/a/l/w/g/e;
.super Lb/b/a/l/w/e/b;
.source ""

# interfaces
.implements Lb/b/a/l/u/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/l/w/e/b<",
        "Lb/b/a/l/w/g/c;",
        ">;",
        "Lb/b/a/l/u/s;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/b/a/l/w/g/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/l/w/e/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/l/w/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lb/b/a/l/w/g/c;

    invoke-virtual {v0}, Lb/b/a/l/w/g/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lb/b/a/l/w/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lb/b/a/l/w/g/c;

    .line 1
    iget-object v0, v0, Lb/b/a/l/w/g/c;->b:Lb/b/a/l/w/g/c$a;

    iget-object v0, v0, Lb/b/a/l/w/g/c$a;->a:Lb/b/a/l/w/g/g;

    .line 2
    iget-object v1, v0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-interface {v1}, Lb/b/a/k/a;->c()I

    move-result v1

    iget v0, v0, Lb/b/a/l/w/g/g;->o:I

    add-int/2addr v1, v0

    return v1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lb/b/a/l/w/g/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lb/b/a/l/w/g/c;

    return-object v0
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lb/b/a/l/w/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lb/b/a/l/w/g/c;

    invoke-virtual {v0}, Lb/b/a/l/w/g/c;->stop()V

    iget-object v0, p0, Lb/b/a/l/w/e/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lb/b/a/l/w/g/c;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/b/a/l/w/g/c;->e:Z

    iget-object v0, v0, Lb/b/a/l/w/g/c;->b:Lb/b/a/l/w/g/c$a;

    iget-object v0, v0, Lb/b/a/l/w/g/c$a;->a:Lb/b/a/l/w/g/g;

    .line 2
    iget-object v2, v0, Lb/b/a/l/w/g/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3
    iget-object v2, v0, Lb/b/a/l/w/g/g;->l:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v0, Lb/b/a/l/w/g/g;->e:Lb/b/a/l/u/c0/d;

    invoke-interface {v4, v2}, Lb/b/a/l/u/c0/d;->e(Landroid/graphics/Bitmap;)V

    iput-object v3, v0, Lb/b/a/l/w/g/g;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lb/b/a/l/w/g/g;->f:Z

    .line 5
    iget-object v2, v0, Lb/b/a/l/w/g/g;->i:Lb/b/a/l/w/g/g$a;

    if-eqz v2, :cond_1

    iget-object v4, v0, Lb/b/a/l/w/g/g;->d:Lb/b/a/h;

    invoke-virtual {v4, v2}, Lb/b/a/h;->l(Lb/b/a/p/h/h;)V

    iput-object v3, v0, Lb/b/a/l/w/g/g;->i:Lb/b/a/l/w/g/g$a;

    :cond_1
    iget-object v2, v0, Lb/b/a/l/w/g/g;->k:Lb/b/a/l/w/g/g$a;

    if-eqz v2, :cond_2

    iget-object v4, v0, Lb/b/a/l/w/g/g;->d:Lb/b/a/h;

    invoke-virtual {v4, v2}, Lb/b/a/h;->l(Lb/b/a/p/h/h;)V

    iput-object v3, v0, Lb/b/a/l/w/g/g;->k:Lb/b/a/l/w/g/g$a;

    :cond_2
    iget-object v2, v0, Lb/b/a/l/w/g/g;->n:Lb/b/a/l/w/g/g$a;

    if-eqz v2, :cond_3

    iget-object v4, v0, Lb/b/a/l/w/g/g;->d:Lb/b/a/h;

    invoke-virtual {v4, v2}, Lb/b/a/h;->l(Lb/b/a/p/h/h;)V

    iput-object v3, v0, Lb/b/a/l/w/g/g;->n:Lb/b/a/l/w/g/g$a;

    :cond_3
    iget-object v2, v0, Lb/b/a/l/w/g/g;->a:Lb/b/a/k/a;

    invoke-interface {v2}, Lb/b/a/k/a;->clear()V

    iput-boolean v1, v0, Lb/b/a/l/w/g/g;->j:Z

    return-void
.end method
