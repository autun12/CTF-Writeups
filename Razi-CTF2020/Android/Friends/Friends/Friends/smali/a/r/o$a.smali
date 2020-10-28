.class public La/r/o$a;
.super La/r/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/r/o;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/r/i;


# direct methods
.method public constructor <init>(La/r/o;La/r/i;)V
    .locals 0

    iput-object p2, p0, La/r/o$a;->a:La/r/i;

    invoke-direct {p0}, La/r/l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(La/r/i;)V
    .locals 1

    iget-object v0, p0, La/r/o$a;->a:La/r/i;

    invoke-virtual {v0}, La/r/i;->y()V

    invoke-virtual {p1, p0}, La/r/i;->v(La/r/i$d;)La/r/i;

    return-void
.end method
