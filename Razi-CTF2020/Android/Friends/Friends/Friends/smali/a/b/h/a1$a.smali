.class public La/b/h/a1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/h/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/b/h/a1;


# direct methods
.method public constructor <init>(La/b/h/a1;)V
    .locals 0

    iput-object p1, p0, La/b/h/a1$a;->b:La/b/h/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/b/h/a1$a;->b:La/b/h/a1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/b/h/a1;->d(Z)V

    return-void
.end method
