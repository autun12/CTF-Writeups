.class public Lb/b/a/l/w/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/q<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/b/a/l/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/q<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lb/b/a/l/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lb/b/a/l/q<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lb/b/a/l/w/c/a;->b:Landroid/content/res/Resources;

    iput-object p2, p0, Lb/b/a/l/w/c/a;->a:Lb/b/a/l/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lb/b/a/l/o;",
            ")",
            "Lb/b/a/l/u/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/l/w/c/a;->a:Lb/b/a/l/q;

    invoke-interface {v0, p1, p2, p3, p4}, Lb/b/a/l/q;->a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;

    move-result-object p1

    iget-object p2, p0, Lb/b/a/l/w/c/a;->b:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lb/b/a/l/w/c/u;->f(Landroid/content/res/Resources;Lb/b/a/l/u/w;)Lb/b/a/l/u/w;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lb/b/a/l/o;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lb/b/a/l/o;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/l/w/c/a;->a:Lb/b/a/l/q;

    invoke-interface {v0, p1, p2}, Lb/b/a/l/q;->b(Ljava/lang/Object;Lb/b/a/l/o;)Z

    move-result p1

    return p1
.end method
