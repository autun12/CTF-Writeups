.class public Lrazi/apa/ctf/friends/fsdfdsc3423qd;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrazi/apa/ctf/friends/fsdfdsc3423qd$a;,
        Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/view/LayoutInflater;

.field public e:Lrazi/apa/ctf/friends/fsdfdsc3423qd$a;

.field public f:Landroid/content/Context;

.field public g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "bhkmm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ld/a/a/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->stringFromJNI()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->d:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->f:Landroid/content/Context;

    iput-object p2, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 5

    check-cast p1, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;

    .line 1
    iget-object v0, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/a/a/a/a;

    iget-object v0, p1, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->u:Landroid/widget/TextView;

    .line 2
    iget-object v1, p2, Ld/a/a/a/a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/b/a/b;->d(Landroid/content/Context;)Lb/b/a/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p2, p2, Ld/a/a/a/a;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 8
    new-instance v2, Lb/b/a/g;

    iget-object v3, v0, Lb/b/a/h;->b:Lb/b/a/b;

    iget-object v4, v0, Lb/b/a/h;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v4}, Lb/b/a/g;-><init>(Lb/b/a/b;Lb/b/a/h;Ljava/lang/Class;Landroid/content/Context;)V

    .line 9
    iput-object p2, v2, Lb/b/a/g;->G:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, v2, Lb/b/a/g;->J:Z

    .line 10
    iget-object p1, p1, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;->v:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v2, p1}, Lb/b/a/g;->s(Landroid/widget/ImageView;)Lb/b/a/p/h/i;

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    iget-object p2, p0, Lrazi/apa/ctf/friends/fsdfdsc3423qd;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0050

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;

    invoke-direct {p2, p0, p1}, Lrazi/apa/ctf/friends/fsdfdsc3423qd$b;-><init>(Lrazi/apa/ctf/friends/fsdfdsc3423qd;Landroid/view/View;)V

    return-object p2
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
