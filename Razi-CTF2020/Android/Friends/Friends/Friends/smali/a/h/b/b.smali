.class public La/h/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/h/b/e$a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/h/b/e$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/h/b/b;->b:La/h/b/e$a;

    iput-object p2, p0, La/h/b/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/h/b/b;->b:La/h/b/e$a;

    iget-object v1, p0, La/h/b/b;->c:Ljava/lang/Object;

    iput-object v1, v0, La/h/b/e$a;->a:Ljava/lang/Object;

    return-void
.end method
