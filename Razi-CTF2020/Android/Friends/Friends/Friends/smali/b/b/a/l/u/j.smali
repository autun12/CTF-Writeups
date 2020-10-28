.class public Lb/b/a/l/u/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/u/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lb/b/a/l/q<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final c:Lb/b/a/l/w/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/w/h/e<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final d:La/h/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/h/i/c<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lb/b/a/l/w/h/e;La/h/i/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lb/b/a/l/q<",
            "TDataType;TResourceType;>;>;",
            "Lb/b/a/l/w/h/e<",
            "TResourceType;TTranscode;>;",
            "La/h/i/c<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/l/u/j;->a:Ljava/lang/Class;

    iput-object p4, p0, Lb/b/a/l/u/j;->b:Ljava/util/List;

    iput-object p5, p0, Lb/b/a/l/u/j;->c:Lb/b/a/l/w/h/e;

    iput-object p6, p0, Lb/b/a/l/u/j;->d:La/h/i/c;

    const-string p4, "Failed DecodePath{"

    invoke-static {p4}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/l/u/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lb/b/a/l/t/e;IILb/b/a/l/o;Lb/b/a/l/u/j$a;)Lb/b/a/l/u/w;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/t/e<",
            "TDataType;>;II",
            "Lb/b/a/l/o;",
            "Lb/b/a/l/u/j$a<",
            "TResourceType;>;)",
            "Lb/b/a/l/u/w<",
            "TTranscode;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/b/a/l/u/j;->d:La/h/i/c;

    invoke-interface {v0}, La/h/i/c;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lb/b/a/l/u/j;->b(Lb/b/a/l/t/e;IILb/b/a/l/o;Ljava/util/List;)Lb/b/a/l/u/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lb/b/a/l/u/j;->d:La/h/i/c;

    invoke-interface {p2, v0}, La/h/i/c;->a(Ljava/lang/Object;)Z

    .line 4
    check-cast p5, Lb/b/a/l/u/i$b;

    .line 5
    iget-object p2, p5, Lb/b/a/l/u/i$b;->b:Lb/b/a/l/u/i;

    iget-object p3, p5, Lb/b/a/l/u/i$b;->a:Lb/b/a/l/a;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object p5, Lb/b/a/l/a;->e:Lb/b/a/l/a;

    const/4 v0, 0x0

    if-eq p3, p5, :cond_0

    iget-object p5, p2, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    invoke-virtual {p5, v7}, Lb/b/a/l/u/h;->f(Ljava/lang/Class;)Lb/b/a/l/s;

    move-result-object p5

    iget-object v1, p2, Lb/b/a/l/u/i;->i:Lb/b/a/d;

    iget v2, p2, Lb/b/a/l/u/i;->m:I

    iget v3, p2, Lb/b/a/l/u/i;->n:I

    invoke-interface {p5, v1, p1, v2, v3}, Lb/b/a/l/s;->a(Landroid/content/Context;Lb/b/a/l/u/w;II)Lb/b/a/l/u/w;

    move-result-object v1

    move-object v6, p5

    move-object p5, v1

    goto :goto_0

    :cond_0
    move-object p5, p1

    move-object v6, v0

    :goto_0
    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lb/b/a/l/u/w;->e()V

    :cond_1
    iget-object p1, p2, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    .line 7
    iget-object p1, p1, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 8
    iget-object p1, p1, Lb/b/a/d;->b:Lb/b/a/f;

    .line 9
    iget-object p1, p1, Lb/b/a/f;->d:Lb/b/a/o/f;

    invoke-interface {p5}, Lb/b/a/l/u/w;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb/b/a/o/f;->a(Ljava/lang/Class;)Lb/b/a/l/r;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p2, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    .line 11
    iget-object p1, p1, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 12
    iget-object p1, p1, Lb/b/a/d;->b:Lb/b/a/f;

    .line 13
    iget-object p1, p1, Lb/b/a/f;->d:Lb/b/a/o/f;

    invoke-interface {p5}, Lb/b/a/l/u/w;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/a/o/f;->a(Ljava/lang/Class;)Lb/b/a/l/r;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-object p1, p2, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    invoke-interface {v0, p1}, Lb/b/a/l/r;->a(Lb/b/a/l/o;)Lb/b/a/l/c;

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_3
    new-instance p1, Lb/b/a/f$d;

    invoke-interface {p5}, Lb/b/a/l/u/w;->c()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/f$d;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 16
    :cond_4
    sget-object p1, Lb/b/a/l/c;->d:Lb/b/a/l/c;

    :goto_2
    move-object v9, v0

    iget-object v0, p2, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    iget-object v3, p2, Lb/b/a/l/u/i;->y:Lb/b/a/l/m;

    .line 17
    invoke-virtual {v0}, Lb/b/a/l/u/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/a/l/v/n$a;

    iget-object v8, v8, Lb/b/a/l/v/n$a;->a:Lb/b/a/l/m;

    invoke-interface {v8, v3}, Lb/b/a/l/m;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    xor-int/lit8 v0, v1, 0x1

    .line 18
    iget-object v1, p2, Lb/b/a/l/u/i;->o:Lb/b/a/l/u/k;

    invoke-virtual {v1, v0, p3, p1}, Lb/b/a/l/u/k;->d(ZLb/b/a/l/a;Lb/b/a/l/c;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz v9, :cond_9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_8

    if-ne p3, v2, :cond_7

    new-instance p1, Lb/b/a/l/u/y;

    iget-object p3, p2, Lb/b/a/l/u/i;->b:Lb/b/a/l/u/h;

    .line 19
    iget-object p3, p3, Lb/b/a/l/u/h;->c:Lb/b/a/d;

    .line 20
    iget-object v1, p3, Lb/b/a/d;->a:Lb/b/a/l/u/c0/b;

    .line 21
    iget-object v2, p2, Lb/b/a/l/u/i;->y:Lb/b/a/l/m;

    iget-object v3, p2, Lb/b/a/l/u/i;->j:Lb/b/a/l/m;

    iget v4, p2, Lb/b/a/l/u/i;->m:I

    iget v5, p2, Lb/b/a/l/u/i;->n:I

    iget-object v8, p2, Lb/b/a/l/u/i;->p:Lb/b/a/l/o;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lb/b/a/l/u/y;-><init>(Lb/b/a/l/u/c0/b;Lb/b/a/l/m;Lb/b/a/l/m;IILb/b/a/l/s;Ljava/lang/Class;Lb/b/a/l/o;)V

    goto :goto_5

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown strategy: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    new-instance p1, Lb/b/a/l/u/e;

    iget-object p3, p2, Lb/b/a/l/u/i;->y:Lb/b/a/l/m;

    iget-object v0, p2, Lb/b/a/l/u/i;->j:Lb/b/a/l/m;

    invoke-direct {p1, p3, v0}, Lb/b/a/l/u/e;-><init>(Lb/b/a/l/m;Lb/b/a/l/m;)V

    :goto_5
    invoke-static {p5}, Lb/b/a/l/u/v;->f(Lb/b/a/l/u/w;)Lb/b/a/l/u/v;

    move-result-object p5

    iget-object p2, p2, Lb/b/a/l/u/i;->g:Lb/b/a/l/u/i$c;

    .line 22
    iput-object p1, p2, Lb/b/a/l/u/i$c;->a:Lb/b/a/l/m;

    iput-object v9, p2, Lb/b/a/l/u/i$c;->b:Lb/b/a/l/r;

    iput-object p5, p2, Lb/b/a/l/u/i$c;->c:Lb/b/a/l/u/v;

    goto :goto_6

    .line 23
    :cond_9
    new-instance p1, Lb/b/a/f$d;

    invoke-interface {p5}, Lb/b/a/l/u/w;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/a/f$d;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 24
    :cond_a
    :goto_6
    iget-object p1, p0, Lb/b/a/l/u/j;->c:Lb/b/a/l/w/h/e;

    invoke-interface {p1, p5, p4}, Lb/b/a/l/w/h/e;->a(Lb/b/a/l/u/w;Lb/b/a/l/o;)Lb/b/a/l/u/w;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lb/b/a/l/u/j;->d:La/h/i/c;

    invoke-interface {p2, v0}, La/h/i/c;->a(Ljava/lang/Object;)Z

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final b(Lb/b/a/l/t/e;IILb/b/a/l/o;Ljava/util/List;)Lb/b/a/l/u/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/t/e<",
            "TDataType;>;II",
            "Lb/b/a/l/o;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lb/b/a/l/u/w<",
            "TResourceType;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/l/u/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lb/b/a/l/u/j;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/l/q;

    :try_start_0
    invoke-interface {p1}, Lb/b/a/l/t/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p4}, Lb/b/a/l/q;->b(Ljava/lang/Object;Lb/b/a/l/o;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lb/b/a/l/t/e;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lb/b/a/l/q;->a(Ljava/lang/Object;IILb/b/a/l/o;)Lb/b/a/l/u/w;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_1
    const/4 v5, 0x2

    const-string v6, "DecodePath"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    new-instance p1, Lb/b/a/l/u/r;

    iget-object p2, p0, Lb/b/a/l/u/j;->e:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Lb/b/a/l/u/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DecodePath{ dataClass="

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/l/u/j;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/j;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/l/u/j;->c:Lb/b/a/l/w/h/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
