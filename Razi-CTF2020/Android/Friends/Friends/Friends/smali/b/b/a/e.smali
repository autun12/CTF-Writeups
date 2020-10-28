.class public final enum Lb/b/a/e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/b/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/b/a/e;

.field public static final enum c:Lb/b/a/e;

.field public static final enum d:Lb/b/a/e;

.field public static final enum e:Lb/b/a/e;

.field public static final synthetic f:[Lb/b/a/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lb/b/a/e;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/e;->b:Lb/b/a/e;

    new-instance v1, Lb/b/a/e;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/b/a/e;->c:Lb/b/a/e;

    new-instance v3, Lb/b/a/e;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/b/a/e;->d:Lb/b/a/e;

    new-instance v5, Lb/b/a/e;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb/b/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb/b/a/e;->e:Lb/b/a/e;

    const/4 v7, 0x4

    new-array v7, v7, [Lb/b/a/e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lb/b/a/e;->f:[Lb/b/a/e;

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

.method public static valueOf(Ljava/lang/String;)Lb/b/a/e;
    .locals 1

    const-class v0, Lb/b/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/b/a/e;

    return-object p0
.end method

.method public static values()[Lb/b/a/e;
    .locals 1

    sget-object v0, Lb/b/a/e;->f:[Lb/b/a/e;

    invoke-virtual {v0}, [Lb/b/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/a/e;

    return-object v0
.end method
