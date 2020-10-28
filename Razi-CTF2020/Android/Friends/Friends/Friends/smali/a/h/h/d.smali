.class public final La/h/h/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/h/h/d$a;,
        La/h/h/d$b;,
        La/h/h/d$d;,
        La/h/h/d$c;
    }
.end annotation


# static fields
.field public static final a:La/h/h/c;

.field public static final b:La/h/h/c;

.field public static final c:La/h/h/c;

.field public static final d:La/h/h/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, La/h/h/d$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/h/h/d$d;-><init>(La/h/h/d$b;Z)V

    sput-object v0, La/h/h/d;->a:La/h/h/c;

    new-instance v0, La/h/h/d$d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/h/h/d$d;-><init>(La/h/h/d$b;Z)V

    sput-object v0, La/h/h/d;->b:La/h/h/c;

    new-instance v0, La/h/h/d$d;

    sget-object v1, La/h/h/d$a;->a:La/h/h/d$a;

    invoke-direct {v0, v1, v2}, La/h/h/d$d;-><init>(La/h/h/d$b;Z)V

    sput-object v0, La/h/h/d;->c:La/h/h/c;

    new-instance v0, La/h/h/d$d;

    invoke-direct {v0, v1, v3}, La/h/h/d$d;-><init>(La/h/h/d$b;Z)V

    sput-object v0, La/h/h/d;->d:La/h/h/c;

    return-void
.end method
