.class public La/l/a/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/l/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/l/a/k;


# direct methods
.method public constructor <init>(La/l/a/k;)V
    .locals 0

    iput-object p1, p0, La/l/a/k$b;->b:La/l/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La/l/a/k$b;->b:La/l/a/k;

    invoke-virtual {v0}, La/l/a/k;->P()Z

    return-void
.end method
