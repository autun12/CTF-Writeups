.class public La/r/b$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/r/b;->k(Landroid/view/ViewGroup;La/r/q;La/r/q;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/r/b$i;

.field private mViewBounds:La/r/b$i;


# direct methods
.method public constructor <init>(La/r/b;La/r/b$i;)V
    .locals 0

    iput-object p2, p0, La/r/b$g;->a:La/r/b$i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, La/r/b$g;->mViewBounds:La/r/b$i;

    return-void
.end method
