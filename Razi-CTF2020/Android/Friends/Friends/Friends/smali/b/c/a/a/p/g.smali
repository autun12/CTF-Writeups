.class public final Lb/c/a/a/p/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/p/g$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/c/a/a/p/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/c/a/a/p/g$b;

.field public c:Landroid/animation/ValueAnimator;

.field public final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/c/a/a/p/g;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/c/a/a/p/g;->b:Lb/c/a/a/p/g$b;

    iput-object v0, p0, Lb/c/a/a/p/g;->c:Landroid/animation/ValueAnimator;

    new-instance v0, Lb/c/a/a/p/g$a;

    invoke-direct {v0, p0}, Lb/c/a/a/p/g$a;-><init>(Lb/c/a/a/p/g;)V

    iput-object v0, p0, Lb/c/a/a/p/g;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public a([ILandroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lb/c/a/a/p/g$b;

    invoke-direct {v0, p1, p2}, Lb/c/a/a/p/g$b;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lb/c/a/a/p/g;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lb/c/a/a/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
