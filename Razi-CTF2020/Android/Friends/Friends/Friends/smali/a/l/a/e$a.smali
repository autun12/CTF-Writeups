.class public La/l/a/e$a;
.super La/l/a/i;
.source ""

# interfaces
.implements La/n/t;
.implements La/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/l/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/l/a/i<",
        "La/l/a/e;",
        ">;",
        "La/n/t;",
        "La/a/c;"
    }
.end annotation


# instance fields
.field public final synthetic g:La/l/a/e;


# direct methods
.method public constructor <init>(La/l/a/e;)V
    .locals 0

    iput-object p1, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-direct {p0, p1}, La/l/a/i;-><init>(La/l/a/e;)V

    return-void
.end method


# virtual methods
.method public a()La/n/d;
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    iget-object v0, v0, La/l/a/e;->h:La/n/h;

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public e()La/n/s;
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->e()La/n/s;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {p1}, La/l/a/e;->l()V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, La/l/a/e$a;->g:La/l/a/e;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, La/l/a/e;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    return-object v0
.end method

.method public j()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    iget-object p1, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, La/l/a/e$a;->g:La/l/a/e;

    invoke-virtual {v0}, La/l/a/e;->m()V

    return-void
.end method
