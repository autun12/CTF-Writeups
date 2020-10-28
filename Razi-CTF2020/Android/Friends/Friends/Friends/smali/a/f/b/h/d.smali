.class public La/f/b/h/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/f/b/h/d$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:La/f/b/h/c;

.field public F:La/f/b/h/c;

.field public G:La/f/b/h/c;

.field public H:La/f/b/h/c;

.field public I:La/f/b/h/c;

.field public J:La/f/b/h/c;

.field public K:La/f/b/h/c;

.field public L:La/f/b/h/c;

.field public M:[La/f/b/h/c;

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/f/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public O:[Z

.field public P:[La/f/b/h/d$a;

.field public Q:La/f/b/h/d;

.field public R:I

.field public S:I

.field public T:F

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:F

.field public b:La/f/b/h/l/c;

.field public b0:F

.field public c:La/f/b/h/l/c;

.field public c0:Ljava/lang/Object;

.field public d:La/f/b/h/l/k;

.field public d0:I

.field public e:La/f/b/h/l/m;

.field public e0:Ljava/lang/String;

.field public f:[Z

.field public f0:I

.field public g:[I

.field public g0:I

.field public h:Z

.field public h0:[F

.field public i:Z

.field public i0:[La/f/b/h/d;

.field public j:Z

.field public j0:[La/f/b/h/d;

.field public k:I

.field public k0:I

.field public l:I

.field public l0:I

.field public m:I

.field public n:I

.field public o:[I

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:I

.field public u:F

.field public v:I

.field public w:F

.field public x:[I

.field public y:F

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/f/b/h/d;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, La/f/b/h/d;->d:La/f/b/h/l/k;

    iput-object v1, p0, La/f/b/h/d;->e:La/f/b/h/l/m;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, La/f/b/h/d;->f:[Z

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, La/f/b/h/d;->g:[I

    const/4 v4, 0x1

    iput-boolean v4, p0, La/f/b/h/d;->h:Z

    iput-boolean v0, p0, La/f/b/h/d;->i:Z

    iput-boolean v0, p0, La/f/b/h/d;->j:Z

    const/4 v5, -0x1

    iput v5, p0, La/f/b/h/d;->k:I

    iput v5, p0, La/f/b/h/d;->l:I

    iput v0, p0, La/f/b/h/d;->m:I

    iput v0, p0, La/f/b/h/d;->n:I

    new-array v6, v2, [I

    iput-object v6, p0, La/f/b/h/d;->o:[I

    iput v0, p0, La/f/b/h/d;->p:I

    iput v0, p0, La/f/b/h/d;->q:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, La/f/b/h/d;->r:F

    iput v0, p0, La/f/b/h/d;->s:I

    iput v0, p0, La/f/b/h/d;->t:I

    iput v6, p0, La/f/b/h/d;->u:F

    iput v5, p0, La/f/b/h/d;->v:I

    iput v6, p0, La/f/b/h/d;->w:F

    new-array v6, v2, [I

    fill-array-data v6, :array_2

    iput-object v6, p0, La/f/b/h/d;->x:[I

    const/4 v6, 0x0

    iput v6, p0, La/f/b/h/d;->y:F

    iput-boolean v0, p0, La/f/b/h/d;->z:Z

    iput-boolean v0, p0, La/f/b/h/d;->B:Z

    iput v0, p0, La/f/b/h/d;->C:I

    iput v0, p0, La/f/b/h/d;->D:I

    new-instance v7, La/f/b/h/c;

    sget-object v8, La/f/b/h/c$a;->c:La/f/b/h/c$a;

    invoke-direct {v7, p0, v8}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v7, p0, La/f/b/h/d;->E:La/f/b/h/c;

    new-instance v8, La/f/b/h/c;

    sget-object v9, La/f/b/h/c$a;->d:La/f/b/h/c$a;

    invoke-direct {v8, p0, v9}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v8, p0, La/f/b/h/d;->F:La/f/b/h/c;

    new-instance v9, La/f/b/h/c;

    sget-object v10, La/f/b/h/c$a;->e:La/f/b/h/c$a;

    invoke-direct {v9, p0, v10}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v9, p0, La/f/b/h/d;->G:La/f/b/h/c;

    new-instance v10, La/f/b/h/c;

    sget-object v11, La/f/b/h/c$a;->f:La/f/b/h/c$a;

    invoke-direct {v10, p0, v11}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v10, p0, La/f/b/h/d;->H:La/f/b/h/c;

    new-instance v11, La/f/b/h/c;

    sget-object v12, La/f/b/h/c$a;->g:La/f/b/h/c$a;

    invoke-direct {v11, p0, v12}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v11, p0, La/f/b/h/d;->I:La/f/b/h/c;

    new-instance v12, La/f/b/h/c;

    sget-object v13, La/f/b/h/c$a;->i:La/f/b/h/c$a;

    invoke-direct {v12, p0, v13}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v12, p0, La/f/b/h/d;->J:La/f/b/h/c;

    new-instance v12, La/f/b/h/c;

    sget-object v13, La/f/b/h/c$a;->j:La/f/b/h/c$a;

    invoke-direct {v12, p0, v13}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v12, p0, La/f/b/h/d;->K:La/f/b/h/c;

    new-instance v12, La/f/b/h/c;

    sget-object v13, La/f/b/h/c$a;->h:La/f/b/h/c$a;

    invoke-direct {v12, p0, v13}, La/f/b/h/c;-><init>(La/f/b/h/d;La/f/b/h/c$a;)V

    iput-object v12, p0, La/f/b/h/d;->L:La/f/b/h/c;

    const/4 v13, 0x6

    new-array v13, v13, [La/f/b/h/c;

    aput-object v7, v13, v0

    aput-object v9, v13, v4

    aput-object v8, v13, v2

    const/4 v7, 0x3

    aput-object v10, v13, v7

    aput-object v11, v13, v3

    const/4 v3, 0x5

    aput-object v12, v13, v3

    iput-object v13, p0, La/f/b/h/d;->M:[La/f/b/h/c;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    new-array v7, v2, [Z

    iput-object v7, p0, La/f/b/h/d;->O:[Z

    new-array v7, v2, [La/f/b/h/d$a;

    sget-object v8, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    aput-object v8, v7, v0

    aput-object v8, v7, v4

    iput-object v7, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    iput-object v1, p0, La/f/b/h/d;->Q:La/f/b/h/d;

    iput v0, p0, La/f/b/h/d;->R:I

    iput v0, p0, La/f/b/h/d;->S:I

    iput v6, p0, La/f/b/h/d;->T:F

    iput v5, p0, La/f/b/h/d;->U:I

    iput v0, p0, La/f/b/h/d;->V:I

    iput v0, p0, La/f/b/h/d;->W:I

    iput v0, p0, La/f/b/h/d;->X:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, p0, La/f/b/h/d;->a0:F

    iput v6, p0, La/f/b/h/d;->b0:F

    iput v0, p0, La/f/b/h/d;->d0:I

    iput-object v1, p0, La/f/b/h/d;->e0:Ljava/lang/String;

    iput v0, p0, La/f/b/h/d;->f0:I

    iput v0, p0, La/f/b/h/d;->g0:I

    new-array v6, v2, [F

    fill-array-data v6, :array_3

    iput-object v6, p0, La/f/b/h/d;->h0:[F

    new-array v6, v2, [La/f/b/h/d;

    aput-object v1, v6, v0

    aput-object v1, v6, v4

    iput-object v6, p0, La/f/b/h/d;->i0:[La/f/b/h/d;

    new-array v2, v2, [La/f/b/h/d;

    aput-object v1, v2, v0

    aput-object v1, v2, v4

    iput-object v2, p0, La/f/b/h/d;->j0:[La/f/b/h/d;

    iput v5, p0, La/f/b/h/d;->k0:I

    iput v5, p0, La/f/b/h/d;->l0:I

    .line 1
    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->J:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->K:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    iget-object v1, p0, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, La/f/b/h/d;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/f/b/h/d;->F:La/f/b/h/c;

    .line 1
    iget-boolean v0, v0, La/f/b/h/c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La/f/b/h/d;->H:La/f/b/h/c;

    .line 3
    iget-boolean v0, v0, La/f/b/h/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public B()V
    .locals 6

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->J:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->K:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    iget-object v0, p0, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f/b/h/d;->Q:La/f/b/h/d;

    const/4 v1, 0x0

    iput v1, p0, La/f/b/h/d;->y:F

    const/4 v2, 0x0

    iput v2, p0, La/f/b/h/d;->R:I

    iput v2, p0, La/f/b/h/d;->S:I

    iput v1, p0, La/f/b/h/d;->T:F

    const/4 v1, -0x1

    iput v1, p0, La/f/b/h/d;->U:I

    iput v2, p0, La/f/b/h/d;->V:I

    iput v2, p0, La/f/b/h/d;->W:I

    iput v2, p0, La/f/b/h/d;->X:I

    iput v2, p0, La/f/b/h/d;->Y:I

    iput v2, p0, La/f/b/h/d;->Z:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, La/f/b/h/d;->a0:F

    iput v3, p0, La/f/b/h/d;->b0:F

    iget-object v3, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    sget-object v4, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, La/f/b/h/d;->c0:Ljava/lang/Object;

    iput v2, p0, La/f/b/h/d;->d0:I

    iput v2, p0, La/f/b/h/d;->f0:I

    iput v2, p0, La/f/b/h/d;->g0:I

    iget-object v0, p0, La/f/b/h/d;->h0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, La/f/b/h/d;->k:I

    iput v1, p0, La/f/b/h/d;->l:I

    iget-object v0, p0, La/f/b/h/d;->x:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, La/f/b/h/d;->m:I

    iput v2, p0, La/f/b/h/d;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, La/f/b/h/d;->r:F

    iput v0, p0, La/f/b/h/d;->u:F

    iput v3, p0, La/f/b/h/d;->q:I

    iput v3, p0, La/f/b/h/d;->t:I

    iput v2, p0, La/f/b/h/d;->p:I

    iput v2, p0, La/f/b/h/d;->s:I

    iput v1, p0, La/f/b/h/d;->v:I

    iput v0, p0, La/f/b/h/d;->w:F

    iget-object v0, p0, La/f/b/h/d;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iput-boolean v2, p0, La/f/b/h/d;->B:Z

    iget-object v0, p0, La/f/b/h/d;->O:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    iput-boolean v5, p0, La/f/b/h/d;->h:Z

    return-void
.end method

.method public C()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, La/f/b/h/d;->i:Z

    iput-boolean v0, p0, La/f/b/h/d;->j:Z

    iget-object v1, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, La/f/b/h/d;->N:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/f/b/h/c;

    .line 1
    iput-boolean v0, v3, La/f/b/h/c;->c:Z

    iput v0, v3, La/f/b/h/c;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public D(La/f/b/c;)V
    .locals 0

    iget-object p1, p0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->J:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    iget-object p1, p0, La/f/b/h/d;->K:La/f/b/h/c;

    invoke-virtual {p1}, La/f/b/h/c;->i()V

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, La/f/b/h/d;->X:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, La/f/b/h/d;->z:Z

    return-void
.end method

.method public F(II)V
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    .line 1
    iput p1, v0, La/f/b/h/c;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, La/f/b/h/c;->c:Z

    .line 2
    iget-object v0, p0, La/f/b/h/d;->G:La/f/b/h/c;

    .line 3
    iput p2, v0, La/f/b/h/c;->b:I

    iput-boolean v1, v0, La/f/b/h/c;->c:Z

    .line 4
    iput p1, p0, La/f/b/h/d;->V:I

    sub-int/2addr p2, p1

    iput p2, p0, La/f/b/h/d;->R:I

    iput-boolean v1, p0, La/f/b/h/d;->i:Z

    return-void
.end method

.method public G(II)V
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->F:La/f/b/h/c;

    .line 1
    iput p1, v0, La/f/b/h/c;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, La/f/b/h/c;->c:Z

    .line 2
    iget-object v0, p0, La/f/b/h/d;->H:La/f/b/h/c;

    .line 3
    iput p2, v0, La/f/b/h/c;->b:I

    iput-boolean v1, v0, La/f/b/h/c;->c:Z

    .line 4
    iput p1, p0, La/f/b/h/d;->W:I

    sub-int/2addr p2, p1

    iput p2, p0, La/f/b/h/d;->S:I

    iget-boolean p2, p0, La/f/b/h/d;->z:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, La/f/b/h/d;->I:La/f/b/h/c;

    iget v0, p0, La/f/b/h/d;->X:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, La/f/b/h/c;->j(I)V

    :cond_0
    iput-boolean v1, p0, La/f/b/h/d;->j:Z

    return-void
.end method

.method public H(I)V
    .locals 1

    iput p1, p0, La/f/b/h/d;->S:I

    iget v0, p0, La/f/b/h/d;->Z:I

    if-ge p1, v0, :cond_0

    iput v0, p0, La/f/b/h/d;->S:I

    :cond_0
    return-void
.end method

.method public I(La/f/b/h/d$a;)V
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public J(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, La/f/b/h/d;->Z:I

    return-void
.end method

.method public K(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, La/f/b/h/d;->Y:I

    return-void
.end method

.method public L(La/f/b/h/d$a;)V
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public M(I)V
    .locals 1

    iput p1, p0, La/f/b/h/d;->R:I

    iget v0, p0, La/f/b/h/d;->Y:I

    if-ge p1, v0, :cond_0

    iput v0, p0, La/f/b/h/d;->R:I

    :cond_0
    return-void
.end method

.method public N(ZZ)V
    .locals 8

    sget-object v0, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    iget-object v1, p0, La/f/b/h/d;->d:La/f/b/h/l/k;

    .line 1
    iget-boolean v2, v1, La/f/b/h/l/o;->g:Z

    and-int/2addr p1, v2

    .line 2
    iget-object v2, p0, La/f/b/h/d;->e:La/f/b/h/l/m;

    .line 3
    iget-boolean v3, v2, La/f/b/h/l/o;->g:Z

    and-int/2addr p2, v3

    .line 4
    iget-object v3, v1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v3, v3, La/f/b/h/l/f;->g:I

    iget-object v4, v2, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v4, v4, La/f/b/h/l/f;->g:I

    iget-object v1, v1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v1, v1, La/f/b/h/l/f;->g:I

    iget-object v2, v2, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v2, v2, La/f/b/h/l/f;->g:I

    sub-int v5, v1, v3

    sub-int v6, v2, v4

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_0

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_0

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    sub-int/2addr v1, v3

    sub-int/2addr v2, v4

    if-eqz p1, :cond_2

    iput v3, p0, La/f/b/h/d;->V:I

    :cond_2
    if-eqz p2, :cond_3

    iput v4, p0, La/f/b/h/d;->W:I

    :cond_3
    iget v3, p0, La/f/b/h/d;->d0:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iput v7, p0, La/f/b/h/d;->R:I

    iput v7, p0, La/f/b/h/d;->S:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object p1, p1, v7

    if-ne p1, v0, :cond_5

    iget p1, p0, La/f/b/h/d;->R:I

    if-ge v1, p1, :cond_5

    move v1, p1

    :cond_5
    iput v1, p0, La/f/b/h/d;->R:I

    iget p1, p0, La/f/b/h/d;->Y:I

    if-ge v1, p1, :cond_6

    iput p1, p0, La/f/b/h/d;->R:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_7

    iget p1, p0, La/f/b/h/d;->S:I

    if-ge v2, p1, :cond_7

    move v2, p1

    :cond_7
    iput v2, p0, La/f/b/h/d;->S:I

    iget p1, p0, La/f/b/h/d;->Z:I

    if-ge v2, p1, :cond_8

    iput p1, p0, La/f/b/h/d;->S:I

    :cond_8
    return-void
.end method

.method public O(La/f/b/d;Z)V
    .locals 6

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {p1, v0}, La/f/b/d;->o(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {p1, v1}, La/f/b/d;->o(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {p1, v2}, La/f/b/d;->o(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {p1, v3}, La/f/b/d;->o(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    iget-object v3, p0, La/f/b/h/d;->d:La/f/b/h/l/k;

    if-eqz v3, :cond_0

    iget-object v4, v3, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v5, v4, La/f/b/h/l/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v5, v3, La/f/b/h/l/f;->j:Z

    if-eqz v5, :cond_0

    iget v0, v4, La/f/b/h/l/f;->g:I

    iget v2, v3, La/f/b/h/l/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, La/f/b/h/d;->e:La/f/b/h/l/m;

    if-eqz p2, :cond_1

    iget-object v3, p2, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v4, v3, La/f/b/h/l/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v4, p2, La/f/b/h/l/f;->j:Z

    if-eqz v4, :cond_1

    iget v1, v3, La/f/b/h/l/f;->g:I

    iget p1, p2, La/f/b/h/l/f;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    .line 1
    iput v0, p0, La/f/b/h/d;->V:I

    iput v1, p0, La/f/b/h/d;->W:I

    iget p2, p0, La/f/b/h/d;->d0:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    iput v4, p0, La/f/b/h/d;->R:I

    iput v4, p0, La/f/b/h/d;->S:I

    goto :goto_0

    :cond_4
    iget-object p2, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v0, p2, v4

    sget-object v1, La/f/b/h/d$a;->b:La/f/b/h/d$a;

    if-ne v0, v1, :cond_5

    iget v0, p0, La/f/b/h/d;->R:I

    if-ge v2, v0, :cond_5

    move v2, v0

    :cond_5
    const/4 v0, 0x1

    aget-object p2, p2, v0

    if-ne p2, v1, :cond_6

    iget p2, p0, La/f/b/h/d;->S:I

    if-ge p1, p2, :cond_6

    move p1, p2

    :cond_6
    iput v2, p0, La/f/b/h/d;->R:I

    iput p1, p0, La/f/b/h/d;->S:I

    iget p2, p0, La/f/b/h/d;->Z:I

    if-ge p1, p2, :cond_7

    iput p2, p0, La/f/b/h/d;->S:I

    :cond_7
    iget p1, p0, La/f/b/h/d;->Y:I

    if-ge v2, p1, :cond_8

    iput p1, p0, La/f/b/h/d;->R:I

    :cond_8
    :goto_0
    return-void
.end method

.method public b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/b/h/e;",
            "La/f/b/d;",
            "Ljava/util/HashSet<",
            "La/f/b/h/d;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, La/f/b/h/i;->a(La/f/b/h/e;La/f/b/d;La/f/b/h/d;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, La/f/b/h/e;->Y(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, La/f/b/h/d;->d(La/f/b/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, La/f/b/h/d;->E:La/f/b/h/c;

    .line 1
    iget-object p5, p5, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    .line 2
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, La/f/b/h/d;->b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p5, p0, La/f/b/h/d;->G:La/f/b/h/c;

    .line 3
    iget-object p5, p5, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 4
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, La/f/b/h/d;->b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, La/f/b/h/d;->F:La/f/b/h/c;

    .line 5
    iget-object p5, p5, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    .line 6
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, La/f/b/h/d;->b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, La/f/b/h/d;->H:La/f/b/h/c;

    .line 7
    iget-object p5, p5, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    .line 8
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, La/f/b/h/d;->b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p5, p0, La/f/b/h/d;->I:La/f/b/h/c;

    .line 9
    iget-object p5, p5, La/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 10
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, La/f/b/h/d;->b(La/f/b/h/e;La/f/b/d;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public c()Z
    .locals 1

    instance-of v0, p0, La/f/b/h/j;

    if-nez v0, :cond_1

    instance-of v0, p0, La/f/b/h/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(La/f/b/d;Z)V
    .locals 53

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    sget-object v13, La/f/b/h/d$a;->c:La/f/b/h/d$a;

    iget-object v0, v15, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v12

    iget-object v0, v15, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v11

    iget-object v0, v15, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v10

    iget-object v0, v15, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v9

    iget-object v0, v15, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v8

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, v0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v1, v1, v6

    if-ne v1, v13, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v0, v0, v7

    if-ne v0, v13, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v28, v0

    move/from16 v29, v1

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    iget v0, v15, La/f/b/h/d;->d0:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    .line 1
    iget-object v0, v15, La/f/b/h/d;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, v15, La/f/b/h/d;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/f/b/h/c;

    invoke-virtual {v2}, La/f/b/h/c;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    .line 2
    iget-object v0, v15, La/f/b/h/d;->O:[Z

    aget-boolean v1, v0, v6

    if-nez v1, :cond_5

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, v15, La/f/b/h/d;->i:Z

    if-nez v0, :cond_6

    iget-boolean v1, v15, La/f/b/h/d;->j:Z

    if-eqz v1, :cond_a

    :cond_6
    if-eqz v0, :cond_7

    iget v0, v15, La/f/b/h/d;->V:I

    invoke-virtual {v14, v12, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget v0, v15, La/f/b/h/d;->V:I

    iget v1, v15, La/f/b/h/d;->R:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v11, v0}, La/f/b/d;->e(La/f/b/g;I)V

    if-eqz v29, :cond_7

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_7

    check-cast v0, La/f/b/h/e;

    iget-object v1, v15, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v0, v1}, La/f/b/h/e;->U(La/f/b/h/c;)V

    iget-object v1, v15, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v0, v1}, La/f/b/h/e;->S(La/f/b/h/c;)V

    :cond_7
    iget-boolean v0, v15, La/f/b/h/d;->j:Z

    if-eqz v0, :cond_9

    iget v0, v15, La/f/b/h/d;->W:I

    invoke-virtual {v14, v10, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget v0, v15, La/f/b/h/d;->W:I

    iget v1, v15, La/f/b/h/d;->S:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v9, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v15, La/f/b/h/d;->W:I

    iget v1, v15, La/f/b/h/d;->X:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v8, v0}, La/f/b/d;->e(La/f/b/g;I)V

    :cond_8
    if-eqz v28, :cond_9

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_9

    check-cast v0, La/f/b/h/e;

    iget-object v1, v15, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0, v1}, La/f/b/h/e;->U(La/f/b/h/c;)V

    iget-object v1, v15, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v0, v1}, La/f/b/h/e;->T(La/f/b/h/c;)V

    :cond_9
    iget-boolean v0, v15, La/f/b/h/d;->i:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v15, La/f/b/h/d;->j:Z

    if-eqz v0, :cond_a

    iput-boolean v6, v15, La/f/b/h/d;->i:Z

    iput-boolean v6, v15, La/f/b/h/d;->j:Z

    return-void

    :cond_a
    if-eqz p2, :cond_d

    iget-object v0, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    if-eqz v0, :cond_d

    iget-object v1, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    if-eqz v1, :cond_d

    iget-object v2, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v3, v2, La/f/b/h/l/f;->j:Z

    if-eqz v3, :cond_d

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v0, v0, La/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v0, v0, La/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v0, v0, La/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_d

    iget v0, v2, La/f/b/h/l/f;->g:I

    invoke-virtual {v14, v12, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    invoke-virtual {v14, v11, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    invoke-virtual {v14, v10, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    invoke-virtual {v14, v9, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/m;->k:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    invoke-virtual {v14, v8, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_c

    if-eqz v29, :cond_b

    iget-object v0, v15, La/f/b/h/d;->f:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->w()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    iget-object v0, v0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    invoke-virtual {v14, v0, v11, v6, v5}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_b
    if-eqz v28, :cond_c

    iget-object v0, v15, La/f/b/h/d;->f:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->x()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    iget-object v0, v0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    invoke-virtual {v14, v0, v9, v6, v5}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_c
    iput-boolean v6, v15, La/f/b/h/d;->i:Z

    iput-boolean v6, v15, La/f/b/h/d;->j:Z

    return-void

    :cond_d
    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_12

    invoke-virtual {v15, v6}, La/f/b/h/d;->v(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    check-cast v0, La/f/b/h/e;

    invoke-virtual {v0, v15, v6}, La/f/b/h/e;->Q(La/f/b/h/d;I)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->w()Z

    move-result v0

    :goto_5
    invoke-virtual {v15, v7}, La/f/b/h/d;->v(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    check-cast v1, La/f/b/h/e;

    invoke-virtual {v1, v15, v7}, La/f/b/h/e;->Q(La/f/b/h/d;I)V

    const/4 v1, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->x()Z

    move-result v1

    :goto_6
    if-nez v0, :cond_10

    if-eqz v29, :cond_10

    iget v2, v15, La/f/b/h/d;->d0:I

    if-eq v2, v5, :cond_10

    iget-object v2, v15, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v2, :cond_10

    iget-object v2, v15, La/f/b/h/d;->G:La/f/b/h/c;

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v2, :cond_10

    iget-object v2, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    iget-object v2, v2, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v14, v2}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v2

    invoke-virtual {v14, v2, v11, v6, v7}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_10
    if-nez v1, :cond_11

    if-eqz v28, :cond_11

    iget v2, v15, La/f/b/h/d;->d0:I

    if-eq v2, v5, :cond_11

    iget-object v2, v15, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v2, :cond_11

    iget-object v2, v15, La/f/b/h/d;->H:La/f/b/h/c;

    iget-object v2, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v2, :cond_11

    iget-object v2, v15, La/f/b/h/d;->I:La/f/b/h/c;

    if-nez v2, :cond_11

    iget-object v2, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    iget-object v2, v2, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v14, v2}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v2

    invoke-virtual {v14, v2, v9, v6, v7}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_11
    move/from16 v31, v0

    move/from16 v30, v1

    goto :goto_7

    :cond_12
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_7
    iget v0, v15, La/f/b/h/d;->R:I

    iget v1, v15, La/f/b/h/d;->Y:I

    if-ge v0, v1, :cond_13

    goto :goto_8

    :cond_13
    move v1, v0

    :goto_8
    iget v2, v15, La/f/b/h/d;->S:I

    iget v3, v15, La/f/b/h/d;->Z:I

    if-ge v2, v3, :cond_14

    goto :goto_9

    :cond_14
    move v3, v2

    :goto_9
    iget-object v4, v15, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v5, v4, v6

    sget-object v6, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    move/from16 v18, v1

    if-eq v5, v6, :cond_15

    const/4 v5, 0x1

    goto :goto_a

    :cond_15
    const/4 v5, 0x0

    :goto_a
    aget-object v1, v4, v7

    if-eq v1, v6, :cond_16

    const/4 v1, 0x1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    iget v7, v15, La/f/b/h/d;->U:I

    iput v7, v15, La/f/b/h/d;->v:I

    move/from16 v20, v3

    iget v3, v15, La/f/b/h/d;->T:F

    iput v3, v15, La/f/b/h/d;->w:F

    move-object/from16 v21, v8

    iget v8, v15, La/f/b/h/d;->m:I

    move-object/from16 v22, v9

    iget v9, v15, La/f/b/h/d;->n:I

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v27, v10

    cmpl-float v23, v3, v23

    if-lez v23, :cond_29

    iget v10, v15, La/f/b/h/d;->d0:I

    move-object/from16 v32, v11

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2a

    const/4 v10, 0x0

    aget-object v11, v4, v10

    if-ne v11, v6, :cond_17

    if-nez v8, :cond_17

    const/4 v8, 0x3

    :cond_17
    const/4 v11, 0x1

    aget-object v10, v4, v11

    if-ne v10, v6, :cond_18

    if-nez v9, :cond_18

    const/4 v9, 0x3

    :cond_18
    const/4 v10, 0x0

    aget-object v11, v4, v10

    const/high16 v26, 0x3f800000    # 1.0f

    if-ne v11, v6, :cond_23

    const/4 v11, 0x1

    aget-object v10, v4, v11

    if-ne v10, v6, :cond_23

    const/4 v10, 0x3

    if-ne v8, v10, :cond_23

    if-ne v9, v10, :cond_23

    const/4 v0, -0x1

    if-ne v7, v0, :cond_1a

    if-eqz v5, :cond_19

    if-nez v1, :cond_19

    const/4 v2, 0x0

    .line 3
    iput v2, v15, La/f/b/h/d;->v:I

    goto :goto_c

    :cond_19
    if-nez v5, :cond_1a

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    iput v1, v15, La/f/b/h/d;->v:I

    if-ne v7, v0, :cond_1a

    div-float v0, v26, v3

    iput v0, v15, La/f/b/h/d;->w:F

    :cond_1a
    :goto_c
    iget v0, v15, La/f/b/h/d;->v:I

    if-nez v0, :cond_1c

    iget-object v0, v15, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v15, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_d
    iput v0, v15, La/f/b/h/d;->v:I

    goto :goto_e

    :cond_1c
    const/4 v0, 0x1

    iget v1, v15, La/f/b/h/d;->v:I

    if-ne v1, v0, :cond_1e

    iget-object v0, v15, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v15, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    const/4 v0, 0x0

    goto :goto_d

    :cond_1e
    :goto_e
    iget v0, v15, La/f/b/h/d;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    iget-object v0, v15, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v15, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v15, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v15, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    iget-object v0, v15, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v15, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_f
    iput v0, v15, La/f/b/h/d;->v:I

    goto :goto_10

    :cond_20
    iget-object v0, v15, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, v15, La/f/b/h/d;->w:F

    div-float v0, v26, v0

    iput v0, v15, La/f/b/h/d;->w:F

    const/4 v0, 0x1

    goto :goto_f

    :cond_21
    :goto_10
    iget v0, v15, La/f/b/h/d;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    iget v0, v15, La/f/b/h/d;->p:I

    if-lez v0, :cond_22

    iget v1, v15, La/f/b/h/d;->s:I

    if-nez v1, :cond_22

    const/4 v1, 0x0

    iput v1, v15, La/f/b/h/d;->v:I

    goto/16 :goto_11

    :cond_22
    if-nez v0, :cond_28

    iget v0, v15, La/f/b/h/d;->s:I

    if-lez v0, :cond_28

    iget v0, v15, La/f/b/h/d;->w:F

    div-float v0, v26, v0

    iput v0, v15, La/f/b/h/d;->w:F

    const/4 v0, 0x1

    iput v0, v15, La/f/b/h/d;->v:I

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    .line 4
    aget-object v5, v4, v1

    if-ne v5, v6, :cond_25

    const/4 v5, 0x3

    if-ne v8, v5, :cond_25

    iput v1, v15, La/f/b/h/d;->v:I

    int-to-float v0, v2

    mul-float v3, v3, v0

    float-to-int v1, v3

    const/4 v2, 0x1

    aget-object v0, v4, v2

    if-eq v0, v6, :cond_24

    move/from16 v35, v9

    move/from16 v33, v20

    const/16 v17, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x4

    goto :goto_13

    :cond_24
    move/from16 v36, v8

    move/from16 v35, v9

    move/from16 v33, v20

    const/16 v17, 0x0

    goto :goto_12

    :cond_25
    const/4 v2, 0x1

    aget-object v1, v4, v2

    if-ne v1, v6, :cond_28

    const/4 v1, 0x3

    if-ne v9, v1, :cond_28

    iput v2, v15, La/f/b/h/d;->v:I

    const/4 v1, -0x1

    if-ne v7, v1, :cond_26

    div-float v1, v26, v3

    iput v1, v15, La/f/b/h/d;->w:F

    :cond_26
    iget v1, v15, La/f/b/h/d;->w:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v3, v1

    const/16 v17, 0x0

    aget-object v0, v4, v17

    move/from16 v33, v3

    move/from16 v36, v8

    if-eq v0, v6, :cond_27

    move/from16 v1, v18

    const/16 v34, 0x0

    const/16 v35, 0x4

    goto :goto_13

    :cond_27
    move/from16 v35, v9

    move/from16 v1, v18

    goto :goto_12

    :cond_28
    :goto_11
    const/16 v17, 0x0

    move/from16 v36, v8

    move/from16 v35, v9

    move/from16 v1, v18

    move/from16 v33, v20

    :goto_12
    const/16 v34, 0x1

    goto :goto_13

    :cond_29
    move-object/from16 v32, v11

    :cond_2a
    const/16 v17, 0x0

    move/from16 v36, v8

    move/from16 v35, v9

    move/from16 v1, v18

    move/from16 v33, v20

    const/16 v34, 0x0

    :goto_13
    iget-object v0, v15, La/f/b/h/d;->o:[I

    aput v36, v0, v17

    const/4 v2, 0x1

    aput v35, v0, v2

    if-eqz v34, :cond_2c

    iget v0, v15, La/f/b/h/d;->v:I

    const/4 v2, -0x1

    if-eqz v0, :cond_2b

    if-ne v0, v2, :cond_2d

    :cond_2b
    const/16 v18, 0x1

    goto :goto_14

    :cond_2c
    const/4 v2, -0x1

    :cond_2d
    const/16 v18, 0x0

    :goto_14
    if-eqz v34, :cond_2f

    iget v0, v15, La/f/b/h/d;->v:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2e

    if-ne v0, v2, :cond_2f

    :cond_2e
    const/16 v37, 0x1

    goto :goto_15

    :cond_2f
    const/16 v37, 0x0

    :goto_15
    iget-object v0, v15, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-ne v0, v13, :cond_30

    instance-of v0, v15, La/f/b/h/e;

    if-eqz v0, :cond_30

    const/4 v9, 0x1

    goto :goto_16

    :cond_30
    const/4 v9, 0x0

    :goto_16
    if-eqz v9, :cond_31

    const/16 v20, 0x0

    goto :goto_17

    :cond_31
    move/from16 v20, v1

    :goto_17
    iget-object v0, v15, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v38, v0, 0x1

    iget-object v0, v15, La/f/b/h/d;->O:[Z

    const/4 v2, 0x0

    aget-boolean v23, v0, v2

    aget-boolean v39, v0, v1

    iget v0, v15, La/f/b/h/d;->k:I

    const/4 v11, 0x2

    const/16 v40, 0x0

    if-eq v0, v11, :cond_38

    iget-boolean v0, v15, La/f/b/h/d;->i:Z

    if-nez v0, :cond_38

    if-eqz p2, :cond_34

    iget-object v0, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    if-eqz v0, :cond_34

    iget-object v1, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v2, v1, La/f/b/h/l/f;->j:Z

    if-eqz v2, :cond_34

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v0, v0, La/f/b/h/l/f;->j:Z

    if-nez v0, :cond_32

    goto :goto_18

    :cond_32
    if-eqz p2, :cond_38

    iget v0, v1, La/f/b/h/l/f;->g:I

    invoke-virtual {v14, v12, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->d:La/f/b/h/l/k;

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    move-object/from16 v10, v32

    invoke-virtual {v14, v10, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_33

    if-eqz v29, :cond_33

    iget-object v0, v15, La/f/b/h/d;->f:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_33

    invoke-virtual/range {p0 .. p0}, La/f/b/h/d;->w()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    iget-object v0, v0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v14, v0, v10, v1, v5}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_33
    move-object/from16 v48, v6

    move-object/from16 v32, v10

    goto/16 :goto_1c

    :cond_34
    :goto_18
    move-object/from16 v10, v32

    const/16 v5, 0x8

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_35

    iget-object v0, v0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    move-object v7, v0

    goto :goto_19

    :cond_35
    move-object/from16 v7, v40

    :goto_19
    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_36

    iget-object v0, v0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    move-object v8, v0

    goto :goto_1a

    :cond_36
    move-object/from16 v8, v40

    :goto_1a
    iget-object v0, v15, La/f/b/h/d;->f:[Z

    const/16 v16, 0x0

    aget-boolean v17, v0, v16

    iget-object v0, v15, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v32, v0, v16

    iget-object v4, v15, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object v3, v15, La/f/b/h/d;->G:La/f/b/h/c;

    iget v1, v15, La/f/b/h/d;->V:I

    iget v2, v15, La/f/b/h/d;->Y:I

    iget-object v5, v15, La/f/b/h/d;->x:[I

    aget v43, v5, v16

    iget v5, v15, La/f/b/h/d;->a0:F

    const/16 v19, 0x1

    aget-object v0, v0, v19

    if-ne v0, v6, :cond_37

    const/16 v44, 0x1

    goto :goto_1b

    :cond_37
    const/16 v44, 0x0

    :goto_1b
    iget v0, v15, La/f/b/h/d;->p:I

    move/from16 v24, v0

    iget v0, v15, La/f/b/h/d;->q:I

    move/from16 v25, v0

    iget v0, v15, La/f/b/h/d;->r:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v45, v1

    move-object/from16 v1, p1

    move/from16 v41, v2

    const/4 v2, 0x1

    move-object/from16 v46, v3

    move/from16 v3, v29

    move-object/from16 v47, v4

    move/from16 v4, v28

    move/from16 v42, v5

    move/from16 v5, v17

    move-object/from16 v48, v6

    move-object v6, v8

    const/4 v8, 0x1

    move-object/from16 v49, v21

    move-object/from16 v8, v32

    move-object/from16 v50, v22

    move-object/from16 v16, v10

    move-object/from16 v51, v27

    move-object/from16 v10, v47

    move-object/from16 v32, v16

    move-object/from16 v11, v46

    move-object/from16 v46, v12

    move/from16 v12, v45

    move-object/from16 v52, v13

    move/from16 v13, v20

    move/from16 v14, v41

    move/from16 v15, v43

    move/from16 v16, v42

    move/from16 v17, v18

    move/from16 v18, v44

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v23

    move/from16 v22, v36

    move/from16 v23, v35

    move/from16 v27, v38

    invoke-virtual/range {v0 .. v27}, La/f/b/h/d;->f(La/f/b/d;ZZZZLa/f/b/g;La/f/b/g;La/f/b/h/d$a;ZLa/f/b/h/c;La/f/b/h/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_1d

    :cond_38
    move-object/from16 v48, v6

    :goto_1c
    move-object/from16 v46, v12

    move-object/from16 v52, v13

    move-object/from16 v49, v21

    move-object/from16 v50, v22

    move-object/from16 v51, v27

    :goto_1d
    if-eqz p2, :cond_3c

    move-object/from16 v15, p0

    iget-object v0, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    if-eqz v0, :cond_3b

    iget-object v1, v0, La/f/b/h/l/o;->h:La/f/b/h/l/f;

    iget-boolean v2, v1, La/f/b/h/l/f;->j:Z

    if-eqz v2, :cond_3b

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget-boolean v0, v0, La/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_3b

    iget v0, v1, La/f/b/h/l/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v51

    invoke-virtual {v14, v13, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/o;->i:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    move-object/from16 v12, v50

    invoke-virtual {v14, v12, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->e:La/f/b/h/l/m;

    iget-object v0, v0, La/f/b/h/l/m;->k:La/f/b/h/l/f;

    iget v0, v0, La/f/b/h/l/f;->g:I

    move-object/from16 v1, v49

    invoke-virtual {v14, v1, v0}, La/f/b/d;->e(La/f/b/g;I)V

    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_3a

    if-nez v30, :cond_3a

    if-eqz v28, :cond_3a

    iget-object v2, v15, La/f/b/h/d;->f:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_39

    iget-object v0, v0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    goto :goto_1e

    :cond_39
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_1e

    :cond_3a
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1e
    const/4 v7, 0x0

    goto :goto_20

    :cond_3b
    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_1f

    :cond_3c
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    :goto_1f
    const/4 v7, 0x1

    :goto_20
    iget v0, v15, La/f/b/h/d;->l:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3d

    const/4 v6, 0x0

    goto :goto_21

    :cond_3d
    move v6, v7

    :goto_21
    if-eqz v6, :cond_48

    iget-boolean v0, v15, La/f/b/h/d;->j:Z

    if-nez v0, :cond_48

    iget-object v0, v15, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v0, v0, v11

    move-object/from16 v3, v52

    if-ne v0, v3, :cond_3e

    instance-of v0, v15, La/f/b/h/e;

    if-eqz v0, :cond_3e

    const/4 v9, 0x1

    goto :goto_22

    :cond_3e
    const/4 v9, 0x0

    :goto_22
    if-eqz v9, :cond_3f

    const/16 v33, 0x0

    :cond_3f
    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_40

    iget-object v0, v0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    move-object v7, v0

    goto :goto_23

    :cond_40
    move-object/from16 v7, v40

    :goto_23
    iget-object v0, v15, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_41

    iget-object v0, v0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    move-object v6, v0

    goto :goto_24

    :cond_41
    move-object/from16 v6, v40

    :goto_24
    iget v0, v15, La/f/b/h/d;->X:I

    if-gtz v0, :cond_42

    iget v3, v15, La/f/b/h/d;->d0:I

    if-ne v3, v2, :cond_46

    :cond_42
    iget-object v3, v15, La/f/b/h/d;->I:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v3, :cond_44

    invoke-virtual {v14, v1, v13, v0, v2}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    iget-object v0, v15, La/f/b/h/d;->I:La/f/b/h/c;

    iget-object v0, v0, La/f/b/h/c;->f:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    invoke-virtual {v14, v1, v0, v10, v2}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    if-eqz v28, :cond_43

    iget-object v0, v15, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {v14, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_43
    const/16 v27, 0x0

    goto :goto_26

    :cond_44
    iget v3, v15, La/f/b/h/d;->d0:I

    if-ne v3, v2, :cond_45

    invoke-virtual {v14, v1, v13, v10, v2}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_25

    :cond_45
    invoke-virtual {v14, v1, v13, v0, v2}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    :cond_46
    :goto_25
    move/from16 v27, v38

    :goto_26
    iget-object v0, v15, La/f/b/h/d;->f:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v8, v0, v11

    iget-object v4, v15, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object v3, v15, La/f/b/h/d;->H:La/f/b/h/c;

    iget v1, v15, La/f/b/h/d;->W:I

    iget v2, v15, La/f/b/h/d;->Z:I

    iget-object v10, v15, La/f/b/h/d;->x:[I

    aget v16, v10, v11

    iget v10, v15, La/f/b/h/d;->b0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    move-object/from16 v11, v48

    if-ne v0, v11, :cond_47

    const/16 v18, 0x1

    goto :goto_27

    :cond_47
    const/16 v18, 0x0

    :goto_27
    iget v0, v15, La/f/b/h/d;->s:I

    move/from16 v24, v0

    iget v0, v15, La/f/b/h/d;->t:I

    move/from16 v25, v0

    iget v0, v15, La/f/b/h/d;->u:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move/from16 v21, v2

    const/4 v2, 0x0

    move-object v11, v3

    move/from16 v3, v28

    move-object/from16 v22, v4

    move/from16 v4, v29

    move/from16 v17, v10

    move-object/from16 v10, v22

    move-object/from16 v28, v12

    move/from16 v12, v20

    move-object/from16 v29, v13

    move/from16 v13, v33

    move/from16 v14, v21

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v37

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v39

    move/from16 v22, v35

    move/from16 v23, v36

    invoke-virtual/range {v0 .. v27}, La/f/b/h/d;->f(La/f/b/d;ZZZZLa/f/b/g;La/f/b/g;La/f/b/h/d$a;ZLa/f/b/h/c;La/f/b/h/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_28

    :cond_48
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    :goto_28
    if-eqz v34, :cond_4a

    const/16 v6, 0x8

    move-object/from16 v7, p0

    iget v0, v7, La/f/b/h/d;->v:I

    const/4 v1, 0x1

    iget v5, v7, La/f/b/h/d;->w:F

    if-ne v0, v1, :cond_49

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v32

    move-object/from16 v4, v46

    goto :goto_29

    :cond_49
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v46

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    :goto_29
    invoke-virtual/range {v0 .. v6}, La/f/b/d;->h(La/f/b/g;La/f/b/g;La/f/b/g;La/f/b/g;FI)V

    goto :goto_2a

    :cond_4a
    move-object/from16 v7, p0

    :goto_2a
    iget-object v0, v7, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {v0}, La/f/b/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, v7, La/f/b/h/d;->L:La/f/b/h/c;

    .line 5
    iget-object v0, v0, La/f/b/h/c;->f:La/f/b/h/c;

    .line 6
    iget-object v0, v0, La/f/b/h/c;->d:La/f/b/h/d;

    .line 7
    iget v1, v7, La/f/b/h/d;->y:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {v2}, La/f/b/h/c;->d()I

    move-result v2

    .line 8
    sget-object v3, La/f/b/h/c$a;->c:La/f/b/h/c$a;

    invoke-virtual {v7, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v9

    sget-object v4, La/f/b/h/c$a;->d:La/f/b/h/c$a;

    invoke-virtual {v7, v4}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v6

    invoke-virtual {v5, v6}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v11

    sget-object v6, La/f/b/h/c$a;->e:La/f/b/h/c$a;

    invoke-virtual {v7, v6}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v8

    invoke-virtual {v5, v8}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v16

    sget-object v8, La/f/b/h/c$a;->f:La/f/b/h/c$a;

    invoke-virtual {v7, v8}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v10

    invoke-virtual {v5, v10}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v12

    invoke-virtual {v0, v3}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v3

    invoke-virtual {v5, v3}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v3

    invoke-virtual {v0, v4}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v4

    invoke-virtual {v5, v4}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v13

    invoke-virtual {v0, v6}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v4

    invoke-virtual {v5, v4}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v4

    invoke-virtual {v0, v8}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v0

    invoke-virtual {v5, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 p2, v3

    move-object/from16 v19, v4

    mul-double v3, v17, v1

    double-to-float v15, v3

    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, La/f/b/b;->g(La/f/b/g;La/f/b/g;La/f/b/g;La/f/b/g;F)La/f/b/b;

    invoke-virtual {v5, v0}, La/f/b/d;->c(La/f/b/b;)V

    invoke-virtual/range {p1 .. p1}, La/f/b/d;->m()La/f/b/b;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-float v13, v3

    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, v19

    invoke-virtual/range {v8 .. v13}, La/f/b/b;->g(La/f/b/g;La/f/b/g;La/f/b/g;La/f/b/g;F)La/f/b/b;

    invoke-virtual {v5, v0}, La/f/b/d;->c(La/f/b/b;)V

    :cond_4b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 9
    iput-boolean v1, v0, La/f/b/h/d;->i:Z

    iput-boolean v1, v0, La/f/b/h/d;->j:Z

    return-void
.end method

.method public e()Z
    .locals 2

    iget v0, p0, La/f/b/h/d;->d0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(La/f/b/d;ZZZZLa/f/b/g;La/f/b/g;La/f/b/h/d$a;ZLa/f/b/h/c;La/f/b/h/c;IIIIFZZZZZIIIIFZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    sget-object v5, La/f/b/h/c$a;->f:La/f/b/h/c$a;

    invoke-virtual {v10, v13}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v9

    invoke-virtual {v10, v14}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v8

    .line 1
    iget-object v6, v13, La/f/b/h/c;->f:La/f/b/h/c;

    .line 2
    invoke-virtual {v10, v6}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v7

    .line 3
    iget-object v6, v14, La/f/b/h/c;->f:La/f/b/h/c;

    .line 4
    invoke-virtual {v10, v6}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->g()Z

    move-result v22

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->g()Z

    move-result v23

    iget-object v12, v0, La/f/b/h/d;->L:La/f/b/h/c;

    invoke-virtual {v12}, La/f/b/h/c;->g()Z

    move-result v12

    if-eqz v23, :cond_0

    add-int/lit8 v16, v22, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v22

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v16, v16, 0x1

    :cond_1
    move/from16 v2, v16

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_4

    if-eq v11, v6, :cond_4

    const/4 v6, 0x2

    if-eq v11, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-eq v14, v6, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x4

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iget v6, v0, La/f/b/h/d;->d0:I

    move/from16 v16, v11

    const/16 v11, 0x8

    if-ne v6, v11, :cond_6

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    move/from16 v6, p13

    :goto_4
    if-eqz p27, :cond_8

    if-nez v22, :cond_7

    if-nez v23, :cond_7

    if-nez v12, :cond_7

    move/from16 v11, p12

    invoke-virtual {v10, v9, v11}, La/f/b/d;->e(La/f/b/g;I)V

    goto :goto_5

    :cond_7
    if-eqz v22, :cond_8

    if-nez v23, :cond_8

    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v11

    move/from16 v27, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v11, v12}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v27, v12

    const/16 v12, 0x8

    :goto_6
    if-nez v16, :cond_c

    const/4 v5, 0x3

    if-eqz p9, :cond_a

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v9, v11, v5}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    if-lez v15, :cond_9

    invoke-virtual {v10, v8, v9, v15, v12}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_9
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_b

    invoke-virtual {v10, v8, v9, v1, v12}, La/f/b/d;->g(La/f/b/g;La/f/b/g;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {v10, v8, v9, v6, v12}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    :cond_b
    :goto_7
    const/4 v1, 0x3

    goto :goto_b

    :cond_c
    const/4 v1, 0x3

    const/4 v11, 0x2

    if-eq v2, v11, :cond_f

    if-nez p17, :cond_f

    const/4 v11, 0x1

    if-eq v14, v11, :cond_d

    if-nez v14, :cond_f

    :cond_d
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_e
    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v5, v6}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto/16 :goto_e

    :cond_f
    const/4 v11, -0x2

    if-ne v3, v11, :cond_10

    move v3, v6

    :cond_10
    if-ne v4, v11, :cond_11

    move v4, v6

    :cond_11
    if-lez v6, :cond_12

    const/4 v11, 0x1

    if-eq v14, v11, :cond_12

    const/4 v6, 0x0

    :cond_12
    if-lez v3, :cond_13

    const/16 v11, 0x8

    invoke-virtual {v10, v8, v9, v3, v11}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_13
    if-lez v4, :cond_16

    if-eqz p3, :cond_14

    const/4 v11, 0x1

    if-ne v14, v11, :cond_14

    const/4 v11, 0x0

    goto :goto_8

    :cond_14
    const/4 v11, 0x1

    :goto_8
    if-eqz v11, :cond_15

    const/16 v11, 0x8

    invoke-virtual {v10, v8, v9, v4, v11}, La/f/b/d;->g(La/f/b/g;La/f/b/g;II)V

    goto :goto_9

    :cond_15
    const/16 v11, 0x8

    :goto_9
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_a

    :cond_16
    const/16 v11, 0x8

    :goto_a
    const/4 v12, 0x1

    if-ne v14, v12, :cond_18

    if-eqz p3, :cond_17

    invoke-virtual {v10, v8, v9, v6, v11}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    goto :goto_b

    :cond_17
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v6, v5}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    invoke-virtual {v10, v8, v9, v6, v11}, La/f/b/d;->g(La/f/b/g;La/f/b/g;II)V

    :goto_b
    move/from16 v11, p5

    move v12, v3

    goto :goto_f

    :cond_18
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1b

    .line 5
    iget-object v6, v13, La/f/b/h/c;->e:La/f/b/h/c$a;

    .line 6
    sget-object v11, La/f/b/h/c$a;->d:La/f/b/h/c$a;

    if-eq v6, v11, :cond_1a

    if-ne v6, v5, :cond_19

    goto :goto_c

    :cond_19
    iget-object v5, v0, La/f/b/h/d;->Q:La/f/b/h/d;

    sget-object v6, La/f/b/h/c$a;->c:La/f/b/h/c$a;

    invoke-virtual {v5, v6}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v5

    invoke-virtual {v10, v5}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v5

    iget-object v6, v0, La/f/b/h/d;->Q:La/f/b/h/d;

    sget-object v11, La/f/b/h/c$a;->e:La/f/b/h/c$a;

    invoke-virtual {v6, v11}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v6

    invoke-virtual {v10, v6}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v6

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    goto :goto_d

    :cond_1a
    :goto_c
    iget-object v6, v0, La/f/b/h/d;->Q:La/f/b/h/d;

    invoke-virtual {v6, v11}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v6

    invoke-virtual {v10, v6}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v6

    iget-object v11, v0, La/f/b/h/d;->Q:La/f/b/h/d;

    invoke-virtual {v11, v5}, La/f/b/h/d;->i(La/f/b/h/c$a;)La/f/b/h/c;

    move-result-object v5

    invoke-virtual {v10, v5}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    move-result-object v5

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_d
    invoke-virtual/range {p1 .. p1}, La/f/b/d;->m()La/f/b/b;

    move-result-object v5

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v21, p26

    invoke-virtual/range {v16 .. v21}, La/f/b/b;->d(La/f/b/g;La/f/b/g;La/f/b/g;La/f/b/g;F)La/f/b/b;

    invoke-virtual {v10, v5}, La/f/b/d;->c(La/f/b/b;)V

    :goto_e
    move/from16 v11, p5

    move v12, v3

    const/16 v16, 0x0

    goto :goto_f

    :cond_1b
    move v12, v3

    const/4 v11, 0x1

    :goto_f
    if-eqz p27, :cond_52

    if-eqz p19, :cond_1c

    move-object/from16 v1, p6

    move v5, v2

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/16 v28, 0x1

    move-object/from16 v2, p7

    goto/16 :goto_32

    :cond_1c
    if-nez v22, :cond_1d

    if-nez v23, :cond_1d

    if-nez v27, :cond_1d

    goto :goto_10

    :cond_1d
    if-eqz v22, :cond_1e

    if-nez v23, :cond_1e

    :goto_10
    move-object v3, v8

    move/from16 p5, v11

    move-object/from16 v1, v24

    :goto_11
    const/4 v4, 0x0

    goto/16 :goto_2f

    :cond_1e
    if-nez v22, :cond_1f

    if-eqz v23, :cond_1f

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v24

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v6, v1, v2}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    if-eqz p3, :cond_4f

    move-object/from16 v3, p6

    const/4 v1, 0x5

    const/4 v5, 0x0

    invoke-virtual {v10, v9, v3, v5, v1}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    goto/16 :goto_2e

    :cond_1f
    move-object/from16 v3, p6

    move-object/from16 v6, v24

    const/4 v5, 0x0

    if-eqz v22, :cond_4f

    if-eqz v23, :cond_4f

    iget-object v2, v13, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v2, v2, La/f/b/h/c;->d:La/f/b/h/d;

    move-object/from16 v1, p11

    const/4 v13, 0x3

    iget-object v5, v1, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v5, v5, La/f/b/h/c;->d:La/f/b/h/d;

    .line 7
    iget-object v13, v0, La/f/b/h/d;->Q:La/f/b/h/d;

    const/16 v17, 0x6

    if-eqz v16, :cond_32

    if-nez v14, :cond_24

    if-nez v4, :cond_21

    if-nez v12, :cond_21

    .line 8
    iget-boolean v4, v7, La/f/b/g;->f:Z

    if-eqz v4, :cond_20

    iget-boolean v4, v6, La/f/b/g;->f:Z

    if-eqz v4, :cond_20

    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v10, v9, v7, v2, v3}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v8, v6, v1, v3}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    return-void

    :cond_20
    const/16 p2, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x8

    const/16 v21, 0x8

    goto :goto_12

    :cond_21
    const/16 p2, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x5

    :goto_12
    instance-of v4, v2, La/f/b/h/a;

    if-nez v4, :cond_23

    instance-of v4, v5, La/f/b/h/a;

    if-eqz v4, :cond_22

    goto :goto_13

    :cond_22
    move/from16 v26, p2

    move/from16 v4, v21

    goto :goto_14

    :cond_23
    :goto_13
    move/from16 v26, p2

    const/4 v4, 0x4

    :goto_14
    const/4 v15, 0x1

    move/from16 v29, v18

    move/from16 v18, v14

    move/from16 v14, v29

    goto :goto_1b

    :cond_24
    const/4 v15, 0x1

    if-ne v14, v15, :cond_25

    move/from16 v18, v14

    const/4 v4, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x8

    :goto_15
    const/16 v26, 0x1

    goto :goto_1b

    :cond_25
    const/4 v15, 0x3

    if-ne v14, v15, :cond_31

    iget v15, v0, La/f/b/h/d;->v:I

    move/from16 v18, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_28

    if-eqz p20, :cond_27

    if-eqz p3, :cond_26

    const/4 v4, 0x5

    goto :goto_16

    :cond_26
    const/4 v4, 0x4

    goto :goto_16

    :cond_27
    const/16 v4, 0x8

    :goto_16
    move-object/from16 v14, p7

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x5

    const/16 v22, 0x8

    :goto_17
    const/16 v26, 0x1

    goto/16 :goto_21

    :cond_28
    if-eqz p17, :cond_2c

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2a

    const/4 v15, 0x1

    if-ne v14, v15, :cond_29

    goto :goto_18

    :cond_29
    const/4 v4, 0x0

    goto :goto_19

    :cond_2a
    const/4 v15, 0x1

    :goto_18
    const/4 v4, 0x1

    :goto_19
    if-nez v4, :cond_2b

    const/4 v4, 0x5

    const/16 v14, 0x8

    goto :goto_1a

    :cond_2b
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_1a
    move/from16 v20, v14

    const/4 v14, 0x1

    const/16 v19, 0x1

    goto :goto_15

    :goto_1b
    move/from16 v21, v4

    move/from16 v22, v20

    const/4 v4, 0x6

    move/from16 v20, v19

    move/from16 v19, v26

    move/from16 v26, v14

    move-object/from16 v14, p7

    goto/16 :goto_21

    :cond_2c
    const/4 v15, 0x1

    if-lez v4, :cond_2d

    move-object/from16 v14, p7

    const/4 v4, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x5

    goto/16 :goto_20

    :cond_2d
    if-nez v4, :cond_30

    if-nez v12, :cond_30

    if-nez p20, :cond_2e

    move-object/from16 v14, p7

    const/4 v4, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x8

    goto/16 :goto_20

    :cond_2e
    if-eq v2, v13, :cond_2f

    if-eq v5, v13, :cond_2f

    const/4 v4, 0x4

    goto :goto_1c

    :cond_2f
    const/4 v4, 0x5

    :goto_1c
    move-object/from16 v14, p7

    move/from16 v22, v4

    const/4 v4, 0x6

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x4

    goto :goto_17

    :cond_30
    move-object/from16 v14, p7

    const/4 v4, 0x1

    goto :goto_1e

    :cond_31
    move/from16 v18, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_1f

    :cond_32
    move/from16 v18, v14

    const/4 v15, 0x1

    iget-boolean v4, v7, La/f/b/g;->f:Z

    if-eqz v4, :cond_35

    iget-boolean v4, v6, La/f/b/g;->f:Z

    if-eqz v4, :cond_35

    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v2

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v2

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v3

    move/from16 p25, v4

    invoke-virtual/range {p17 .. p25}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    if-eqz p3, :cond_34

    if-eqz v11, :cond_34

    iget-object v2, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v2, :cond_33

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v1

    move-object/from16 v14, p7

    goto :goto_1d

    :cond_33
    move-object/from16 v14, p7

    const/4 v1, 0x0

    :goto_1d
    if-eq v6, v14, :cond_34

    const/4 v2, 0x5

    invoke-virtual {v10, v14, v8, v1, v2}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_34
    return-void

    :cond_35
    move-object/from16 v14, p7

    const/4 v4, 0x0

    :goto_1e
    move/from16 v20, v4

    const/4 v4, 0x1

    const/16 v19, 0x1

    :goto_1f
    const/16 v21, 0x4

    :goto_20
    move/from16 v26, v19

    const/16 v22, 0x5

    move/from16 v19, v4

    const/4 v4, 0x6

    :goto_21
    if-eqz v26, :cond_36

    if-ne v7, v6, :cond_36

    if-eq v2, v13, :cond_36

    const/16 v23, 0x0

    const/16 v26, 0x0

    goto :goto_22

    :cond_36
    const/16 v23, 0x1

    :goto_22
    if-eqz v19, :cond_38

    if-nez v16, :cond_37

    if-nez p18, :cond_37

    if-nez p20, :cond_37

    if-ne v7, v3, :cond_37

    if-ne v6, v14, :cond_37

    const/16 v19, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v24, 0x8

    goto :goto_23

    :cond_37
    move/from16 v19, p3

    move/from16 v24, v22

    move/from16 v22, v4

    :goto_23
    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v4

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v27

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move-object v15, v3

    move-object v3, v7

    move/from16 p5, v11

    const/16 v25, 0x0

    move-object v11, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    const/16 v25, 0x4

    const/16 v28, 0x1

    move/from16 p8, v12

    move-object v12, v7

    move-object v7, v8

    move-object v15, v8

    move/from16 v8, v27

    move-object/from16 v27, v13

    move-object v13, v9

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, La/f/b/d;->b(La/f/b/g;La/f/b/g;IFLa/f/b/g;La/f/b/g;II)V

    move/from16 v6, v23

    move/from16 v22, v24

    goto :goto_24

    :cond_38
    move-object v14, v2

    move-object/from16 p2, v6

    move-object v15, v8

    move/from16 p5, v11

    move/from16 p8, v12

    move-object/from16 v27, v13

    const/16 v25, 0x4

    const/16 v28, 0x1

    move-object v11, v5

    move-object v12, v7

    move-object v13, v9

    move/from16 v19, p3

    move/from16 v6, v23

    :goto_24
    iget v1, v0, La/f/b/h/d;->d0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->f()Z

    move-result v1

    if-nez v1, :cond_39

    return-void

    :cond_39
    move-object/from16 v1, p2

    if-eqz v26, :cond_3c

    if-eqz v19, :cond_3b

    if-eq v12, v1, :cond_3b

    if-nez v16, :cond_3b

    instance-of v2, v14, La/f/b/h/a;

    if-nez v2, :cond_3a

    instance-of v2, v11, La/f/b/h/a;

    if-eqz v2, :cond_3b

    :cond_3a
    const/4 v2, 0x6

    goto :goto_25

    :cond_3b
    move/from16 v2, v22

    :goto_25
    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v3

    invoke-virtual {v10, v13, v12, v3, v2}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v15, v1, v3, v2}, La/f/b/d;->g(La/f/b/g;La/f/b/g;II)V

    move/from16 v22, v2

    :cond_3c
    if-eqz v19, :cond_3d

    if-eqz p21, :cond_3d

    instance-of v2, v14, La/f/b/h/a;

    if-nez v2, :cond_3d

    instance-of v2, v11, La/f/b/h/a;

    if-nez v2, :cond_3d

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v6, 0x1

    goto :goto_26

    :cond_3d
    move/from16 v2, v21

    move/from16 v3, v22

    :goto_26
    if-eqz v6, :cond_49

    if-eqz v20, :cond_46

    if-eqz p20, :cond_3e

    if-eqz p4, :cond_46

    :cond_3e
    move-object/from16 v4, v27

    if-eq v14, v4, :cond_40

    if-ne v11, v4, :cond_3f

    goto :goto_27

    :cond_3f
    move/from16 v17, v2

    :cond_40
    :goto_27
    instance-of v5, v14, La/f/b/h/f;

    if-nez v5, :cond_41

    instance-of v5, v11, La/f/b/h/f;

    if-eqz v5, :cond_42

    :cond_41
    const/16 v17, 0x5

    :cond_42
    instance-of v5, v14, La/f/b/h/a;

    if-nez v5, :cond_43

    instance-of v5, v11, La/f/b/h/a;

    if-eqz v5, :cond_44

    :cond_43
    const/16 v17, 0x5

    :cond_44
    if-eqz p20, :cond_45

    const/4 v5, 0x5

    goto :goto_28

    :cond_45
    move/from16 v5, v17

    :goto_28
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_29

    :cond_46
    move-object/from16 v4, v27

    :goto_29
    if-eqz v19, :cond_48

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_48

    if-nez p20, :cond_48

    if-eq v14, v4, :cond_47

    if-ne v11, v4, :cond_48

    :cond_47
    const/4 v6, 0x4

    goto :goto_2a

    :cond_48
    move v6, v2

    :goto_2a
    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v2

    invoke-virtual {v10, v13, v12, v2, v6}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v15, v1, v2, v6}, La/f/b/d;->d(La/f/b/g;La/f/b/g;II)La/f/b/b;

    :cond_49
    if-eqz v19, :cond_4b

    move-object/from16 v2, p6

    move-object v3, v15

    if-ne v2, v12, :cond_4a

    invoke-virtual/range {p10 .. p10}, La/f/b/h/c;->d()I

    move-result v6

    goto :goto_2b

    :cond_4a
    const/4 v6, 0x0

    :goto_2b
    if-eq v12, v2, :cond_4c

    const/4 v4, 0x5

    invoke-virtual {v10, v13, v2, v6, v4}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    goto :goto_2c

    :cond_4b
    move-object v3, v15

    :cond_4c
    :goto_2c
    if-eqz v19, :cond_4e

    if-eqz v16, :cond_4e

    if-nez p14, :cond_4e

    if-nez p8, :cond_4e

    if-eqz v16, :cond_4d

    move/from16 v14, v18

    const/4 v2, 0x3

    if-ne v14, v2, :cond_4d

    const/16 v2, 0x8

    const/4 v4, 0x0

    goto :goto_2d

    :cond_4d
    const/4 v4, 0x0

    const/4 v2, 0x5

    :goto_2d
    invoke-virtual {v10, v3, v13, v4, v2}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    goto :goto_30

    :cond_4e
    const/4 v4, 0x0

    goto :goto_30

    :cond_4f
    :goto_2e
    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto/16 :goto_11

    :goto_2f
    move/from16 v19, p3

    :goto_30
    if-eqz v19, :cond_51

    if-eqz p5, :cond_51

    move-object/from16 v2, p11

    iget-object v5, v2, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v5, :cond_50

    invoke-virtual/range {p11 .. p11}, La/f/b/h/c;->d()I

    move-result v6

    move-object/from16 v2, p7

    goto :goto_31

    :cond_50
    move-object/from16 v2, p7

    const/4 v6, 0x0

    :goto_31
    if-eq v1, v2, :cond_51

    const/4 v1, 0x5

    invoke-virtual {v10, v2, v3, v6, v1}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_51
    return-void

    :cond_52
    move-object/from16 v1, p6

    move v5, v2

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    const/4 v4, 0x0

    const/16 v28, 0x1

    move-object/from16 v2, p7

    const/4 v6, 0x2

    :goto_32
    if-ge v5, v6, :cond_57

    if-eqz p3, :cond_57

    if-eqz p5, :cond_57

    const/16 v5, 0x8

    invoke-virtual {v10, v13, v1, v4, v5}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    if-nez p2, :cond_54

    iget-object v1, v0, La/f/b/h/d;->I:La/f/b/h/c;

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-nez v1, :cond_53

    goto :goto_33

    :cond_53
    const/4 v6, 0x0

    goto :goto_34

    :cond_54
    :goto_33
    const/4 v6, 0x1

    :goto_34
    if-nez p2, :cond_56

    iget-object v1, v0, La/f/b/h/d;->I:La/f/b/h/c;

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v1, :cond_56

    iget-object v1, v1, La/f/b/h/c;->d:La/f/b/h/d;

    iget v5, v1, La/f/b/h/d;->T:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_55

    iget-object v1, v1, La/f/b/h/d;->P:[La/f/b/h/d$a;

    aget-object v5, v1, v4

    sget-object v6, La/f/b/h/d$a;->d:La/f/b/h/d$a;

    if-ne v5, v6, :cond_55

    aget-object v1, v1, v28

    if-ne v1, v6, :cond_55

    const/4 v6, 0x1

    goto :goto_35

    :cond_55
    const/4 v6, 0x0

    :cond_56
    :goto_35
    if-eqz v6, :cond_57

    const/16 v1, 0x8

    invoke-virtual {v10, v2, v3, v4, v1}, La/f/b/d;->f(La/f/b/g;La/f/b/g;II)V

    :cond_57
    return-void
.end method

.method public g(La/f/b/d;)V
    .locals 1

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    invoke-virtual {p1, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    iget-object v0, p0, La/f/b/h/d;->F:La/f/b/h/c;

    invoke-virtual {p1, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    iget-object v0, p0, La/f/b/h/d;->G:La/f/b/h/c;

    invoke-virtual {p1, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    iget-object v0, p0, La/f/b/h/d;->H:La/f/b/h/c;

    invoke-virtual {p1, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    iget v0, p0, La/f/b/h/d;->X:I

    if-lez v0, :cond_0

    iget-object v0, p0, La/f/b/h/d;->I:La/f/b/h/c;

    invoke-virtual {p1, v0}, La/f/b/d;->l(Ljava/lang/Object;)La/f/b/g;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, La/f/b/h/d;->d:La/f/b/h/l/k;

    if-nez v0, :cond_0

    new-instance v0, La/f/b/h/l/k;

    invoke-direct {v0, p0}, La/f/b/h/l/k;-><init>(La/f/b/h/d;)V

    iput-object v0, p0, La/f/b/h/d;->d:La/f/b/h/l/k;

    :cond_0
    iget-object v0, p0, La/f/b/h/d;->e:La/f/b/h/l/m;

    if-nez v0, :cond_1

    new-instance v0, La/f/b/h/l/m;

    invoke-direct {v0, p0}, La/f/b/h/l/m;-><init>(La/f/b/h/d;)V

    iput-object v0, p0, La/f/b/h/d;->e:La/f/b/h/l/m;

    :cond_1
    return-void
.end method

.method public i(La/f/b/h/c$a;)La/f/b/h/c;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, La/f/b/h/d;->K:La/f/b/h/c;

    return-object p1

    :pswitch_2
    iget-object p1, p0, La/f/b/h/d;->J:La/f/b/h/c;

    return-object p1

    :pswitch_3
    iget-object p1, p0, La/f/b/h/d;->L:La/f/b/h/c;

    return-object p1

    :pswitch_4
    iget-object p1, p0, La/f/b/h/d;->I:La/f/b/h/c;

    return-object p1

    :pswitch_5
    iget-object p1, p0, La/f/b/h/d;->H:La/f/b/h/c;

    return-object p1

    :pswitch_6
    iget-object p1, p0, La/f/b/h/d;->G:La/f/b/h/c;

    return-object p1

    :pswitch_7
    iget-object p1, p0, La/f/b/h/d;->F:La/f/b/h/c;

    return-object p1

    :pswitch_8
    iget-object p1, p0, La/f/b/h/d;->E:La/f/b/h/c;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public j()I
    .locals 2

    invoke-virtual {p0}, La/f/b/h/d;->t()I

    move-result v0

    iget v1, p0, La/f/b/h/d;->S:I

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)La/f/b/h/d$a;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, La/f/b/h/d;->m()La/f/b/h/d$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, La/f/b/h/d;->q()La/f/b/h/d$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l()I
    .locals 2

    iget v0, p0, La/f/b/h/d;->d0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, La/f/b/h/d;->S:I

    return v0
.end method

.method public m()La/f/b/h/d$a;
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public n(I)La/f/b/h/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, La/f/b/h/d;->G:La/f/b/h/c;

    iget-object v0, p1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, La/f/b/h/d;->H:La/f/b/h/c;

    iget-object v0, p1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(I)La/f/b/h/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object v0, p1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object v0, p1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, La/f/b/h/c;->d:La/f/b/h/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public p()I
    .locals 2

    invoke-virtual {p0}, La/f/b/h/d;->s()I

    move-result v0

    iget v1, p0, La/f/b/h/d;->R:I

    add-int/2addr v0, v1

    return v0
.end method

.method public q()La/f/b/h/d$a;
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->P:[La/f/b/h/d$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public r()I
    .locals 2

    iget v0, p0, La/f/b/h/d;->d0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, La/f/b/h/d;->R:I

    return v0
.end method

.method public s()I
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, La/f/b/h/e;

    if-eqz v1, :cond_0

    check-cast v0, La/f/b/h/e;

    iget v0, v0, La/f/b/h/e;->s0:I

    iget v1, p0, La/f/b/h/d;->V:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, La/f/b/h/d;->V:I

    return v0
.end method

.method public t()I
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->Q:La/f/b/h/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, La/f/b/h/e;

    if-eqz v1, :cond_0

    check-cast v0, La/f/b/h/e;

    iget v0, v0, La/f/b/h/e;->t0:I

    iget v1, p0, La/f/b/h/d;->W:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, La/f/b/h/d;->W:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/f/b/h/d;->e0:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v0, "id: "

    invoke-static {v0}, Lb/a/a/a/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/f/b/h/d;->e0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/f/b/h/d;->V:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/f/b/h/d;->W:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/f/b/h/d;->R:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/f/b/h/d;->S:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object p1, p1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, La/f/b/h/d;->G:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_3
    iget-object p1, p0, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object p1, p1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v3, p0, La/f/b/h/d;->H:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    add-int/2addr p1, v3

    iget-object v3, p0, La/f/b/h/d;->I:La/f/b/h/c;

    iget-object v3, v3, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method public final v(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, La/f/b/h/d;->M:[La/f/b/h/c;

    aget-object v1, v0, p1

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, La/f/b/h/d;->G:La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, La/f/b/h/d;->F:La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, La/f/b/h/d;->H:La/f/b/h/c;

    iget-object v1, v0, La/f/b/h/c;->f:La/f/b/h/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, La/f/b/h/c;->f:La/f/b/h/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 2

    iget-boolean v0, p0, La/f/b/h/d;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, La/f/b/h/d;->d0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, La/f/b/h/d;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La/f/b/h/d;->E:La/f/b/h/c;

    .line 1
    iget-boolean v0, v0, La/f/b/h/c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La/f/b/h/d;->G:La/f/b/h/c;

    .line 3
    iget-boolean v0, v0, La/f/b/h/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
