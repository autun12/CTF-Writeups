.class public final enum Lb/b/a/l/p;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/b/a/l/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/b/a/l/p;

.field public static final enum c:Lb/b/a/l/p;

.field public static final synthetic d:[Lb/b/a/l/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lb/b/a/l/p;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/a/l/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/l/p;->b:Lb/b/a/l/p;

    new-instance v1, Lb/b/a/l/p;

    const-string v3, "DISPLAY_P3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/b/a/l/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/b/a/l/p;->c:Lb/b/a/l/p;

    const/4 v3, 0x2

    new-array v3, v3, [Lb/b/a/l/p;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lb/b/a/l/p;->d:[Lb/b/a/l/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/b/a/l/p;
    .locals 1

    const-class v0, Lb/b/a/l/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/b/a/l/p;

    return-object p0
.end method

.method public static values()[Lb/b/a/l/p;
    .locals 1

    sget-object v0, Lb/b/a/l/p;->d:[Lb/b/a/l/p;

    invoke-virtual {v0}, [Lb/b/a/l/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/a/l/p;

    return-object v0
.end method
