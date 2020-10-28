.class public La/h/d/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/h/d/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/d/j;->f([La/h/g/e$c;I)La/h/g/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h/d/j$b<",
        "La/h/g/e$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/h/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La/h/g/e$c;

    .line 1
    iget p1, p1, La/h/g/e$c;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, La/h/g/e$c;

    .line 1
    iget-boolean p1, p1, La/h/g/e$c;->d:Z

    return p1
.end method
