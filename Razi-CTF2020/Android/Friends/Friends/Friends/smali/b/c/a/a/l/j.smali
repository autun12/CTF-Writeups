.class public Lb/c/a/a/l/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lb/c/a/a/l/f;


# direct methods
.method public constructor <init>(Lb/c/a/a/l/f;)V
    .locals 0

    iput-object p1, p0, Lb/c/a/a/l/j;->b:Lb/c/a/a/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lb/c/a/a/l/j;->b:Lb/c/a/a/l/f;

    .line 1
    sget-object v0, Lb/c/a/a/l/f$e;->b:Lb/c/a/a/l/f$e;

    iget-object v1, p1, Lb/c/a/a/l/f;->Z:Lb/c/a/a/l/f$e;

    sget-object v2, Lb/c/a/a/l/f$e;->c:Lb/c/a/a/l/f$e;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lb/c/a/a/l/f;->W(Lb/c/a/a/l/f$e;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p1, v2}, Lb/c/a/a/l/f;->W(Lb/c/a/a/l/f$e;)V

    :cond_1
    :goto_0
    return-void
.end method
