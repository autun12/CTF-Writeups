.class public Landroidx/activity/ComponentActivity;
.super La/h/b/g;
.source ""

# interfaces
.implements La/n/g;
.implements La/n/t;
.implements La/q/c;
.implements La/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$b;
    }
.end annotation


# instance fields
.field public final c:La/n/h;

.field public final d:La/q/b;

.field public e:La/n/s;

.field public final f:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, La/h/b/g;-><init>()V

    new-instance v0, La/n/h;

    invoke-direct {v0, p0}, La/n/h;-><init>(La/n/g;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->c:La/n/h;

    .line 1
    new-instance v1, La/q/b;

    invoke-direct {v1, p0}, La/q/b;-><init>(La/q/c;)V

    .line 2
    iput-object v1, p0, Landroidx/activity/ComponentActivity;->d:La/q/b;

    new-instance v1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v2, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, La/n/h;->a(La/n/f;)V

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, La/n/h;->a(La/n/f;)V

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, La/n/h;->a(La/n/f;)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public a()La/n/d;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:La/n/h;

    return-object v0
.end method

.method public final c()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final d()La/q/a;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:La/q/b;

    .line 1
    iget-object v0, v0, La/q/b;->b:La/q/a;

    return-object v0
.end method

.method public e()La/n/s;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:La/n/s;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/ComponentActivity$b;->a:La/n/s;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:La/n/s;

    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:La/n/s;

    if-nez v0, :cond_1

    new-instance v0, La/n/s;

    invoke-direct {v0}, La/n/s;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:La/n/s;

    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:La/n/s;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, La/h/b/g;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:La/q/b;

    invoke-virtual {v0, p1}, La/q/b;->a(Landroid/os/Bundle;)V

    invoke-static {p0}, La/n/o;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:La/n/s;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/ComponentActivity$b;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:La/n/s;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Landroidx/activity/ComponentActivity$b;

    invoke-direct {v1}, Landroidx/activity/ComponentActivity$b;-><init>()V

    iput-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:La/n/s;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:La/n/h;

    .line 2
    instance-of v1, v0, La/n/h;

    if-eqz v1, :cond_0

    sget-object v1, La/n/d$b;->d:La/n/d$b;

    .line 3
    invoke-virtual {v0, v1}, La/n/h;->f(La/n/d$b;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, La/h/b/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:La/q/b;

    invoke-virtual {v0, p1}, La/q/b;->b(Landroid/os/Bundle;)V

    return-void
.end method
