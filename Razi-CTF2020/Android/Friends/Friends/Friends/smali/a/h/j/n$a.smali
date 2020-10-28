.class public La/h/j/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/j/n;->s(Landroid/view/View;La/h/j/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/h/j/k;


# direct methods
.method public constructor <init>(La/h/j/k;)V
    .locals 0

    iput-object p1, p0, La/h/j/n$a;->a:La/h/j/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    new-instance v0, La/h/j/w;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p2}, La/h/j/w;-><init>(Landroid/view/WindowInsets;)V

    .line 4
    iget-object p2, p0, La/h/j/n$a;->a:La/h/j/k;

    invoke-interface {p2, p1, v0}, La/h/j/k;->a(Landroid/view/View;La/h/j/w;)La/h/j/w;

    move-result-object p1

    invoke-virtual {p1}, La/h/j/w;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
