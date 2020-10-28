.class public Lb/b/a/l/v/f$e;
.super Lb/b/a/l/v/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/l/v/f$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/b/a/l/v/f$e$a;

    invoke-direct {v0}, Lb/b/a/l/v/f$e$a;-><init>()V

    invoke-direct {p0, v0}, Lb/b/a/l/v/f$a;-><init>(Lb/b/a/l/v/f$d;)V

    return-void
.end method
