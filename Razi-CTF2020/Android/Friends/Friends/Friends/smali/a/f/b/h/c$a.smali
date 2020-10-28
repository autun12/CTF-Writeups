.class public final enum La/f/b/h/c$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/b/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/f/b/h/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/f/b/h/c$a;

.field public static final enum c:La/f/b/h/c$a;

.field public static final enum d:La/f/b/h/c$a;

.field public static final enum e:La/f/b/h/c$a;

.field public static final enum f:La/f/b/h/c$a;

.field public static final enum g:La/f/b/h/c$a;

.field public static final enum h:La/f/b/h/c$a;

.field public static final enum i:La/f/b/h/c$a;

.field public static final enum j:La/f/b/h/c$a;

.field public static final synthetic k:[La/f/b/h/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, La/f/b/h/c$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/f/b/h/c$a;->b:La/f/b/h/c$a;

    new-instance v1, La/f/b/h/c$a;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/f/b/h/c$a;->c:La/f/b/h/c$a;

    new-instance v3, La/f/b/h/c$a;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/f/b/h/c$a;->d:La/f/b/h/c$a;

    new-instance v5, La/f/b/h/c$a;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/f/b/h/c$a;->e:La/f/b/h/c$a;

    new-instance v7, La/f/b/h/c$a;

    const-string v9, "BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/f/b/h/c$a;->f:La/f/b/h/c$a;

    new-instance v9, La/f/b/h/c$a;

    const-string v11, "BASELINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, La/f/b/h/c$a;->g:La/f/b/h/c$a;

    new-instance v11, La/f/b/h/c$a;

    const-string v13, "CENTER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, La/f/b/h/c$a;->h:La/f/b/h/c$a;

    new-instance v13, La/f/b/h/c$a;

    const-string v15, "CENTER_X"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, La/f/b/h/c$a;->i:La/f/b/h/c$a;

    new-instance v15, La/f/b/h/c$a;

    const-string v14, "CENTER_Y"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, La/f/b/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, La/f/b/h/c$a;->j:La/f/b/h/c$a;

    const/16 v14, 0x9

    new-array v14, v14, [La/f/b/h/c$a;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, La/f/b/h/c$a;->k:[La/f/b/h/c$a;

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

.method public static valueOf(Ljava/lang/String;)La/f/b/h/c$a;
    .locals 1

    const-class v0, La/f/b/h/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/f/b/h/c$a;

    return-object p0
.end method

.method public static values()[La/f/b/h/c$a;
    .locals 1

    sget-object v0, La/f/b/h/c$a;->k:[La/f/b/h/c$a;

    invoke-virtual {v0}, [La/f/b/h/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/f/b/h/c$a;

    return-object v0
.end method
