.class public Lb/b/a/l/v/y/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/v/y/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/n<",
        "Lb/b/a/l/v/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lb/b/a/l/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/n<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lb/b/a/l/v/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/m<",
            "Lb/b/a/l/v/g;",
            "Lb/b/a/l/v/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lb/b/a/l/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/b/a/l/n;

    move-result-object v0

    sput-object v0, Lb/b/a/l/v/y/a;->b:Lb/b/a/l/n;

    return-void
.end method

.method public constructor <init>(Lb/b/a/l/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/m<",
            "Lb/b/a/l/v/g;",
            "Lb/b/a/l/v/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/v/y/a;->a:Lb/b/a/l/v/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/v/n$a;
    .locals 2

    check-cast p1, Lb/b/a/l/v/g;

    .line 1
    iget-object p2, p0, Lb/b/a/l/v/y/a;->a:Lb/b/a/l/v/m;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p3, p3}, Lb/b/a/l/v/m$b;->a(Ljava/lang/Object;II)Lb/b/a/l/v/m$b;

    move-result-object v0

    iget-object p2, p2, Lb/b/a/l/v/m;->a:Lb/b/a/r/g;

    invoke-virtual {p2, v0}, Lb/b/a/r/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    sget-object v1, Lb/b/a/l/v/m$b;->d:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    check-cast p2, Lb/b/a/l/v/g;

    if-nez p2, :cond_0

    iget-object p2, p0, Lb/b/a/l/v/y/a;->a:Lb/b/a/l/v/m;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3, p3}, Lb/b/a/l/v/m$b;->a(Ljava/lang/Object;II)Lb/b/a/l/v/m$b;

    move-result-object p3

    iget-object p2, p2, Lb/b/a/l/v/m;->a:Lb/b/a/r/g;

    invoke-virtual {p2, p3, p1}, Lb/b/a/r/g;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_1
    :goto_0
    sget-object p2, Lb/b/a/l/v/y/a;->b:Lb/b/a/l/n;

    invoke-virtual {p4, p2}, Lb/b/a/l/o;->c(Lb/b/a/l/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, Lb/b/a/l/v/n$a;

    new-instance p4, Lb/b/a/l/t/j;

    invoke-direct {p4, p1, p2}, Lb/b/a/l/t/j;-><init>(Lb/b/a/l/v/g;I)V

    invoke-direct {p3, p1, p4}, Lb/b/a/l/v/n$a;-><init>(Lb/b/a/l/m;Lb/b/a/l/t/d;)V

    return-object p3
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb/b/a/l/v/g;

    const/4 p1, 0x1

    return p1
.end method
