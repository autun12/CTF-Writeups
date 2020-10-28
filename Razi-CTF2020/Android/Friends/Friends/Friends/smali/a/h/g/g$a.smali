.class public La/h/g/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h/g/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:La/h/g/g;


# direct methods
.method public constructor <init>(La/h/g/g;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/h/g/g$a;->c:La/h/g/g;

    iput-object p2, p0, La/h/g/g$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/h/g/g$a;->c:La/h/g/g;

    iget-object v0, v0, La/h/g/g;->d:La/h/g/f$c;

    iget-object v1, p0, La/h/g/g$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, La/h/g/f$c;->a(Ljava/lang/Object;)V

    return-void
.end method
