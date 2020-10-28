.class public Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrazi/apa/ctf/friends/fsdfdsc3423qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public u:Landroid/widget/TextView;

.field public v:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final synthetic w:Lrazi/apa/ctf/friends/fsdfdsc3423qd;


# direct methods
.method public constructor <init>(Lrazi/apa/ctf/friends/fsdfdsc3423qd;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->w:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0800e4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->u:Landroid/widget/TextView;

    const p1, 0x7f0800fe

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->w:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    .line 1
    iget-object p1, p1, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->e:Lrazi/apa/ctf/friends/fsdfdsc3423qd$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->e()I

    move-result v0

    iget-object v1, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->w:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    iget-object v1, v1, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->g:Ljava/lang/String;

    check-cast p1, Lrazi/apa/ctf/friends/cdf45;

    .line 3
    iget-object v2, p1, Lrazi/apa/ctf/friends/cdf45;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/a/a/a;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lrazi/apa/ctf/friends/bjkm8kjkk;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v3, v0, Ld/a/a/a/a;->a:Ljava/lang/String;

    const-string v4, "name"

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v3, v0, Ld/a/a/a/a;->d:Ljava/lang/String;

    const-string v4, "address"

    .line 7
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v3, v0, Ld/a/a/a/a;->b:Ljava/lang/String;

    const-string v4, "email"

    .line 9
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, v0, Ld/a/a/a/a;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "avatar"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v1, v0, Ld/a/a/a/a;->f:Ljava/lang/String;

    const-string v3, "age"

    .line 13
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v0, v0, Ld/a/a/a/a;->e:Ljava/lang/String;

    const-string v1, "gender"

    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
