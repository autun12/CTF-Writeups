.class public Lb/c/a/a/l/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic c:Lb/c/a/a/l/r;


# direct methods
.method public constructor <init>(Lb/c/a/a/l/r;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/l/q;->c:Lb/c/a/a/l/r;

    iput-object p2, p0, Lb/c/a/a/l/q;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lb/c/a/a/l/q;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lb/c/a/a/l/p;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lb/c/a/a/l/p;->a()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Lb/c/a/a/l/p;->c()I

    move-result p1

    if-gt p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lb/c/a/a/l/q;->c:Lb/c/a/a/l/r;

    .line 3
    iget-object p1, p1, Lb/c/a/a/l/r;->e:Lb/c/a/a/l/f$f;

    .line 4
    iget-object p2, p0, Lb/c/a/a/l/q;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lb/c/a/a/l/p;

    move-result-object p2

    invoke-virtual {p2, p3}, Lb/c/a/a/l/p;->b(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    check-cast p1, Lb/c/a/a/l/f$d;

    .line 5
    iget-object p4, p1, Lb/c/a/a/l/f$d;->a:Lb/c/a/a/l/f;

    .line 6
    iget-object p4, p4, Lb/c/a/a/l/f;->X:Lb/c/a/a/l/a;

    .line 7
    iget-object p4, p4, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    .line 8
    invoke-interface {p4, p2, p3}, Lb/c/a/a/l/a$b;->e(J)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p1, Lb/c/a/a/l/f$d;->a:Lb/c/a/a/l/f;

    .line 9
    iget-object p4, p4, Lb/c/a/a/l/f;->W:Lb/c/a/a/l/d;

    .line 10
    invoke-interface {p4, p2, p3}, Lb/c/a/a/l/d;->b(J)V

    iget-object p2, p1, Lb/c/a/a/l/f$d;->a:Lb/c/a/a/l/f;

    iget-object p2, p2, Lb/c/a/a/l/t;->U:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/c/a/a/l/s;

    iget-object p4, p1, Lb/c/a/a/l/f$d;->a:Lb/c/a/a/l/f;

    .line 11
    iget-object p4, p4, Lb/c/a/a/l/f;->W:Lb/c/a/a/l/d;

    .line 12
    invoke-interface {p4}, Lb/c/a/a/l/d;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Lb/c/a/a/l/s;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lb/c/a/a/l/f$d;->a:Lb/c/a/a/l/f;

    .line 13
    iget-object p2, p2, Lb/c/a/a/l/f;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p2

    .line 15
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$g;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->b()V

    .line 16
    iget-object p1, p1, Lb/c/a/a/l/f$d;->a:Lb/c/a/a/l/f;

    .line 17
    iget-object p1, p1, Lb/c/a/a/l/f;->b0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$g;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->b()V

    :cond_2
    return-void
.end method
