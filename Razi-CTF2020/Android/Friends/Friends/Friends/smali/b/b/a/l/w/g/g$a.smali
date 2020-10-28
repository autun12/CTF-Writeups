.class public Lb/b/a/l/w/g/g$a;
.super Lb/b/a/p/h/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/w/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/p/h/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Landroid/os/Handler;

.field public final f:I

.field public final g:J

.field public h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/p/h/c;-><init>()V

    iput-object p1, p0, Lb/b/a/l/w/g/g$a;->e:Landroid/os/Handler;

    iput p2, p0, Lb/b/a/l/w/g/g$a;->f:I

    iput-wide p3, p0, Lb/b/a/l/w/g/g$a;->g:J

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/a/l/w/g/g$a;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public j(Ljava/lang/Object;Lb/b/a/p/i/b;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1
    iput-object p1, p0, Lb/b/a/l/w/g/g$a;->h:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lb/b/a/l/w/g/g$a;->e:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lb/b/a/l/w/g/g$a;->e:Landroid/os/Handler;

    iget-wide v0, p0, Lb/b/a/l/w/g/g$a;->g:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
