.class public Ld1/k;
.super Ld1/l0;
.source "SourceFile"

# interfaces
.implements Ld1/j;
.implements Lp0/e;
.implements Ld1/z1;


# static fields
.field private static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field private final h:Ln0/d;

.field private final i:Ln0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_decisionAndIndex"

    const-class v1, Ld1/k;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ld1/k;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ln0/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld1/l0;-><init>(I)V

    iput-object p1, p0, Ld1/k;->h:Ln0/d;

    invoke-interface {p1}, Ln0/d;->h()Ln0/g;

    move-result-object p1

    iput-object p1, p0, Ld1/k;->i:Ln0/g;

    const p1, 0x1fffffff

    iput p1, p0, Ld1/k;->_decisionAndIndex:I

    sget-object p1, Ld1/d;->e:Ld1/d;

    iput-object p1, p0, Ld1/k;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final B()Ld1/o0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ld1/k;->h()Ln0/g;

    move-result-object v0

    sget-object v1, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {v0, v1}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ld1/e1;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ld1/o;

    invoke-direct {v4, p0}, Ld1/o;-><init>(Ld1/k;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ld1/e1$a;->d(Ld1/e1;ZZLv0/l;ILjava/lang/Object;)Ld1/o0;

    move-result-object v1

    sget-object v2, Ld1/k;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final C(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v3, v11, Ld1/d;

    if-eqz v3, :cond_1

    sget-object v3, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_1
    instance-of v3, v11, Li1/e0;

    if-eqz v3, :cond_2

    invoke-direct {v0, v1, v11}, Ld1/k;->F(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v3, v11, Ld1/u;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    move-object v2, v11

    check-cast v2, Ld1/u;

    invoke-virtual {v2}, Ld1/u;->b()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {v0, v1, v11}, Ld1/k;->F(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    instance-of v5, v11, Ld1/n;

    if-eqz v5, :cond_6

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_5

    iget-object v4, v2, Ld1/u;->a:Ljava/lang/Throwable;

    :cond_5
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li1/e0;

    invoke-direct {v0, v1, v4}, Ld1/k;->m(Li1/e0;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    instance-of v3, v11, Ld1/t;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_a

    move-object v12, v11

    check-cast v12, Ld1/t;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Li1/e0;

    if-eqz v3, :cond_8

    return-void

    :cond_8
    invoke-static {v1, v5}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ld1/t;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p1 .. p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    iget-object v1, v12, Ld1/t;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v1}, Ld1/k;->k(Ld1/h;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1d

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Ld1/t;->b(Ld1/t;Ljava/lang/Object;Ld1/h;Lv0/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Ld1/t;

    move-result-object v3

    sget-object v4, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v11, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_a
    instance-of v3, v1, Li1/e0;

    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-static {v1, v5}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    new-instance v12, Ld1/t;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v12

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Ld1/t;-><init>(Ljava/lang/Object;Ld1/h;Lv0/l;Ljava/lang/Object;Ljava/lang/Throwable;ILw0/g;)V

    sget-object v3, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v12}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method private final E()Z
    .locals 2

    .line 1
    iget v0, p0, Ld1/l0;->g:I

    invoke-static {v0}, Ld1/m0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld1/k;->h:Ln0/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Li1/j;

    invoke-virtual {v0}, Li1/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final L(Ljava/lang/Object;ILv0/l;)V
    .locals 9

    .line 1
    sget-object v0, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ld1/r1;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Ld1/r1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Ld1/k;->N(Ld1/r1;Ljava/lang/Object;ILv0/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ld1/k;->q()V

    invoke-direct {p0, p2}, Ld1/k;->r(I)V

    return-void

    :cond_1
    instance-of p2, v1, Ld1/n;

    if-eqz p2, :cond_3

    check-cast v1, Ld1/n;

    invoke-virtual {v1}, Ld1/n;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v1, Ld1/u;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Ld1/k;->l(Lv0/l;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Ld1/k;->j(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Ll0/d;

    invoke-direct {p1}, Ll0/d;-><init>()V

    throw p1
.end method

.method static synthetic M(Ld1/k;Ljava/lang/Object;ILv0/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ld1/k;->L(Ljava/lang/Object;ILv0/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final N(Ld1/r1;Ljava/lang/Object;ILv0/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of p1, p2, Ld1/u;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ld1/m0;->b(I)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    if-eqz p5, :cond_3

    :cond_2
    new-instance p1, Ld1/t;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Ld1/t;-><init>(Ljava/lang/Object;Ld1/h;Lv0/l;Ljava/lang/Object;Ljava/lang/Throwable;ILw0/g;)V

    move-object p2, p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method private final O()Z
    .locals 6

    .line 1
    sget-object v0, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method private final P(Ljava/lang/Object;Ljava/lang/Object;Lv0/l;)Li1/h0;
    .locals 9

    .line 1
    sget-object v0, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ld1/r1;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Ld1/r1;

    iget v6, p0, Ld1/l0;->g:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Ld1/k;->N(Ld1/r1;Ljava/lang/Object;ILv0/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ld1/k;->q()V

    sget-object p1, Ld1/l;->a:Li1/h0;

    return-object p1

    :cond_1
    instance-of p1, v1, Ld1/t;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    check-cast v1, Ld1/t;

    iget-object p1, v1, Ld1/t;->c:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    sget-object p3, Ld1/l;->a:Li1/h0;

    :cond_2
    return-object p3
.end method

.method private final Q()Z
    .locals 5

    .line 1
    sget-object v0, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private final j(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final m(Li1/e0;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ld1/k;->h()Ln0/g;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Li1/e0;->o(ILjava/lang/Throwable;Ln0/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld1/k;->h()Ln0/g;

    move-result-object p2

    new-instance v0, Ld1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ld1/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final o(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ld1/k;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ld1/k;->h:Ln0/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Li1/j;

    invoke-virtual {v0, p1}, Li1/j;->n(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private final q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld1/k;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/k;->p()V

    :cond_0
    return-void
.end method

.method private final r(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld1/k;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Ld1/m0;->a(Ld1/l0;I)V

    return-void
.end method

.method private final u()Ld1/o0;
    .locals 1

    .line 1
    sget-object v0, Ld1/k;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/o0;

    return-object v0
.end method

.method private final y()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/k;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ld1/r1;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ld1/n;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;Lv0/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld1/k;->P(Ljava/lang/Object;Ljava/lang/Object;Lv0/l;)Li1/h0;

    move-result-object p1

    return-object p1
.end method

.method public D()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/k;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ld1/r1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected G()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final H(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ld1/k;->o(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ld1/k;->n(Ljava/lang/Throwable;)Z

    invoke-direct {p0}, Ld1/k;->q()V

    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld1/k;->h:Ln0/d;

    instance-of v1, v0, Li1/j;

    if-eqz v1, :cond_0

    check-cast v0, Li1/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Li1/j;->p(Ld1/j;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ld1/k;->p()V

    invoke-virtual {p0, v0}, Ld1/k;->n(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final J()Z
    .locals 3

    .line 1
    sget-object v0, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ld1/t;

    if-eqz v2, :cond_0

    check-cast v1, Ld1/t;

    iget-object v1, v1, Ld1/t;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ld1/k;->p()V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Ld1/d;->e:Ld1/d;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public K(Ljava/lang/Object;Lv0/l;)V
    .locals 1

    .line 1
    iget v0, p0, Ld1/l0;->g:I

    invoke-direct {p0, p1, v0, p2}, Ld1/k;->L(Ljava/lang/Object;ILv0/l;)V

    return-void
.end method

.method public a(Li1/e0;I)V
    .locals 4

    .line 1
    sget-object v0, Ld1/k;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Ld1/k;->C(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    sget-object v1, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, Ld1/r1;

    if-nez v2, :cond_4

    instance-of v2, v10, Ld1/u;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    instance-of v2, v10, Ld1/t;

    if-eqz v2, :cond_3

    move-object v2, v10

    check-cast v2, Ld1/t;

    invoke-virtual {v2}, Ld1/t;->c()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v18}, Ld1/t;->b(Ld1/t;Ljava/lang/Object;Ld1/h;Lv0/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Ld1/t;

    move-result-object v3

    sget-object v4, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v10, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v11}, Ld1/t;->d(Ld1/k;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called at most once"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v11, p2

    sget-object v12, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v13, Ld1/t;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Ld1/t;-><init>(Ljava/lang/Object;Ld1/h;Lv0/l;Ljava/lang/Object;Ljava/lang/Throwable;ILw0/g;)V

    invoke-static {v12, v0, v10, v13}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not completed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Ln0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/k;->h:Ln0/d;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ld1/l0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ld1/t;

    if-eqz v0, :cond_0

    check-cast p1, Ld1/t;

    iget-object p1, p1, Ld1/t;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public g(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1, p0}, Ld1/y;->b(Ljava/lang/Object;Ld1/j;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ld1/l0;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ld1/k;->M(Ld1/k;Ljava/lang/Object;ILv0/l;ILjava/lang/Object;)V

    return-void
.end method

.method public h()Ln0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/k;->i:Ln0/g;

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/k;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ld1/h;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld1/k;->h()Ln0/g;

    move-result-object p2

    new-instance v0, Ld1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ld1/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l(Lv0/l;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld1/k;->h()Ln0/g;

    move-result-object p2

    new-instance v0, Ld1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ld1/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Throwable;)Z
    .locals 6

    .line 1
    sget-object v0, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ld1/r1;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    new-instance v2, Ld1/n;

    instance-of v4, v1, Li1/e0;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {v2, p0, p1, v3}, Ld1/n;-><init>(Ln0/d;Ljava/lang/Throwable;Z)V

    sget-object v3, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ld1/r1;

    instance-of v0, v0, Li1/e0;

    if-eqz v0, :cond_3

    check-cast v1, Li1/e0;

    invoke-direct {p0, v1, p1}, Ld1/k;->m(Li1/e0;Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0}, Ld1/k;->q()V

    iget p1, p0, Ld1/l0;->g:I

    invoke-direct {p0, p1}, Ld1/k;->r(I)V

    return v5
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld1/k;->u()Ld1/o0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ld1/o0;->a()V

    sget-object v0, Ld1/k;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Ld1/q1;->e:Ld1/q1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ld1/e1;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-interface {p1}, Ld1/e1;->q()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public t()Lp0/e;
    .locals 2

    .line 1
    iget-object v0, p0, Ld1/k;->h:Ln0/d;

    instance-of v1, v0, Lp0/e;

    if-eqz v1, :cond_0

    check-cast v0, Lp0/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld1/k;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld1/k;->h:Ln0/d;

    invoke-static {v1}, Ld1/h0;->c(Ln0/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ld1/k;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld1/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Ld1/k;->E()Z

    move-result v0

    invoke-direct {p0}, Ld1/k;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Ld1/k;->u()Ld1/o0;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Ld1/k;->B()Ld1/o0;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld1/k;->I()V

    :cond_1
    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ld1/k;->I()V

    :cond_3
    invoke-virtual {p0}, Ld1/k;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ld1/u;

    if-nez v1, :cond_6

    iget v1, p0, Ld1/l0;->g:I

    invoke-static {v1}, Ld1/m0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ld1/k;->h()Ln0/g;

    move-result-object v1

    sget-object v2, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {v1, v2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v1

    check-cast v1, Ld1/e1;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ld1/e1;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ld1/e1;->q()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ld1/k;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Ld1/k;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    check-cast v0, Ld1/u;

    iget-object v0, v0, Ld1/u;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public w(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p1, p0, Ld1/l0;->g:I

    invoke-direct {p0, p1}, Ld1/k;->r(I)V

    return-void
.end method

.method public final x()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ld1/k;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld1/k;->B()Ld1/o0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ld1/k;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ld1/o0;->a()V

    sget-object v0, Ld1/k;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Ld1/q1;->e:Ld1/q1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
