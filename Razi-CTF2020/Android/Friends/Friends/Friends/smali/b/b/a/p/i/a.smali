.class public Lb/b/a/p/i/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/p/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/p/i/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/b/a/p/i/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lb/b/a/p/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/p/i/a<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lb/b/a/p/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/p/i/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/p/i/a;

    invoke-direct {v0}, Lb/b/a/p/i/a;-><init>()V

    sput-object v0, Lb/b/a/p/i/a;->a:Lb/b/a/p/i/a;

    new-instance v0, Lb/b/a/p/i/a$a;

    invoke-direct {v0}, Lb/b/a/p/i/a$a;-><init>()V

    sput-object v0, Lb/b/a/p/i/a;->b:Lb/b/a/p/i/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
