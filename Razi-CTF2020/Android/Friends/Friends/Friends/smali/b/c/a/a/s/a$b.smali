.class public final Lb/c/a/a/s/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lb/c/a/a/u/g;

.field public b:Z


# direct methods
.method public constructor <init>(Lb/c/a/a/s/a$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    .line 1
    iget-object v0, v0, Lb/c/a/a/u/g;->b:Lb/c/a/a/u/g$b;

    .line 2
    invoke-virtual {v0}, Lb/c/a/a/u/g$b;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lb/c/a/a/u/g;

    iput-object v0, p0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    iget-boolean p1, p1, Lb/c/a/a/s/a$b;->b:Z

    iput-boolean p1, p0, Lb/c/a/a/s/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lb/c/a/a/u/g;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lb/c/a/a/s/a$b;->a:Lb/c/a/a/u/g;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/c/a/a/s/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Lb/c/a/a/s/a;

    new-instance v1, Lb/c/a/a/s/a$b;

    invoke-direct {v1, p0}, Lb/c/a/a/s/a$b;-><init>(Lb/c/a/a/s/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/c/a/a/s/a;-><init>(Lb/c/a/a/s/a$b;Lb/c/a/a/s/a$a;)V

    return-object v0
.end method
