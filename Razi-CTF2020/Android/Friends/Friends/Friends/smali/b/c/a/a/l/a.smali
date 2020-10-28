.class public final Lb/c/a/a/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/a/l/a$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb/c/a/a/l/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lb/c/a/a/l/o;

.field public final c:Lb/c/a/a/l/o;

.field public final d:Lb/c/a/a/l/o;

.field public final e:Lb/c/a/a/l/a$b;

.field public final f:I

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/c/a/a/l/a$a;

    invoke-direct {v0}, Lb/c/a/a/l/a$a;-><init>()V

    sput-object v0, Lb/c/a/a/l/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lb/c/a/a/l/o;Lb/c/a/a/l/o;Lb/c/a/a/l/o;Lb/c/a/a/l/a$b;Lb/c/a/a/l/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    iput-object p2, p0, Lb/c/a/a/l/a;->c:Lb/c/a/a/l/o;

    iput-object p3, p0, Lb/c/a/a/l/a;->d:Lb/c/a/a/l/o;

    iput-object p4, p0, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    .line 2
    iget-object p4, p1, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    iget-object p5, p3, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    invoke-virtual {p4, p5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p4

    if-gtz p4, :cond_1

    iget-object p3, p3, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    iget-object p4, p2, Lb/c/a/a/l/o;->b:Ljava/util/Calendar;

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p3

    if-gtz p3, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lb/c/a/a/l/o;->i(Lb/c/a/a/l/o;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lb/c/a/a/l/a;->g:I

    iget p2, p2, Lb/c/a/a/l/o;->e:I

    iget p1, p1, Lb/c/a/a/l/o;->e:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lb/c/a/a/l/a;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "current Month cannot be after end Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start Month cannot be after current Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/c/a/a/l/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/c/a/a/l/a;

    iget-object v1, p0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    iget-object v3, p1, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    invoke-virtual {v1, v3}, Lb/c/a/a/l/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/c/a/a/l/a;->c:Lb/c/a/a/l/o;

    iget-object v3, p1, Lb/c/a/a/l/a;->c:Lb/c/a/a/l/o;

    invoke-virtual {v1, v3}, Lb/c/a/a/l/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/c/a/a/l/a;->d:Lb/c/a/a/l/o;

    iget-object v3, p1, Lb/c/a/a/l/a;->d:Lb/c/a/a/l/o;

    invoke-virtual {v1, v3}, Lb/c/a/a/l/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    iget-object p1, p1, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lb/c/a/a/l/a;->c:Lb/c/a/a/l/o;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lb/c/a/a/l/a;->d:Lb/c/a/a/l/o;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lb/c/a/a/l/a;->b:Lb/c/a/a/l/o;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lb/c/a/a/l/a;->c:Lb/c/a/a/l/o;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lb/c/a/a/l/a;->d:Lb/c/a/a/l/o;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lb/c/a/a/l/a;->e:Lb/c/a/a/l/a$b;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
