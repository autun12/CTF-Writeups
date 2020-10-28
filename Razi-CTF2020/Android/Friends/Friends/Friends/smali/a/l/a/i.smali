.class public abstract La/l/a/i;
.super La/l/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "La/l/a/f;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:I

.field public final f:La/l/a/k;


# direct methods
.method public constructor <init>(La/l/a/e;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, La/l/a/f;-><init>()V

    new-instance v1, La/l/a/k;

    invoke-direct {v1}, La/l/a/k;-><init>()V

    iput-object v1, p0, La/l/a/i;->f:La/l/a/k;

    iput-object p1, p0, La/l/a/i;->b:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, La/h/b/f;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, La/l/a/i;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, La/h/b/f;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, La/l/a/i;->d:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, La/l/a/i;->e:I

    return-void
.end method


# virtual methods
.method public abstract g(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract i()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract j()Landroid/view/LayoutInflater;
.end method

.method public abstract k()I
.end method

.method public abstract l()Z
.end method

.method public abstract m(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract n()V
.end method
