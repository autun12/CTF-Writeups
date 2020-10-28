.class public abstract La/l/a/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:La/l/a/h;


# instance fields
.field public b:La/l/a/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/l/a/h;

    invoke-direct {v0}, La/l/a/h;-><init>()V

    sput-object v0, La/l/a/j;->c:La/l/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/l/a/j;->b:La/l/a/h;

    return-void
.end method


# virtual methods
.method public abstract a()La/l/a/r;
.end method

.method public abstract b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Z
.end method
