.class public final enum La/n/d$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/n/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[La/n/d$a;

.field public static final enum ON_ANY:La/n/d$a;

.field public static final enum ON_CREATE:La/n/d$a;

.field public static final enum ON_DESTROY:La/n/d$a;

.field public static final enum ON_PAUSE:La/n/d$a;

.field public static final enum ON_RESUME:La/n/d$a;

.field public static final enum ON_START:La/n/d$a;

.field public static final enum ON_STOP:La/n/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, La/n/d$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/n/d$a;->ON_CREATE:La/n/d$a;

    new-instance v1, La/n/d$a;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/n/d$a;->ON_START:La/n/d$a;

    new-instance v3, La/n/d$a;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/n/d$a;->ON_RESUME:La/n/d$a;

    new-instance v5, La/n/d$a;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/n/d$a;->ON_PAUSE:La/n/d$a;

    new-instance v7, La/n/d$a;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/n/d$a;->ON_STOP:La/n/d$a;

    new-instance v9, La/n/d$a;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, La/n/d$a;->ON_DESTROY:La/n/d$a;

    new-instance v11, La/n/d$a;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, La/n/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, La/n/d$a;->ON_ANY:La/n/d$a;

    const/4 v13, 0x7

    new-array v13, v13, [La/n/d$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, La/n/d$a;->$VALUES:[La/n/d$a;

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

.method public static valueOf(Ljava/lang/String;)La/n/d$a;
    .locals 1

    const-class v0, La/n/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/n/d$a;

    return-object p0
.end method

.method public static values()[La/n/d$a;
    .locals 1

    sget-object v0, La/n/d$a;->$VALUES:[La/n/d$a;

    invoke-virtual {v0}, [La/n/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/n/d$a;

    return-object v0
.end method
