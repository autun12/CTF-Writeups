.class public final enum Lb/b/a/l/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/b/a/l/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/b/a/l/a;

.field public static final enum c:Lb/b/a/l/a;

.field public static final enum d:Lb/b/a/l/a;

.field public static final enum e:Lb/b/a/l/a;

.field public static final enum f:Lb/b/a/l/a;

.field public static final synthetic g:[Lb/b/a/l/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lb/b/a/l/a;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/a/l/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/l/a;->b:Lb/b/a/l/a;

    new-instance v1, Lb/b/a/l/a;

    const-string v3, "REMOTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/b/a/l/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/b/a/l/a;->c:Lb/b/a/l/a;

    new-instance v3, Lb/b/a/l/a;

    const-string v5, "DATA_DISK_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/b/a/l/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/b/a/l/a;->d:Lb/b/a/l/a;

    new-instance v5, Lb/b/a/l/a;

    const-string v7, "RESOURCE_DISK_CACHE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb/b/a/l/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb/b/a/l/a;->e:Lb/b/a/l/a;

    new-instance v7, Lb/b/a/l/a;

    const-string v9, "MEMORY_CACHE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb/b/a/l/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb/b/a/l/a;->f:Lb/b/a/l/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lb/b/a/l/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lb/b/a/l/a;->g:[Lb/b/a/l/a;

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

.method public static valueOf(Ljava/lang/String;)Lb/b/a/l/a;
    .locals 1

    const-class v0, Lb/b/a/l/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/b/a/l/a;

    return-object p0
.end method

.method public static values()[Lb/b/a/l/a;
    .locals 1

    sget-object v0, Lb/b/a/l/a;->g:[Lb/b/a/l/a;

    invoke-virtual {v0}, [Lb/b/a/l/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/a/l/a;

    return-object v0
.end method
