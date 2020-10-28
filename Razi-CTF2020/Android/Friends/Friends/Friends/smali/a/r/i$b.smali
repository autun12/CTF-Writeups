.class public La/r/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/r/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:La/r/q;

.field public d:La/r/d0;

.field public e:La/r/i;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;La/r/i;La/r/d0;La/r/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/r/i$b;->a:Landroid/view/View;

    iput-object p2, p0, La/r/i$b;->b:Ljava/lang/String;

    iput-object p5, p0, La/r/i$b;->c:La/r/q;

    iput-object p4, p0, La/r/i$b;->d:La/r/d0;

    iput-object p3, p0, La/r/i$b;->e:La/r/i;

    return-void
.end method
