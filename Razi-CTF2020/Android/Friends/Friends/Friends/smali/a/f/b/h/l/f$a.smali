.class public final enum La/f/b/h/l/f$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/b/h/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/f/b/h/l/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/f/b/h/l/f$a;

.field public static final enum c:La/f/b/h/l/f$a;

.field public static final enum d:La/f/b/h/l/f$a;

.field public static final enum e:La/f/b/h/l/f$a;

.field public static final enum f:La/f/b/h/l/f$a;

.field public static final enum g:La/f/b/h/l/f$a;

.field public static final enum h:La/f/b/h/l/f$a;

.field public static final enum i:La/f/b/h/l/f$a;

.field public static final synthetic j:[La/f/b/h/l/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, La/f/b/h/l/f$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/f/b/h/l/f$a;->b:La/f/b/h/l/f$a;

    new-instance v1, La/f/b/h/l/f$a;

    const-string v3, "HORIZONTAL_DIMENSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/b/h/l/f$a;->c:La/f/b/h/l/f$a;

    new-instance v3, La/f/b/h/l/f$a;

    const-string v5, "VERTICAL_DIMENSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/f/b/h/l/f$a;->d:La/f/b/h/l/f$a;

    new-instance v5, La/f/b/h/l/f$a;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/f/b/h/l/f$a;->e:La/f/b/h/l/f$a;

    new-instance v7, La/f/b/h/l/f$a;

    const-string v9, "RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/f/b/h/l/f$a;->f:La/f/b/h/l/f$a;

    new-instance v9, La/f/b/h/l/f$a;

    const-string v11, "TOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, La/f/b/h/l/f$a;->g:La/f/b/h/l/f$a;

    new-instance v11, La/f/b/h/l/f$a;

    const-string v13, "BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, La/f/b/h/l/f$a;->h:La/f/b/h/l/f$a;

    new-instance v13, La/f/b/h/l/f$a;

    const-string v15, "BASELINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, La/f/b/h/l/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, La/f/b/h/l/f$a;->i:La/f/b/h/l/f$a;

    const/16 v15, 0x8

    new-array v15, v15, [La/f/b/h/l/f$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, La/f/b/h/l/f$a;->j:[La/f/b/h/l/f$a;

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

.method public static valueOf(Ljava/lang/String;)La/f/b/h/l/f$a;
    .locals 1

    const-class v0, La/f/b/h/l/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/f/b/h/l/f$a;

    return-object p0
.end method

.method public static values()[La/f/b/h/l/f$a;
    .locals 1

    sget-object v0, La/f/b/h/l/f$a;->j:[La/f/b/h/l/f$a;

    invoke-virtual {v0}, [La/f/b/h/l/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/f/b/h/l/f$a;

    return-object v0
.end method