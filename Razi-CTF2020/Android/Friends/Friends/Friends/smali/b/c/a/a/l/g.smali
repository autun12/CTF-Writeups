.class public Lb/c/a/a/l/g;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source ""


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Ljava/util/Calendar;

.field public final synthetic c:Lb/c/a/a/l/f;


# direct methods
.method public constructor <init>(Lb/c/a/a/l/f;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/l/g;->c:Lb/c/a/a/l/f;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    invoke-static {}, Lb/c/a/a/a;->l()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/a/l/g;->a:Ljava/util/Calendar;

    invoke-static {}, Lb/c/a/a/a;->l()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/a/l/g;->b:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    instance-of p1, p1, Lb/c/a/a/l/w;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    check-cast p1, Lb/c/a/a/l/w;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p1, p0, Lb/c/a/a/l/g;->c:Lb/c/a/a/l/f;

    .line 1
    iget-object p1, p1, Lb/c/a/a/l/f;->W:Lb/c/a/a/l/d;

    .line 2
    invoke-interface {p1}, Lb/c/a/a/l/d;->c()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/h/i/b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
