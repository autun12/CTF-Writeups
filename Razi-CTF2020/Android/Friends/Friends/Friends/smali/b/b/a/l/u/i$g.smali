.class public final enum Lb/b/a/l/u/i$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/u/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/b/a/l/u/i$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/b/a/l/u/i$g;

.field public static final enum c:Lb/b/a/l/u/i$g;

.field public static final enum d:Lb/b/a/l/u/i$g;

.field public static final enum e:Lb/b/a/l/u/i$g;

.field public static final enum f:Lb/b/a/l/u/i$g;

.field public static final enum g:Lb/b/a/l/u/i$g;

.field public static final synthetic h:[Lb/b/a/l/u/i$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lb/b/a/l/u/i$g;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/a/l/u/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/l/u/i$g;->b:Lb/b/a/l/u/i$g;

    new-instance v1, Lb/b/a/l/u/i$g;

    const-string v3, "RESOURCE_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/b/a/l/u/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/b/a/l/u/i$g;->c:Lb/b/a/l/u/i$g;

    new-instance v3, Lb/b/a/l/u/i$g;

    const-string v5, "DATA_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/b/a/l/u/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/b/a/l/u/i$g;->d:Lb/b/a/l/u/i$g;

    new-instance v5, Lb/b/a/l/u/i$g;

    const-string v7, "SOURCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb/b/a/l/u/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb/b/a/l/u/i$g;->e:Lb/b/a/l/u/i$g;

    new-instance v7, Lb/b/a/l/u/i$g;

    const-string v9, "ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb/b/a/l/u/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb/b/a/l/u/i$g;->f:Lb/b/a/l/u/i$g;

    new-instance v9, Lb/b/a/l/u/i$g;

    const-string v11, "FINISHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lb/b/a/l/u/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lb/b/a/l/u/i$g;->g:Lb/b/a/l/u/i$g;

    const/4 v11, 0x6

    new-array v11, v11, [Lb/b/a/l/u/i$g;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lb/b/a/l/u/i$g;->h:[Lb/b/a/l/u/i$g;

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

.method public static valueOf(Ljava/lang/String;)Lb/b/a/l/u/i$g;
    .locals 1

    const-class v0, Lb/b/a/l/u/i$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/b/a/l/u/i$g;

    return-object p0
.end method

.method public static values()[Lb/b/a/l/u/i$g;
    .locals 1

    sget-object v0, Lb/b/a/l/u/i$g;->h:[Lb/b/a/l/u/i$g;

    invoke-virtual {v0}, [Lb/b/a/l/u/i$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/b/a/l/u/i$g;

    return-object v0
.end method
