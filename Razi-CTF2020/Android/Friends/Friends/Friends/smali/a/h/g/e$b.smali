.class public La/h/g/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[La/h/g/e$c;


# direct methods
.method public constructor <init>(I[La/h/g/e$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/h/g/e$b;->a:I

    iput-object p2, p0, La/h/g/e$b;->b:[La/h/g/e$c;

    return-void
.end method
