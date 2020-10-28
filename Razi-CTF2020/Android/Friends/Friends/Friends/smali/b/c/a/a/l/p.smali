.class public Lb/c/a/a/l/p;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field public static final f:I


# instance fields
.field public final b:Lb/c/a/a/l/o;

.field public final c:Lb/c/a/a/l/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/a/l/d<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Lb/c/a/a/l/c;

.field public final e:Lb/c/a/a/l/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lb/c/a/a/a;->l()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lb/c/a/a/l/p;->f:I

    return-void
.end method

.method public constructor <init>(Lb/c/a/a/l/o;Lb/c/a/a/l/d;Lb/c/a/a/l/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/a/l/o;",
            "Lb/c/a/a/l/d<",
            "*>;",
            "Lb/c/a/a/l/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    iput-object p2, p0, Lb/c/a/a/l/p;->c:Lb/c/a/a/l/d;

    iput-object p3, p0, Lb/c/a/a/l/p;->e:Lb/c/a/a/l/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    invoke-virtual {v0}, Lb/c/a/a/l/o;->g()I

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    invoke-virtual {v0}, Lb/c/a/a/l/o;->g()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lb/c/a/a/l/p;->c()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    .line 1
    invoke-virtual {v0}, Lb/c/a/a/l/o;->g()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, v0, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    invoke-static {v0}, Lb/c/a/a/a;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    invoke-virtual {v0}, Lb/c/a/a/l/o;->g()I

    move-result v0

    iget-object v1, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    iget v1, v1, Lb/c/a/a/l/o;->g:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    iget v0, v0, Lb/c/a/a/l/o;->g:I

    invoke-virtual {p0}, Lb/c/a/a/l/p;->a()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb/c/a/a/l/p;->b(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    iget v0, v0, Lb/c/a/a/l/o;->f:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lb/c/a/a/l/p;->d:Lb/c/a/a/l/c;

    if-nez v2, :cond_0

    new-instance v2, Lb/c/a/a/l/c;

    invoke-direct {v2, v1}, Lb/c/a/a/l/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lb/c/a/a/l/p;->d:Lb/c/a/a/l/c;

    .line 3
    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0034

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lb/c/a/a/l/p;->a()I

    move-result p2

    sub-int p2, p1, p2

    const/4 p3, 0x1

    if-ltz p2, :cond_6

    iget-object v3, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    iget v4, v3, Lb/c/a/a/l/o;->g:I

    if-lt p2, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    add-int/2addr p2, p3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    .line 4
    iget-object v3, v3, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    invoke-static {v3}, Lb/c/a/a/a;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 5
    iget-object p2, p0, Lb/c/a/a/l/p;->b:Lb/c/a/a/l/o;

    iget p2, p2, Lb/c/a/a/l/o;->e:I

    .line 6
    invoke-static {}, Lb/c/a/a/a;->k()Ljava/util/Calendar;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v4, p3}, Ljava/util/Calendar;->set(II)V

    invoke-static {v3}, Lb/c/a/a/a;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 9
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "MMMM, yyyy"

    invoke-direct {v8, v9, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lb/c/a/a/a;->j()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    const-string v3, "UTC"

    const/16 v4, 0x18

    if-ne p2, v7, :cond_4

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    if-lt v0, v4, :cond_3

    const-string v0, "MMMEd"

    .line 12
    invoke-static {v0, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 13
    invoke-static {v3}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {v2, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    invoke-static {}, Lb/c/a/a/a;->j()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    if-lt v0, v4, :cond_5

    const-string v0, "yMMMEd"

    .line 19
    invoke-static {v0, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    .line 20
    invoke-static {v3}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_5
    invoke-static {v2, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    invoke-static {}, Lb/c/a/a/a;->j()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 25
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lb/c/a/a/l/p;->b(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object p2, p0, Lb/c/a/a/l/p;->e:Lb/c/a/a/l/a;

    .line 26
    iget-object p2, p2, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Lb/c/a/a/l/a$b;->e(J)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lb/c/a/a/l/p;->c:Lb/c/a/a/l/d;

    invoke-interface {p2}, Lb/c/a/a/l/d;->d()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 28
    invoke-static {}, Lb/c/a/a/a;->l()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p3}, Lb/c/a/a/a;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Lb/c/a/a/a;->l()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p3}, Lb/c/a/a/a;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p3, v4, v2

    if-nez p3, :cond_8

    .line 29
    iget-object p1, p0, Lb/c/a/a/l/p;->d:Lb/c/a/a/l/c;

    iget-object p1, p1, Lb/c/a/a/l/c;->b:Lb/c/a/a/l/b;

    goto :goto_3

    :cond_9
    invoke-static {}, Lb/c/a/a/a;->k()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-nez p1, :cond_a

    iget-object p1, p0, Lb/c/a/a/l/p;->d:Lb/c/a/a/l/c;

    iget-object p1, p1, Lb/c/a/a/l/c;->c:Lb/c/a/a/l/b;

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lb/c/a/a/l/p;->d:Lb/c/a/a/l/c;

    iget-object p1, p1, Lb/c/a/a/l/c;->a:Lb/c/a/a/l/b;

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lb/c/a/a/l/p;->d:Lb/c/a/a/l/c;

    iget-object p1, p1, Lb/c/a/a/l/c;->g:Lb/c/a/a/l/b;

    :goto_3
    invoke-virtual {p1, v1}, Lb/c/a/a/l/b;->b(Landroid/widget/TextView;)V

    :goto_4
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
