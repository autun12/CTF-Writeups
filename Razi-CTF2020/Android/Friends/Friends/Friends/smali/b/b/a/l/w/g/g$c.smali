.class public Lb/b/a/l/w/g/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/w/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/l/w/g/g;


# direct methods
.method public constructor <init>(Lb/b/a/l/w/g/g;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/l/w/g/g$c;->a:Lb/b/a/l/w/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/b/a/l/w/g/g$a;

    iget-object v0, p0, Lb/b/a/l/w/g/g$c;->a:Lb/b/a/l/w/g/g;

    invoke-virtual {v0, p1}, Lb/b/a/l/w/g/g;->b(Lb/b/a/l/w/g/g$a;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/b/a/l/w/g/g$a;

    iget-object v0, p0, Lb/b/a/l/w/g/g$c;->a:Lb/b/a/l/w/g/g;

    iget-object v0, v0, Lb/b/a/l/w/g/g;->d:Lb/b/a/h;

    invoke-virtual {v0, p1}, Lb/b/a/h;->l(Lb/b/a/p/h/h;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
