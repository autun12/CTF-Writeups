.class public La/h/g/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/h/g/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h/g/f$c<",
        "La/h/g/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/h/c/b/g;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(La/h/c/b/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, La/h/g/c;->a:La/h/c/b/g;

    iput-object p2, p0, La/h/g/c;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, La/h/g/e$d;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, La/h/g/c;->a:La/h/c/b/g;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, La/h/g/e$d;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/h/g/c;->a:La/h/c/b/g;

    iget-object p1, p1, La/h/g/e$d;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, La/h/g/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, La/h/c/b/g;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, La/h/g/c;->a:La/h/c/b/g;

    :goto_0
    iget-object v1, p0, La/h/g/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, La/h/c/b/g;->a(ILandroid/os/Handler;)V

    :goto_1
    return-void
.end method
