.class public Lb/b/a/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/m/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lb/b/a/m/n;

.field public final synthetic b:Lb/b/a/h;


# direct methods
.method public constructor <init>(Lb/b/a/h;Lb/b/a/m/n;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/h$b;->b:Lb/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/a/h$b;->a:Lb/b/a/m/n;

    return-void
.end method
