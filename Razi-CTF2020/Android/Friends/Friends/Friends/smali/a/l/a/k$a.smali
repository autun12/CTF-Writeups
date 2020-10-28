.class public La/l/a/k$a;
.super La/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/l/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:La/l/a/k;


# direct methods
.method public constructor <init>(La/l/a/k;Z)V
    .locals 0

    iput-object p1, p0, La/l/a/k$a;->c:La/l/a/k;

    invoke-direct {p0, p2}, La/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, La/l/a/k$a;->c:La/l/a/k;

    .line 1
    invoke-virtual {v0}, La/l/a/k;->P()Z

    iget-object v1, v0, La/l/a/k;->l:La/a/b;

    .line 2
    iget-boolean v1, v1, La/a/b;->a:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, La/l/a/k;->d()Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, La/l/a/k;->k:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method
