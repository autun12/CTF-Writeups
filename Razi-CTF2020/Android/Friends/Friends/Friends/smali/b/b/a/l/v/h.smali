.class public interface abstract Lb/b/a/l/v/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lb/b/a/l/v/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/b/a/l/v/j$a;

    invoke-direct {v0}, Lb/b/a/l/v/j$a;-><init>()V

    .line 1
    new-instance v1, Lb/b/a/l/v/j;

    iget-object v0, v0, Lb/b/a/l/v/j$a;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Lb/b/a/l/v/j;-><init>(Ljava/util/Map;)V

    .line 2
    sput-object v1, Lb/b/a/l/v/h;->a:Lb/b/a/l/v/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
