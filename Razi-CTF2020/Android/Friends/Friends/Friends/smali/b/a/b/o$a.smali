.class public Lb/a/b/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/o;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lb/a/b/o;


# direct methods
.method public constructor <init>(Lb/a/b/o;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lb/a/b/o$a;->d:Lb/a/b/o;

    iput-object p2, p0, Lb/a/b/o$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lb/a/b/o$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/a/b/o$a;->d:Lb/a/b/o;

    .line 1
    iget-object v0, v0, Lb/a/b/o;->b:Lb/a/b/v$a;

    .line 2
    iget-object v1, p0, Lb/a/b/o$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lb/a/b/o$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lb/a/b/v$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lb/a/b/o$a;->d:Lb/a/b/o;

    .line 3
    iget-object v1, v0, Lb/a/b/o;->b:Lb/a/b/v$a;

    .line 4
    invoke-virtual {v0}, Lb/a/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/a/b/v$a;->b(Ljava/lang/String;)V

    return-void
.end method
