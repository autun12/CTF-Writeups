.class public final Lb/c/a/a/l/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/c/a/a/l/b;

.field public final b:Lb/c/a/a/l/b;

.field public final c:Lb/c/a/a/l/b;

.field public final d:Lb/c/a/a/l/b;

.field public final e:Lb/c/a/a/l/b;

.field public final f:Lb/c/a/a/l/b;

.field public final g:Lb/c/a/a/l/b;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lb/c/a/a/l/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f03020a

    invoke-static {p1, v1, v0}, Lb/c/a/a/a;->t(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, Lb/c/a/a/b;->j:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object v1

    iput-object v1, p0, Lb/c/a/a/l/c;->a:Lb/c/a/a/l/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object v1

    iput-object v1, p0, Lb/c/a/a/l/c;->g:Lb/c/a/a/l/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object v1

    iput-object v1, p0, Lb/c/a/a/l/c;->b:Lb/c/a/a/l/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object v1

    iput-object v1, p0, Lb/c/a/a/l/c;->c:Lb/c/a/a/l/b;

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lb/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object v3

    iput-object v3, p0, Lb/c/a/a/l/c;->d:Lb/c/a/a/l/b;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object v3

    iput-object v3, p0, Lb/c/a/a/l/c;->e:Lb/c/a/a/l/b;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Lb/c/a/a/l/b;->a(Landroid/content/Context;I)Lb/c/a/a/l/b;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/a/l/c;->f:Lb/c/a/a/l/b;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lb/c/a/a/l/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
