.class public La/k/a/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/k/a/a$c;->b:Ljava/lang/String;

    iput p2, p0, La/k/a/a$c;->a:I

    iput p3, p0, La/k/a/a$c;->c:I

    const/4 p1, -0x1

    iput p1, p0, La/k/a/a$c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/k/a/a$c;->b:Ljava/lang/String;

    iput p2, p0, La/k/a/a$c;->a:I

    iput p3, p0, La/k/a/a$c;->c:I

    iput p4, p0, La/k/a/a$c;->d:I

    return-void
.end method
