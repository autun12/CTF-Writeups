.class public Lb/b/a/l/t/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/l/t/f$b;
    }
.end annotation


# static fields
.field public static final b:Lb/b/a/l/t/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/l/t/e$a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb/b/a/l/t/e$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/l/t/f$a;

    invoke-direct {v0}, Lb/b/a/l/t/f$a;-><init>()V

    sput-object v0, Lb/b/a/l/t/f;->b:Lb/b/a/l/t/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/b/a/l/t/f;->a:Ljava/util/Map;

    return-void
.end method
