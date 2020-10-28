.class public Lb/a/b/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lb/a/b/o;

.field public final c:Lb/a/b/q;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lb/a/b/o;Lb/a/b/q;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/g$b;->b:Lb/a/b/o;

    iput-object p2, p0, Lb/a/b/g$b;->c:Lb/a/b/q;

    iput-object p3, p0, Lb/a/b/g$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/a/b/g$b;->b:Lb/a/b/o;

    invoke-virtual {v0}, Lb/a/b/o;->h()Z

    iget-object v0, p0, Lb/a/b/g$b;->c:Lb/a/b/q;

    .line 1
    iget-object v1, v0, Lb/a/b/q;->c:Lb/a/b/u;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    iget-object v1, p0, Lb/a/b/g$b;->b:Lb/a/b/o;

    iget-object v0, v0, Lb/a/b/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lb/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/a/b/g$b;->b:Lb/a/b/o;

    .line 3
    iget-object v3, v0, Lb/a/b/o;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lb/a/b/o;->g:Lb/a/b/q$a;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    check-cast v0, Lrazi/apa/ctf/friends/cdf45$b;

    .line 4
    iget-object v0, v0, Lrazi/apa/ctf/friends/cdf45$b;->a:Lrazi/apa/ctf/friends/cdf45;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lb/a/b/g$b;->c:Lb/a/b/q;

    iget-boolean v0, v0, Lb/a/b/q;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/b/g$b;->b:Lb/a/b/o;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lb/a/b/o;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lb/a/b/g$b;->b:Lb/a/b/o;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lb/a/b/o;->c(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lb/a/b/g$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
