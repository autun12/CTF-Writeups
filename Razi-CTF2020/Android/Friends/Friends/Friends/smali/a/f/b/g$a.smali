.class public final enum La/f/b/g$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/f/b/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/f/b/g$a;

.field public static final enum c:La/f/b/g$a;

.field public static final enum d:La/f/b/g$a;

.field public static final enum e:La/f/b/g$a;

.field public static final enum f:La/f/b/g$a;

.field public static final synthetic g:[La/f/b/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, La/f/b/g$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/f/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/f/b/g$a;->b:La/f/b/g$a;

    new-instance v1, La/f/b/g$a;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/f/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/b/g$a;->c:La/f/b/g$a;

    new-instance v3, La/f/b/g$a;

    const-string v5, "SLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/f/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/f/b/g$a;->d:La/f/b/g$a;

    new-instance v5, La/f/b/g$a;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La/f/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/f/b/g$a;->e:La/f/b/g$a;

    new-instance v7, La/f/b/g$a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, La/f/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/f/b/g$a;->f:La/f/b/g$a;

    const/4 v9, 0x5

    new-array v9, v9, [La/f/b/g$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, La/f/b/g$a;->g:[La/f/b/g$a;

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

.method public static valueOf(Ljava/lang/String;)La/f/b/g$a;
    .locals 1

    const-class v0, La/f/b/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/f/b/g$a;

    return-object p0
.end method

.method public static values()[La/f/b/g$a;
    .locals 1

    sget-object v0, La/f/b/g$a;->g:[La/f/b/g$a;

    invoke-virtual {v0}, [La/f/b/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/f/b/g$a;

    return-object v0
.end method
