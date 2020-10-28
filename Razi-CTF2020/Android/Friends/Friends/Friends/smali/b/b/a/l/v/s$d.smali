.class public Lb/b/a/l/v/s$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/s$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public b(Lb/b/a/l/v/r;)Lb/b/a/l/v/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/r;",
            ")",
            "Lb/b/a/l/v/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Lb/b/a/l/v/s;

    iget-object v0, p0, Lb/b/a/l/v/s$d;->a:Landroid/content/res/Resources;

    sget-object v1, Lb/b/a/l/v/v;->a:Lb/b/a/l/v/v;

    invoke-direct {p1, v0, v1}, Lb/b/a/l/v/s;-><init>(Landroid/content/res/Resources;Lb/b/a/l/v/n;)V

    return-object p1
.end method
