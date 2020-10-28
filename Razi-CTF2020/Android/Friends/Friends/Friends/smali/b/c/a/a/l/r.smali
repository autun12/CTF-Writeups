.class public Lb/c/a/a/l/r;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/l/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lb/c/a/a/l/r$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lb/c/a/a/l/a;

.field public final d:Lb/c/a/a/l/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/a/l/d<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Lb/c/a/a/l/f$f;

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/c/a/a/l/d;Lb/c/a/a/l/a;Lb/c/a/a/l/f$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/c/a/a/l/d<",
            "*>;",
            "Lb/c/a/a/l/a;",
            "Lb/c/a/a/l/f$f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 1
    iget-object v0, p3, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    .line 2
    iget-object v1, p3, Lb/c/a/a/l/a;->c:Lb/c/a/a/l/o;

    .line 3
    iget-object v2, p3, Lb/c/a/a/l/a;->d:Lb/c/a/a/l/o;

    .line 4
    invoke-virtual {v0, v2}, Lb/c/a/a/l/o;->f(Lb/c/a/a/l/o;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {v2, v1}, Lb/c/a/a/l/o;->f(Lb/c/a/a/l/o;)I

    move-result v0

    if-gtz v0, :cond_2

    sget v0, Lb/c/a/a/l/p;->f:I

    .line 5
    sget v1, Lb/c/a/a/l/f;->f0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v0, v0, v1

    .line 6
    invoke-static {p1}, Lb/c/a/a/l/n;->T(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lb/c/a/a/l/r;->f:I

    iput-object p3, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    iput-object p2, p0, Lb/c/a/a/l/r;->d:Lb/c/a/a/l/d;

    iput-object p4, p0, Lb/c/a/a/l/r;->e:Lb/c/a/a/l/f$f;

    const/4 p1, 0x1

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$g;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$g;->b:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    .line 1
    iget v0, v0, Lb/c/a/a/l/a;->g:I

    return v0
.end method

.method public b(I)J
    .locals 2

    iget-object v0, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    .line 1
    iget-object v0, v0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    .line 2
    invoke-virtual {v0, p1}, Lb/c/a/a/l/o;->h(I)Lb/c/a/a/l/o;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 3

    check-cast p1, Lb/c/a/a/l/r$a;

    .line 1
    iget-object v0, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    .line 2
    iget-object v0, v0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    .line 3
    invoke-virtual {v0, p2}, Lb/c/a/a/l/o;->h(I)Lb/c/a/a/l/o;

    move-result-object p2

    iget-object v0, p1, Lb/c/a/a/l/r$a;->u:Landroid/widget/TextView;

    .line 4
    iget-object v1, p2, Lb/c/a/a/l/o;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lb/c/a/a/l/r$a;->v:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lb/c/a/a/l/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lb/c/a/a/l/p;

    move-result-object v0

    iget-object v0, v0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    invoke-virtual {p2, v0}, Lb/c/a/a/l/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lb/c/a/a/l/p;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/a/a/l/p;

    iget-object v1, p0, Lb/c/a/a/l/r;->d:Lb/c/a/a/l/d;

    iget-object v2, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    invoke-direct {v0, p2, v1, v2}, Lb/c/a/a/l/p;-><init>(Lb/c/a/a/l/o;Lb/c/a/a/l/d;Lb/c/a/a/l/a;)V

    iget p2, p2, Lb/c/a/a/l/o;->f:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    new-instance p2, Lb/c/a/a/l/q;

    invoke-direct {p2, p0, p1}, Lb/c/a/a/l/q;-><init>(Lb/c/a/a/l/r;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0039

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/c/a/a/l/n;->T(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v0, -0x1

    iget v1, p0, Lb/c/a/a/l/r;->f:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lb/c/a/a/l/r$a;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lb/c/a/a/l/r$a;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lb/c/a/a/l/r$a;

    invoke-direct {p1, p2, v1}, Lb/c/a/a/l/r$a;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p1
.end method

.method public e(I)Lb/c/a/a/l/o;
    .locals 1

    iget-object v0, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    .line 1
    iget-object v0, v0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    .line 2
    invoke-virtual {v0, p1}, Lb/c/a/a/l/o;->h(I)Lb/c/a/a/l/o;

    move-result-object p1

    return-object p1
.end method

.method public f(Lb/c/a/a/l/o;)I
    .locals 1

    iget-object v0, p0, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    .line 1
    iget-object v0, v0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    .line 2
    invoke-virtual {v0, p1}, Lb/c/a/a/l/o;->i(Lb/c/a/a/l/o;)I

    move-result p1

    return p1
.end method
