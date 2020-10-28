.class public abstract La/b/g/i/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public b:La/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/h<",
            "La/h/e/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:La/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/h<",
            "La/h/e/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/i/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    instance-of v0, p1, La/h/e/a/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, La/h/e/a/b;

    iget-object v1, p0, La/b/g/i/c;->b:La/e/h;

    if-nez v1, :cond_0

    new-instance v1, La/e/h;

    invoke-direct {v1}, La/e/h;-><init>()V

    iput-object v1, p0, La/b/g/i/c;->b:La/e/h;

    :cond_0
    iget-object v1, p0, La/b/g/i/c;->b:La/e/h;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, p1, v2}, La/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, La/b/g/i/j;

    iget-object v1, p0, La/b/g/i/c;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, La/b/g/i/j;-><init>(Landroid/content/Context;La/h/e/a/b;)V

    iget-object v1, p0, La/b/g/i/c;->b:La/e/h;

    invoke-virtual {v1, v0, p1}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, La/h/e/a/c;

    if-eqz v0, :cond_2

    check-cast p1, La/h/e/a/c;

    iget-object v0, p0, La/b/g/i/c;->c:La/e/h;

    if-nez v0, :cond_0

    new-instance v0, La/e/h;

    invoke-direct {v0}, La/e/h;-><init>()V

    iput-object v0, p0, La/b/g/i/c;->c:La/e/h;

    :cond_0
    iget-object v0, p0, La/b/g/i/c;->c:La/e/h;

    invoke-virtual {v0, p1}, La/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    new-instance v0, La/b/g/i/s;

    iget-object v1, p0, La/b/g/i/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, La/b/g/i/s;-><init>(Landroid/content/Context;La/h/e/a/c;)V

    iget-object v1, p0, La/b/g/i/c;->c:La/e/h;

    invoke-virtual {v1, p1, v0}, La/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
