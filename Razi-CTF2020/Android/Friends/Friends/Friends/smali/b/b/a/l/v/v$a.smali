.class public Lb/b/a/l/v/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/l/v/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/l/v/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/l/v/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lb/b/a/l/v/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/v/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/v/v$a;

    invoke-direct {v0}, Lb/b/a/l/v/v$a;-><init>()V

    sput-object v0, Lb/b/a/l/v/v$a;->a:Lb/b/a/l/v/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb/b/a/l/v/r;)Lb/b/a/l/v/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/b/a/l/v/r;",
            ")",
            "Lb/b/a/l/v/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p1, Lb/b/a/l/v/v;->a:Lb/b/a/l/v/v;

    return-object p1
.end method
