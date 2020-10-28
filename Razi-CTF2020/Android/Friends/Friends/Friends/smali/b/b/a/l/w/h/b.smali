.class public Lb/b/a/l/w/h/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/w/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/w/h/e<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lb/b/a/l/w/h/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/u/w;Lb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/u/w<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lb/b/a/l/o;",
            ")",
            "Lb/b/a/l/u/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lb/b/a/l/w/h/b;->a:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lb/b/a/l/w/c/u;->f(Landroid/content/res/Resources;Lb/b/a/l/u/w;)Lb/b/a/l/u/w;

    move-result-object p1

    return-object p1
.end method
