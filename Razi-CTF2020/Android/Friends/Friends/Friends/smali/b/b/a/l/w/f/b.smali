.class public Lb/b/a/l/w/f/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/u/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/b/a/l/w/f/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lb/b/a/l/w/f/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/l/w/f/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/l/w/f/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method
