.class public abstract Lb/b/a/p/h/i;
.super Lb/b/a/p/h/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/p/h/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lb/b/a/p/h/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/p/h/i$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/b/a/p/h/a;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/b/a/p/h/i;->b:Landroid/view/View;

    new-instance v0, Lb/b/a/p/h/i$a;

    invoke-direct {v0, p1}, Lb/b/a/p/h/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lb/b/a/p/h/i;->c:Lb/b/a/p/h/i$a;

    return-void
.end method


# virtual methods
.method public b()Lb/b/a/p/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/p/h/i;->b:Landroid/view/View;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lb/b/a/p/b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lb/b/a/p/b;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public d(Lb/b/a/p/h/g;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/p/h/i;->c:Lb/b/a/p/h/i$a;

    .line 1
    iget-object v0, v0, Lb/b/a/p/h/i$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lb/b/a/p/h/g;)V
    .locals 4

    iget-object v0, p0, Lb/b/a/p/h/i;->c:Lb/b/a/p/h/i$a;

    .line 1
    invoke-virtual {v0}, Lb/b/a/p/h/i$a;->d()I

    move-result v1

    invoke-virtual {v0}, Lb/b/a/p/h/i$a;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb/b/a/p/h/i$a;->e(II)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p1, Lb/b/a/p/g;

    invoke-virtual {p1, v1, v2}, Lb/b/a/p/g;->e(II)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lb/b/a/p/h/i$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lb/b/a/p/h/i$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, v0, Lb/b/a/p/h/i$a;->c:Lb/b/a/p/h/i$a$a;

    if-nez p1, :cond_2

    iget-object p1, v0, Lb/b/a/p/h/i$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lb/b/a/p/h/i$a$a;

    invoke-direct {v1, v0}, Lb/b/a/p/h/i$a$a;-><init>(Lb/b/a/p/h/i$a;)V

    iput-object v1, v0, Lb/b/a/p/h/i$a;->c:Lb/b/a/p/h/i$a$a;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h(Lb/b/a/p/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/p/h/i;->b:Landroid/view/View;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Target for: "

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/p/h/i;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
