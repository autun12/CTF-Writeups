.class public Lrazi/apa/ctf/friends/bjkm8kjkk;
.super La/b/c/h;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/c/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, La/b/c/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, La/b/c/h;->setContentView(I)V

    const p1, 0x7f0800e4

    invoke-virtual {p0, p1}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080090

    invoke-virtual {p0, v1}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080045

    invoke-virtual {p0, v2}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800a1

    invoke-virtual {p0, v3}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08016a

    invoke-virtual {p0, v4}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "address"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "email"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "age"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "gender"

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/b/a/b;->d(Landroid/content/Context;)Lb/b/a/h;

    move-result-object p1

    const-string v0, "avatar"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 3
    new-instance v2, Lb/b/a/g;

    iget-object v3, p1, Lb/b/a/h;->b:Lb/b/a/b;

    iget-object v5, p1, Lb/b/a/h;->c:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1, v5}, Lb/b/a/g;-><init>(Lb/b/a/b;Lb/b/a/h;Ljava/lang/Class;Landroid/content/Context;)V

    .line 4
    iput-object v0, v2, Lb/b/a/g;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v2, Lb/b/a/g;->J:Z

    .line 5
    invoke-virtual {v2, v4}, Lb/b/a/g;->s(Landroid/widget/ImageView;)Lb/b/a/p/h/i;

    return-void
.end method
