.class public La/b/c/u$b;
.super La/h/j/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/c/u;


# direct methods
.method public constructor <init>(La/b/c/u;)V
    .locals 0

    iput-object p1, p0, La/b/c/u$b;->a:La/b/c/u;

    invoke-direct {p0}, La/h/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/b/c/u$b;->a:La/b/c/u;

    const/4 v0, 0x0

    iput-object v0, p1, La/b/c/u;->t:La/b/g/g;

    iget-object p1, p1, La/b/c/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
