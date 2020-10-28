.class public Lb/c/a/a/l/i;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source ""


# instance fields
.field public final synthetic a:Lb/c/a/a/l/r;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lb/c/a/a/l/f;


# direct methods
.method public constructor <init>(Lb/c/a/a/l/f;Lb/c/a/a/l/r;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/l/i;->c:Lb/c/a/a/l/f;

    iput-object p2, p0, Lb/c/a/a/l/i;->a:Lb/c/a/a/l/r;

    iput-object p3, p0, Lb/c/a/a/l/i;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lb/c/a/a/l/i;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lb/c/a/a/l/i;->c:Lb/c/a/a/l/f;

    invoke-virtual {p1}, Lb/c/a/a/l/f;->T()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lb/c/a/a/l/i;->c:Lb/c/a/a/l/f;

    iget-object p3, p0, Lb/c/a/a/l/i;->a:Lb/c/a/a/l/r;

    invoke-virtual {p3, p1}, Lb/c/a/a/l/r;->e(I)Lb/c/a/a/l/o;

    move-result-object p3

    .line 1
    iput-object p3, p2, Lb/c/a/a/l/f;->Y:Lb/c/a/a/l/o;

    .line 2
    iget-object p2, p0, Lb/c/a/a/l/i;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lb/c/a/a/l/i;->a:Lb/c/a/a/l/r;

    .line 3
    iget-object p3, p3, Lb/c/a/a/l/r;->c:Lb/c/a/a/l/a;

    .line 4
    iget-object p3, p3, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    .line 5
    invoke-virtual {p3, p1}, Lb/c/a/a/l/o;->h(I)Lb/c/a/a/l/o;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lb/c/a/a/l/o;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
