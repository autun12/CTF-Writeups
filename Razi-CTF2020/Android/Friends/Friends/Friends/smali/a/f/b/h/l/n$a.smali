.class public La/f/b/h/l/n$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/b/h/l/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(La/f/b/h/l/n;La/f/b/h/d;La/f/b/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p2, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {p3, p1}, La/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {p3, p1}, La/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {p3, p1}, La/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {p3, p1}, La/f/b/d;->o(Ljava/lang/Object;)I

    iget-object p1, p2, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {p3, p1}, La/f/b/d;->o(Ljava/lang/Object;)I

    return-void
.end method
