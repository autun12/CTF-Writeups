.class public abstract Landroidx/lifecycle/LiveData$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final a:La/n/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/n/m<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public final synthetic d:Landroidx/lifecycle/LiveData;


# virtual methods
.method public h(Z)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->d:Landroidx/lifecycle/LiveData;

    iget v1, v0, Landroidx/lifecycle/LiveData;->c:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/LiveData;->c:I

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()V

    :cond_3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->d:Landroidx/lifecycle/LiveData;

    iget v0, p1, Landroidx/lifecycle/LiveData;->c:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()V

    :cond_4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->b:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/lifecycle/LiveData$a;->d:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$a;)V

    :cond_5
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public abstract j()Z
.end method
