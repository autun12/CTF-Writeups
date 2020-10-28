.class public abstract Lb/a/b/w/h;
.super Lb/a/b/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/b/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String;


# instance fields
.field public final o:Ljava/lang/Object;

.field public p:Lb/a/b/q$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/q$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/b/w/h;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lb/a/b/q$b;Lb/a/b/q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lb/a/b/q$b<",
            "TT;>;",
            "Lb/a/b/q$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lb/a/b/o;-><init>(ILjava/lang/String;Lb/a/b/q$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/w/h;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb/a/b/w/h;->p:Lb/a/b/q$b;

    iput-object p3, p0, Lb/a/b/w/h;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/w/h;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/b/w/h;->p:Lb/a/b/q$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    check-cast v1, Lrazi/apa/ctf/friends/cdf45$a;

    .line 1
    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Ld/a/a/a/a;

    invoke-direct {v5}, Ld/a/a/a/a;-><init>()V

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iput-object v6, v5, Ld/a/a/a/a;->a:Ljava/lang/String;

    const-string v6, "gender"

    .line 4
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    iput-object v6, v5, Ld/a/a/a/a;->e:Ljava/lang/String;

    const-string v6, "address"

    .line 6
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iput-object v6, v5, Ld/a/a/a/a;->d:Ljava/lang/String;

    const-string v6, "age"

    .line 8
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    iput-object v6, v5, Ld/a/a/a/a;->f:Ljava/lang/String;

    const-string v6, "email"

    .line 10
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iput-object v6, v5, Ld/a/a/a/a;->b:Ljava/lang/String;

    const-string v6, "avatar"

    .line 12
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    iput-object v3, v5, Ld/a/a/a/a;->c:Ljava/lang/String;

    .line 14
    iget-object v3, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    iget-object v3, v3, Lrazi/apa/ctf/friends/cdf45;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v5, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    const v2, 0x7f080104

    invoke-virtual {p1, v2}, La/b/c/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    invoke-direct {v2, v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 16
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    new-instance v3, Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    iget-object v4, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    iget-object v5, v4, Lrazi/apa/ctf/friends/cdf45;->p:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lrazi/apa/ctf/friends/fsdfdsc3423qd;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, v0, Lrazi/apa/ctf/friends/cdf45;->o:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    iget-object v0, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    iget-object v3, v0, Lrazi/apa/ctf/friends/cdf45;->o:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    .line 17
    iput-object v0, v3, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->e:Lrazi/apa/ctf/friends/fsdfdsc3423qd$a;

    .line 18
    new-instance v0, La/p/b/l;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 19
    iget v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->r:I

    .line 20
    invoke-direct {v0, v3, v2}, La/p/b/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, v1, Lrazi/apa/ctf/friends/cdf45$a;->a:Lrazi/apa/ctf/friends/cdf45;

    iget-object v0, v0, Lrazi/apa/ctf/friends/cdf45;->o:Lrazi/apa/ctf/friends/fsdfdsc3423qd;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public d()[B
    .locals 5

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lb/a/b/w/h;->q:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/b/w/h;->q:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    .line 1
    invoke-static {v0, v2}, Lb/a/b/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Volley"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/a/b/w/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public g()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lb/a/b/w/h;->d()[B

    move-result-object v0

    return-object v0
.end method
