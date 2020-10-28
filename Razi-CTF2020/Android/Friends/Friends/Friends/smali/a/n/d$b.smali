.class public final enum La/n/d$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/n/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/n/d$b;

.field public static final enum c:La/n/d$b;

.field public static final enum d:La/n/d$b;

.field public static final enum e:La/n/d$b;

.field public static final enum f:La/n/d$b;

.field public static final synthetic g:[La/n/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, La/n/d$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/n/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/n/d$b;->b:La/n/d$b;

    new-instance v1, La/n/d$b;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/n/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/n/d$b;->c:La/n/d$b;

    new-instance v3, La/n/d$b;

    const-string v5, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/n/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/n/d$b;->d:La/n/d$b;

    new-instance v5, La/n/d$b;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La/n/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/n/d$b;->e:La/n/d$b;

    new-instance v7, La/n/d$b;

    const-string v9, "RESUMED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, La/n/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/n/d$b;->f:La/n/d$b;

    const/4 v9, 0x5

    new-array v9, v9, [La/n/d$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, La/n/d$b;->g:[La/n/d$b;

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

.method public static valueOf(Ljava/lang/String;)La/n/d$b;
    .locals 1

    const-class v0, La/n/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/n/d$b;

    return-object p0
.end method

.method public static values()[La/n/d$b;
    .locals 1

    sget-object v0, La/n/d$b;->g:[La/n/d$b;

    invoke-virtual {v0}, [La/n/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/n/d$b;

    return-object v0
.end method
