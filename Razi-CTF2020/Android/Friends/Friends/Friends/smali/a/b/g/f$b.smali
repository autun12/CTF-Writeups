.class public La/b/g/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:La/h/j/b;

.field public B:Ljava/lang/CharSequence;

.field public C:Ljava/lang/CharSequence;

.field public D:Landroid/content/res/ColorStateList;

.field public E:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic F:La/b/g/f;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/b/g/f;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, La/b/g/f$b;->F:La/b/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, La/b/g/f$b;->D:Landroid/content/res/ColorStateList;

    iput-object p1, p0, La/b/g/f$b;->E:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, La/b/g/f$b;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    .line 1
    iput p1, p0, La/b/g/f$b;->b:I

    iput p1, p0, La/b/g/f$b;->c:I

    iput p1, p0, La/b/g/f$b;->d:I

    iput p1, p0, La/b/g/f$b;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/g/f$b;->f:Z

    iput-boolean p1, p0, La/b/g/f$b;->g:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b/g/f$b;->h:Z

    iget-object v0, p0, La/b/g/f$b;->a:Landroid/view/Menu;

    iget v1, p0, La/b/g/f$b;->b:I

    iget v2, p0, La/b/g/f$b;->i:I

    iget v3, p0, La/b/g/f$b;->j:I

    iget-object v4, p0, La/b/g/f$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, La/b/g/f$b;->c(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, La/b/g/f$b;->F:La/b/g/f;

    iget-object v0, v0, La/b/g/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/view/MenuItem;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v1, p0, La/b/g/f$b;->s:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, La/b/g/f$b;->t:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, La/b/g/f$b;->u:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, La/b/g/f$b;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, La/b/g/f$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, La/b/g/f$b;->m:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v1, p0, La/b/g/f$b;->v:I

    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v1, p0, La/b/g/f$b;->z:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, La/b/g/f$b;->F:La/b/g/f;

    iget-object v1, v1, La/b/g/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, La/b/g/f$a;

    iget-object v2, p0, La/b/g/f$b;->F:La/b/g/f;

    .line 1
    iget-object v5, v2, La/b/g/f;->d:Ljava/lang/Object;

    if-nez v5, :cond_2

    iget-object v5, v2, La/b/g/f;->c:Landroid/content/Context;

    invoke-virtual {v2, v5}, La/b/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, La/b/g/f;->d:Ljava/lang/Object;

    :cond_2
    iget-object v2, v2, La/b/g/f;->d:Ljava/lang/Object;

    .line 2
    iget-object v5, p0, La/b/g/f$b;->z:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, La/b/g/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget v1, p0, La/b/g/f$b;->r:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    instance-of v1, p1, La/b/g/i/i;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, La/b/g/i/i;

    .line 3
    iget v2, v1, La/b/g/i/i;->x:I

    and-int/lit8 v2, v2, -0x5

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, La/b/g/i/i;->x:I

    goto :goto_2

    .line 4
    :cond_5
    instance-of v1, p1, La/b/g/i/j;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, La/b/g/i/j;

    .line 5
    :try_start_0
    iget-object v2, v1, La/b/g/i/j;->e:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    iget-object v2, v1, La/b/g/i/j;->d:La/h/e/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "setExclusiveCheckable"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, La/b/g/i/j;->e:Ljava/lang/reflect/Method;

    :cond_6
    iget-object v2, v1, La/b/g/i/j;->e:Ljava/lang/reflect/Method;

    iget-object v1, v1, La/b/g/i/j;->d:La/h/e/a/b;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "MenuItemWrapper"

    const-string v5, "Error while calling setExclusiveCheckable"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_7
    :goto_2
    iget-object v1, p0, La/b/g/f$b;->x:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v2, La/b/g/f;->e:[Ljava/lang/Class;

    iget-object v3, p0, La/b/g/f$b;->F:La/b/g/f;

    iget-object v3, v3, La/b/g/f;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, La/b/g/f$b;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v3, 0x1

    :cond_8
    iget v1, p0, La/b/g/f$b;->w:I

    if-lez v1, :cond_a

    if-nez v3, :cond_9

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_9
    const-string v1, "SupportMenuInflater"

    const-string v2, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    iget-object v1, p0, La/b/g/f$b;->A:La/h/j/b;

    if-eqz v1, :cond_c

    .line 7
    instance-of v2, p1, La/h/e/a/b;

    if-eqz v2, :cond_b

    move-object v2, p1

    check-cast v2, La/h/e/a/b;

    invoke-interface {v2, v1}, La/h/e/a/b;->b(La/h/j/b;)La/h/e/a/b;

    goto :goto_4

    :cond_b
    const-string v1, "MenuItemCompat"

    const-string v2, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_c
    :goto_4
    iget-object v1, p0, La/b/g/f$b;->B:Ljava/lang/CharSequence;

    .line 9
    instance-of v2, p1, La/h/e/a/b;

    const/16 v3, 0x1a

    if-eqz v2, :cond_d

    move-object v4, p1

    check-cast v4, La/h/e/a/b;

    invoke-interface {v4, v1}, La/h/e/a/b;->setContentDescription(Ljava/lang/CharSequence;)La/h/e/a/b;

    goto :goto_5

    :cond_d
    if-lt v0, v3, :cond_e

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    :cond_e
    :goto_5
    iget-object v1, p0, La/b/g/f$b;->C:Ljava/lang/CharSequence;

    if-eqz v2, :cond_f

    .line 11
    move-object v4, p1

    check-cast v4, La/h/e/a/b;

    invoke-interface {v4, v1}, La/h/e/a/b;->setTooltipText(Ljava/lang/CharSequence;)La/h/e/a/b;

    goto :goto_6

    :cond_f
    if-lt v0, v3, :cond_10

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 12
    :cond_10
    :goto_6
    iget-char v1, p0, La/b/g/f$b;->n:C

    iget v4, p0, La/b/g/f$b;->o:I

    if-eqz v2, :cond_11

    .line 13
    move-object v5, p1

    check-cast v5, La/h/e/a/b;

    invoke-interface {v5, v1, v4}, La/h/e/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_7

    :cond_11
    if-lt v0, v3, :cond_12

    invoke-interface {p1, v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 14
    :cond_12
    :goto_7
    iget-char v1, p0, La/b/g/f$b;->p:C

    iget v4, p0, La/b/g/f$b;->q:I

    if-eqz v2, :cond_13

    .line 15
    move-object v5, p1

    check-cast v5, La/h/e/a/b;

    invoke-interface {v5, v1, v4}, La/h/e/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_8

    :cond_13
    if-lt v0, v3, :cond_14

    invoke-interface {p1, v1, v4}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 16
    :cond_14
    :goto_8
    iget-object v1, p0, La/b/g/f$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_16

    if-eqz v2, :cond_15

    .line 17
    move-object v4, p1

    check-cast v4, La/h/e/a/b;

    invoke-interface {v4, v1}, La/h/e/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_9

    :cond_15
    if-lt v0, v3, :cond_16

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 18
    :cond_16
    :goto_9
    iget-object v1, p0, La/b/g/f$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_18

    if-eqz v2, :cond_17

    .line 19
    check-cast p1, La/h/e/a/b;

    invoke-interface {p1, v1}, La/h/e/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_a

    :cond_17
    if-lt v0, v3, :cond_18

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_18
    :goto_a
    return-void
.end method
