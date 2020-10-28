.class public Lb/a/b/w/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/w/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/a/b/b$a;)V
    .locals 15

    move-object/from16 v0, p2

    iget-object v3, v0, Lb/a/b/b$a;->b:Ljava/lang/String;

    iget-wide v4, v0, Lb/a/b/b$a;->c:J

    iget-wide v6, v0, Lb/a/b/b$a;->d:J

    iget-wide v8, v0, Lb/a/b/b$a;->e:J

    iget-wide v10, v0, Lb/a/b/b$a;->f:J

    .line 1
    iget-object v1, v0, Lb/a/b/b$a;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v12, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lb/a/b/b$a;->g:Ljava/util/Map;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    new-instance v13, Lb/a/b/h;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lb/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v12, v2

    :goto_1
    move-object v1, p0

    move-object/from16 v2, p1

    .line 3
    invoke-direct/range {v1 .. v12}, Lb/a/b/w/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    iget-object v0, v0, Lb/a/b/b$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    move-object v2, p0

    iput-wide v0, v2, Lb/a/b/w/d$a;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lb/a/b/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/w/d$a;->b:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lb/a/b/w/d$a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lb/a/b/w/d$a;->d:J

    iput-wide p5, p0, Lb/a/b/w/d$a;->e:J

    iput-wide p7, p0, Lb/a/b/w/d$a;->f:J

    iput-wide p9, p0, Lb/a/b/w/d$a;->g:J

    iput-object p11, p0, Lb/a/b/w/d$a;->h:Ljava/util/List;

    return-void
.end method

.method public static a(Lb/a/b/w/d$b;)Lb/a/b/w/d$a;
    .locals 16

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->g(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_3

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->i(Lb/a/b/w/d$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->i(Lb/a/b/w/d$b;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->h(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->h(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->h(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->h(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 1
    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->g(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v13, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->i(Lb/a/b/w/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lb/a/b/w/d;->i(Lb/a/b/w/d$b;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lb/a/b/h;

    invoke-direct {v15, v2, v14}, Lb/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Lb/a/b/w/d$a;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lb/a/b/w/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v0

    .line 3
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readHeaderList size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public b([B)Lb/a/b/b$a;
    .locals 4

    new-instance v0, Lb/a/b/b$a;

    invoke-direct {v0}, Lb/a/b/b$a;-><init>()V

    iput-object p1, v0, Lb/a/b/b$a;->a:[B

    iget-object p1, p0, Lb/a/b/w/d$a;->c:Ljava/lang/String;

    iput-object p1, v0, Lb/a/b/b$a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lb/a/b/w/d$a;->d:J

    iput-wide v1, v0, Lb/a/b/b$a;->c:J

    iget-wide v1, p0, Lb/a/b/w/d$a;->e:J

    iput-wide v1, v0, Lb/a/b/b$a;->d:J

    iget-wide v1, p0, Lb/a/b/w/d$a;->f:J

    iput-wide v1, v0, Lb/a/b/b$a;->e:J

    iget-wide v1, p0, Lb/a/b/w/d$a;->g:J

    iput-wide v1, v0, Lb/a/b/b$a;->f:J

    iget-object p1, p0, Lb/a/b/w/d$a;->h:Ljava/util/List;

    .line 1
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/b/h;

    .line 2
    iget-object v3, v2, Lb/a/b/h;->a:Ljava/lang/String;

    .line 3
    iget-object v2, v2, Lb/a/b/h;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, v0, Lb/a/b/b$a;->g:Ljava/util/Map;

    iget-object p1, p0, Lb/a/b/w/d$a;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lb/a/b/b$a;->h:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/io/OutputStream;)Z
    .locals 5

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lb/a/b/w/d;->l(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lb/a/b/w/d$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lb/a/b/w/d;->n(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/b/w/d$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p1, v0}, Lb/a/b/w/d;->n(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lb/a/b/w/d$a;->d:J

    invoke-static {p1, v3, v4}, Lb/a/b/w/d;->m(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lb/a/b/w/d$a;->e:J

    invoke-static {p1, v3, v4}, Lb/a/b/w/d;->m(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lb/a/b/w/d$a;->f:J

    invoke-static {p1, v3, v4}, Lb/a/b/w/d;->m(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lb/a/b/w/d$a;->g:J

    invoke-static {p1, v3, v4}, Lb/a/b/w/d;->m(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lb/a/b/w/d$a;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lb/a/b/w/d;->l(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/b/h;

    .line 2
    iget-object v4, v3, Lb/a/b/h;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1, v4}, Lb/a/b/w/d;->n(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4
    iget-object v3, v3, Lb/a/b/h;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1, v3}, Lb/a/b/w/d;->n(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Lb/a/b/w/d;->l(Ljava/io/OutputStream;I)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Lb/a/b/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
