.class public final Lb/b/a/l/w/g/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lb/b/a/l/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/n<",
            "Lb/b/a/l/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb/b/a/l/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lb/b/a/l/b;->b:Lb/b/a/l/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lb/b/a/l/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/b/a/l/n;

    move-result-object v0

    sput-object v0, Lb/b/a/l/w/g/i;->a:Lb/b/a/l/n;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lb/b/a/l/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/b/a/l/n;

    move-result-object v0

    sput-object v0, Lb/b/a/l/w/g/i;->b:Lb/b/a/l/n;

    return-void
.end method
