.class public Lb/c/a/a/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lb/c/a/a/c/a;->a:Landroid/animation/TimeInterpolator;

    new-instance v0, La/m/a/a/b;

    invoke-direct {v0}, La/m/a/a/b;-><init>()V

    sput-object v0, Lb/c/a/a/c/a;->b:Landroid/animation/TimeInterpolator;

    new-instance v0, La/m/a/a/a;

    invoke-direct {v0}, La/m/a/a/a;-><init>()V

    sput-object v0, Lb/c/a/a/c/a;->c:Landroid/animation/TimeInterpolator;

    new-instance v0, La/m/a/a/c;

    invoke-direct {v0}, La/m/a/a/c;-><init>()V

    sput-object v0, Lb/c/a/a/c/a;->d:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lb/c/a/a/c/a;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method
