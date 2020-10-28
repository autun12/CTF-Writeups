.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/n/e;


# instance fields
.field public final synthetic a:La/q/a;


# direct methods
.method public constructor <init>(La/q/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:La/q/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(La/n/g;La/n/d$a;)V
    .locals 0

    sget-object p1, La/n/d$a;->ON_START:La/n/d$a;

    if-ne p2, p1, :cond_0

    :goto_0
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:La/q/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object p1, La/n/d$a;->ON_STOP:La/n/d$a;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
