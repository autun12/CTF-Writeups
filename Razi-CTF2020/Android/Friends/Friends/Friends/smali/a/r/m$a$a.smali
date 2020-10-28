.class public La/r/m$a$a;
.super La/r/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/r/m$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/e/a;

.field public final synthetic b:La/r/m$a;


# direct methods
.method public constructor <init>(La/r/m$a;La/e/a;)V
    .locals 0

    iput-object p1, p0, La/r/m$a$a;->b:La/r/m$a;

    iput-object p2, p0, La/r/m$a$a;->a:La/e/a;

    invoke-direct {p0}, La/r/l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(La/r/i;)V
    .locals 2

    iget-object v0, p0, La/r/m$a$a;->a:La/e/a;

    iget-object v1, p0, La/r/m$a$a;->b:La/r/m$a;

    iget-object v1, v1, La/r/m$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, La/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, La/r/i;->v(La/r/i$d;)La/r/i;

    return-void
.end method
