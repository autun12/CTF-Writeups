.class public final Lb/b/a/l/t/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/t/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/t/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/t/e$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lb/b/a/l/t/e;
    .locals 1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1
    new-instance v0, Lb/b/a/l/t/m;

    invoke-direct {v0, p1}, Lb/b/a/l/t/m;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method
