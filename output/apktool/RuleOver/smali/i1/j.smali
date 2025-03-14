.class public final Li1/j;
.super Ld1/l0;
.source "SourceFile"

# interfaces
.implements Lp0/e;
.implements Ln0/d;


# static fields
.field private static final l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final h:Ld1/a0;

.field public final i:Ln0/d;

.field public j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Li1/j;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ld1/a0;Ln0/d;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ld1/l0;-><init>(I)V

    iput-object p1, p0, Li1/j;->h:Ld1/a0;

    iput-object p2, p0, Li1/j;->i:Ln0/d;

    invoke-static {}, Li1/k;->a()Li1/h0;

    move-result-object p1

    iput-object p1, p0, Li1/j;->j:Ljava/lang/Object;

    invoke-virtual {p0}, Li1/j;->h()Ln0/g;

    move-result-object p1

    invoke-static {p1}, Li1/l0;->b(Ln0/g;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li1/j;->k:Ljava/lang/Object;

    return-void
.end method

.method private final l()Ld1/k;
    .locals 2

    .line 1
    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ld1/k;

    if-eqz v1, :cond_0

    check-cast v0, Ld1/k;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ld1/v;

    if-eqz v0, :cond_0

    check-cast p1, Ld1/v;

    iget-object p1, p1, Ld1/v;->b:Lv0/l;

    invoke-interface {p1, p2}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c()Ln0/d;
    .locals 0

    .line 1
    return-object p0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Li1/j;->i:Ln0/d;

    invoke-interface {v0}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Ld1/y;->d(Ljava/lang/Object;Lv0/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Li1/j;->h:Ld1/a0;

    invoke-virtual {v4, v0}, Ld1/a0;->h(Ln0/g;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-object v3, p0, Li1/j;->j:Ljava/lang/Object;

    iput v5, p0, Ld1/l0;->g:I

    iget-object p1, p0, Li1/j;->h:Ld1/a0;

    invoke-virtual {p1, v0, p0}, Ld1/a0;->g(Ln0/g;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    sget-object v0, Ld1/v1;->a:Ld1/v1;

    invoke-virtual {v0}, Ld1/v1;->a()Ld1/q0;

    move-result-object v0

    invoke-virtual {v0}, Ld1/q0;->z()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Li1/j;->j:Ljava/lang/Object;

    iput v5, p0, Ld1/l0;->g:I

    invoke-virtual {v0, p0}, Ld1/q0;->t(Ld1/l0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ld1/q0;->x(Z)V

    :try_start_0
    invoke-virtual {p0}, Li1/j;->h()Ln0/g;

    move-result-object v3

    iget-object v4, p0, Li1/j;->k:Ljava/lang/Object;

    invoke-static {v3, v4}, Li1/l0;->c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Li1/j;->i:Ln0/d;

    invoke-interface {v5, p1}, Ln0/d;->g(Ljava/lang/Object;)V

    sget-object p1, Ll0/q;->a:Ll0/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ld1/q0;->C()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v3, v4}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1, v1}, Ld1/l0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    invoke-virtual {v0, v2}, Ld1/q0;->o(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Ld1/q0;->o(Z)V

    throw p1
.end method

.method public h()Ln0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Li1/j;->i:Ln0/d;

    invoke-interface {v0}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Li1/j;->j:Ljava/lang/Object;

    invoke-static {}, Li1/k;->a()Li1/h0;

    move-result-object v1

    iput-object v1, p0, Li1/j;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final j()V
    .locals 3

    .line 1
    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li1/k;->b:Li1/h0;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final k()Ld1/k;
    .locals 4

    .line 1
    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Li1/k;->b:Li1/h0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v2, v1, Ld1/k;

    if-eqz v2, :cond_2

    sget-object v2, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Li1/k;->b:Li1/h0;

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Ld1/k;

    return-object v1

    :cond_2
    sget-object v2, Li1/k;->b:Li1/h0;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li1/k;->b:Li1/h0;

    invoke-static {v1, v2}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v1, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    sget-object v2, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li1/j;->j()V

    invoke-direct {p0}, Li1/j;->l()Ld1/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld1/k;->p()V

    :cond_0
    return-void
.end method

.method public final p(Ld1/j;)Ljava/lang/Throwable;
    .locals 4

    .line 1
    sget-object v0, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li1/k;->b:Li1/h0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget-object v1, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    sget-object p1, Li1/j;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t()Lp0/e;
    .locals 2

    .line 1
    iget-object v0, p0, Li1/j;->i:Ln0/d;

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

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/j;->h:Ld1/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li1/j;->i:Ln0/d;

    invoke-static {v1}, Ld1/h0;->c(Ln0/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
