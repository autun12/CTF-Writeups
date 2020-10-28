.class public La/b/h/w$d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/h/w$d;->f(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/b/h/w$d;


# direct methods
.method public constructor <init>(La/b/h/w$d;)V
    .locals 0

    iput-object p1, p0, La/b/h/w$d$b;->b:La/b/h/w$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, La/b/h/w$d$b;->b:La/b/h/w$d;

    iget-object v1, v0, La/b/h/w$d;->I:La/b/h/w;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, La/h/j/n;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, v0, La/b/h/w$d;->G:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, La/b/h/w$d$b;->b:La/b/h/w$d;

    invoke-virtual {v0}, La/b/h/k0;->dismiss()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, La/b/h/w$d$b;->b:La/b/h/w$d;

    invoke-virtual {v0}, La/b/h/w$d;->t()V

    iget-object v0, p0, La/b/h/w$d$b;->b:La/b/h/w$d;

    .line 5
    invoke-virtual {v0}, La/b/h/k0;->i()V

    :goto_1
    return-void
.end method
