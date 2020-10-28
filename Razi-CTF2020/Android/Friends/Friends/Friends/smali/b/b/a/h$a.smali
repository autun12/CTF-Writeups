.class public Lb/b/a/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/a/h;


# direct methods
.method public constructor <init>(Lb/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/h$a;->b:Lb/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/a/h$a;->b:Lb/b/a/h;

    iget-object v1, v0, Lb/b/a/h;->d:Lb/b/a/m/h;

    invoke-interface {v1, v0}, Lb/b/a/m/h;->b(Lb/b/a/m/i;)V

    return-void
.end method
