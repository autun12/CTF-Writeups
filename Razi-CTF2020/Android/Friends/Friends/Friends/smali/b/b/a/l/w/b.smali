.class public final Lb/b/a/l/w/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/s<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lb/b/a/l/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/s<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/w/b;

    invoke-direct {v0}, Lb/b/a/l/w/b;-><init>()V

    sput-object v0, Lb/b/a/l/w/b;->b:Lb/b/a/l/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lb/b/a/l/u/w;II)Lb/b/a/l/u/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/b/a/l/u/w<",
            "TT;>;II)",
            "Lb/b/a/l/u/w<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public b(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
