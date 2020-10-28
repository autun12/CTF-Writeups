.class public final Lb/b/a/q/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/m;


# static fields
.field public static final b:Lb/b/a/q/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/q/a;

    invoke-direct {v0}, Lb/b/a/q/a;-><init>()V

    sput-object v0, Lb/b/a/q/a;->b:Lb/b/a/q/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
