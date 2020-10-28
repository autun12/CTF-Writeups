.class public Lb/b/a/m/o;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/m/o$a;
    }
.end annotation


# instance fields
.field public final U:Lb/b/a/m/a;

.field public final V:Lb/b/a/m/m;

.field public final W:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb/b/a/m/o;",
            ">;"
        }
    .end annotation
.end field

.field public X:Lb/b/a/m/o;

.field public Y:Lb/b/a/h;

.field public Z:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/b/a/m/a;

    invoke-direct {v0}, Lb/b/a/m/a;-><init>()V

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v1, Lb/b/a/m/o$a;

    invoke-direct {v1, p0}, Lb/b/a/m/o$a;-><init>(Lb/b/a/m/o;)V

    iput-object v1, p0, Lb/b/a/m/o;->V:Lb/b/a/m/m;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lb/b/a/m/o;->W:Ljava/util/Set;

    iput-object v0, p0, Lb/b/a/m/o;->U:Lb/b/a/m/a;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 2
    iget-object v0, p0, Lb/b/a/m/o;->U:Lb/b/a/m/a;

    invoke-virtual {v0}, Lb/b/a/m/a;->c()V

    invoke-virtual {p0}, Lb/b/a/m/o;->V()V

    return-void
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/b/a/m/o;->Z:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Lb/b/a/m/o;->V()V

    return-void
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 2
    iget-object v0, p0, Lb/b/a/m/o;->U:Lb/b/a/m/a;

    invoke-virtual {v0}, Lb/b/a/m/a;->d()V

    return-void
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    .line 2
    iget-object v0, p0, Lb/b/a/m/o;->U:Lb/b/a/m/a;

    invoke-virtual {v0}, Lb/b/a/m/a;->e()V

    return-void
.end method

.method public final T()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/a/m/o;->Z:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method public final U(Landroid/content/Context;La/l/a/j;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/m/o;->V()V

    invoke-static {p1}, Lb/b/a/b;->b(Landroid/content/Context;)Lb/b/a/b;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lb/b/a/b;->g:Lb/b/a/m/l;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lb/b/a/m/l;->e(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lb/b/a/m/l;->d(La/l/a/j;Landroidx/fragment/app/Fragment;Z)Lb/b/a/m/o;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lb/b/a/m/o;->X:Lb/b/a/m/o;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/a/m/o;->X:Lb/b/a/m/o;

    .line 4
    iget-object p1, p1, Lb/b/a/m/o;->W:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final V()V
    .locals 1

    iget-object v0, p0, Lb/b/a/m/o;->X:Lb/b/a/m/o;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/a/m/o;->W:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/b/a/m/o;->X:Lb/b/a/m/o;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/a/m/o;->T()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->z(Landroid/content/Context;)V

    move-object p1, p0

    .line 1
    :goto_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->r:La/l/a/k;

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    if-nez p1, :cond_2

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unable to register fragment with root, ancestor detached"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lb/b/a/m/o;->U(Landroid/content/Context;La/l/a/j;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Unable to register fragment with root"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method
