.class public Lb/c/a/a/p/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/p/h$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Lb/c/a/a/r/d;

.field public c:F

.field public d:Z

.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/c/a/a/p/h$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lb/c/a/a/r/b;


# direct methods
.method public constructor <init>(Lb/c/a/a/p/h$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lb/c/a/a/p/h;->a:Landroid/text/TextPaint;

    new-instance v0, Lb/c/a/a/p/h$a;

    invoke-direct {v0, p0}, Lb/c/a/a/p/h$a;-><init>(Lb/c/a/a/p/h;)V

    iput-object v0, p0, Lb/c/a/a/p/h;->b:Lb/c/a/a/r/d;

    iput-boolean v1, p0, Lb/c/a/a/p/h;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/c/a/a/p/h;->e:Ljava/lang/ref/WeakReference;

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/c/a/a/p/h;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 3

    iget-boolean v0, p0, Lb/c/a/a/p/h;->d:Z

    if-nez v0, :cond_0

    iget p1, p0, Lb/c/a/a/p/h;->c:F

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_1
    iget-object v1, p0, Lb/c/a/a/p/h;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 2
    :goto_0
    iput p1, p0, Lb/c/a/a/p/h;->c:F

    iput-boolean v0, p0, Lb/c/a/a/p/h;->d:Z

    return p1
.end method