.class public final Lk1/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final e:Lk1/n;

.field private final f:Lw0/q;

.field public g:Lk1/a$d;

.field private h:J

.field private i:J

.field private volatile indexInArray:I

.field private j:I

.field public k:Z

.field final synthetic l:Lk1/a;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lk1/a$c;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lk1/a$c;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lk1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/a$c;->l:Lk1/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lk1/n;

    invoke-direct {p1}, Lk1/n;-><init>()V

    iput-object p1, p0, Lk1/a$c;->e:Lk1/n;

    new-instance p1, Lw0/q;

    invoke-direct {p1}, Lw0/q;-><init>()V

    iput-object p1, p0, Lk1/a$c;->f:Lw0/q;

    sget-object p1, Lk1/a$d;->h:Lk1/a$d;

    iput-object p1, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object p1, Lk1/a;->p:Li1/h0;

    iput-object p1, p0, Lk1/a$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lx0/c;->e:Lx0/c$a;

    invoke-virtual {p1}, Lx0/c$a;->b()I

    move-result p1

    iput p1, p0, Lk1/a$c;->j:I

    return-void
.end method

.method public constructor <init>(Lk1/a;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk1/a$c;-><init>(Lk1/a;)V

    invoke-virtual {p0, p2}, Lk1/a$c;->q(I)V

    return-void
.end method

.method public static final synthetic a(Lk1/a$c;)Lk1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lk1/a$c;->l:Lk1/a;

    return-object p0
.end method

.method private final b(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lk1/a$c;->l:Lk1/a;

    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object p1, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object v0, Lk1/a$d;->i:Lk1/a$d;

    if-eq p1, v0, :cond_1

    sget-object p1, Lk1/a$d;->h:Lk1/a$d;

    iput-object p1, p0, Lk1/a$c;->g:Lk1/a$d;

    :cond_1
    return-void
.end method

.method private final c(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lk1/a$d;->f:Lk1/a$d;

    invoke-virtual {p0, p1}, Lk1/a$c;->u(Lk1/a$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lk1/a$c;->l:Lk1/a;

    invoke-virtual {p1}, Lk1/a;->p()V

    :cond_1
    return-void
.end method

.method private final d(Lk1/h;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lk1/h;->f:Lk1/i;

    invoke-interface {v0}, Lk1/i;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lk1/a$c;->k(I)V

    invoke-direct {p0, v0}, Lk1/a$c;->c(I)V

    iget-object v1, p0, Lk1/a$c;->l:Lk1/a;

    invoke-virtual {v1, p1}, Lk1/a;->m(Lk1/h;)V

    invoke-direct {p0, v0}, Lk1/a$c;->b(I)V

    return-void
.end method

.method private final e(Z)Lk1/h;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lk1/a$c;->l:Lk1/a;

    iget p1, p1, Lk1/a;->e:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lk1/a$c;->m(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lk1/a$c;->o()Lk1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lk1/a$c;->e:Lk1/n;

    invoke-virtual {v0}, Lk1/n;->g()Lk1/h;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez p1, :cond_4

    invoke-direct {p0}, Lk1/a$c;->o()Lk1/h;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_3
    invoke-direct {p0}, Lk1/a$c;->o()Lk1/h;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lk1/a$c;->v(I)Lk1/h;

    move-result-object p1

    return-object p1
.end method

.method private final f()Lk1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/a$c;->e:Lk1/n;

    invoke-virtual {v0}, Lk1/n;->h()Lk1/h;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v0, v0, Lk1/a;->j:Lk1/d;

    invoke-virtual {v0}, Li1/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk1/a$c;->v(I)Lk1/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lk1/a$c;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final k(I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk1/a$c;->h:J

    iget-object p1, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object v0, Lk1/a$d;->g:Lk1/a$d;

    if-ne p1, v0, :cond_0

    sget-object p1, Lk1/a$d;->f:Lk1/a$d;

    iput-object p1, p0, Lk1/a$c;->g:Lk1/a$d;

    :cond_0
    return-void
.end method

.method private final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk1/a$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lk1/a;->p:Li1/h0;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final n()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lk1/a$c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lk1/a$c;->l:Lk1/a;

    iget-wide v4, v4, Lk1/a;->g:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lk1/a$c;->h:J

    :cond_0
    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-wide v0, v0, Lk1/a;->g:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lk1/a$c;->h:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iput-wide v2, p0, Lk1/a$c;->h:J

    invoke-direct {p0}, Lk1/a$c;->w()V

    :cond_1
    return-void
.end method

.method private final o()Lk1/h;
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lk1/a$c;->m(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v0, v0, Lk1/a;->i:Lk1/d;

    invoke-virtual {v0}, Li1/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v0, v0, Lk1/a;->j:Lk1/d;

    :goto_0
    invoke-virtual {v0}, Li1/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/h;

    return-object v0

    :cond_1
    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v0, v0, Lk1/a;->j:Lk1/d;

    invoke-virtual {v0}, Li1/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/h;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v0, v0, Lk1/a;->i:Lk1/d;

    goto :goto_0
.end method

.method private final p()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lk1/a$c;->l:Lk1/a;

    invoke-virtual {v2}, Lk1/a;->h()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object v3, Lk1/a$d;->i:Lk1/a$d;

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Lk1/a$c;->k:Z

    invoke-virtual {p0, v2}, Lk1/a$c;->g(Z)Lk1/h;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iput-wide v3, p0, Lk1/a$c;->i:J

    invoke-direct {p0, v2}, Lk1/a$c;->d(Lk1/h;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lk1/a$c;->k:Z

    iget-wide v5, p0, Lk1/a$c;->i:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lk1/a$d;->g:Lk1/a$d;

    invoke-virtual {p0, v1}, Lk1/a$c;->u(Lk1/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, p0, Lk1/a$c;->i:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v3, p0, Lk1/a$c;->i:J

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lk1/a$c;->t()V

    goto :goto_1

    :cond_3
    sget-object v0, Lk1/a$d;->i:Lk1/a$d;

    invoke-virtual {p0, v0}, Lk1/a$c;->u(Lk1/a$d;)Z

    return-void
.end method

.method private final s()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object v1, Lk1/a$d;->e:Lk1/a$d;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v4, v3

    const/4 v9, 0x0

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lk1/a$d;->e:Lk1/a$d;

    iput-object v0, p0, Lk1/a$c;->g:Lk1/a$d;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private final t()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lk1/a$c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    invoke-virtual {v0, p0}, Lk1/a;->k(Lk1/a$c;)Z

    return-void

    :cond_0
    sget-object v0, Lk1/a$c;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_0
    invoke-direct {p0}, Lk1/a$c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lk1/a$c;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    invoke-virtual {v0}, Lk1/a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object v2, Lk1/a$d;->i:Lk1/a$d;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lk1/a$d;->g:Lk1/a$d;

    invoke-virtual {p0, v0}, Lk1/a$c;->u(Lk1/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-direct {p0}, Lk1/a$c;->n()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final v(I)Lk1/h;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lk1/a$c;->l:Lk1/a;

    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v2}, Lk1/a$c;->m(I)I

    move-result v1

    iget-object v4, v0, Lk1/a$c;->l:Lk1/a;

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v7, v2, :cond_5

    const/4 v12, 0x1

    add-int/2addr v1, v12

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v12, v4, Lk1/a;->k:Li1/c0;

    invoke-virtual {v12, v1}, Li1/c0;->b(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk1/a$c;

    if-eqz v12, :cond_3

    if-eq v12, v0, :cond_3

    iget-object v12, v12, Lk1/a$c;->e:Lk1/n;

    iget-object v13, v0, Lk1/a$c;->f:Lw0/q;

    move/from16 v14, p1

    invoke-virtual {v12, v14, v13}, Lk1/n;->n(ILw0/q;)J

    move-result-wide v12

    const-wide/16 v15, -0x1

    cmp-long v17, v12, v15

    if-nez v17, :cond_2

    iget-object v1, v0, Lk1/a$c;->f:Lw0/q;

    iget-object v2, v1, Lw0/q;->e:Ljava/lang/Object;

    check-cast v2, Lk1/h;

    iput-object v3, v1, Lw0/q;->e:Ljava/lang/Object;

    return-object v2

    :cond_2
    cmp-long v15, v12, v10

    if-lez v15, :cond_4

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_3
    move/from16 v14, p1

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    cmp-long v1, v8, v5

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v8, v10

    :goto_2
    iput-wide v8, v0, Lk1/a$c;->i:J

    return-object v3
.end method

.method private final w()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v1, v0, Lk1/a;->k:Li1/c0;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lk1/a;->h()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    iget v2, v0, Lk1/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lk1/a$c;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_3
    iget v2, p0, Lk1/a$c;->indexInArray:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lk1/a$c;->q(I)V

    invoke-virtual {v0, p0, v2, v3}, Lk1/a;->l(Lk1/a$c;II)V

    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long v3, v6, v4

    long-to-int v4, v3

    if-eq v4, v2, :cond_3

    iget-object v3, v0, Lk1/a;->k:Li1/c0;

    invoke-virtual {v3, v4}, Li1/c0;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lw0/k;->b(Ljava/lang/Object;)V

    check-cast v3, Lk1/a$c;

    iget-object v5, v0, Lk1/a;->k:Li1/c0;

    invoke-virtual {v5, v2, v3}, Li1/c0;->c(ILjava/lang/Object;)V

    invoke-virtual {v3, v2}, Lk1/a$c;->q(I)V

    invoke-virtual {v0, v3, v4, v2}, Lk1/a;->l(Lk1/a$c;II)V

    :cond_3
    iget-object v0, v0, Lk1/a;->k:Li1/c0;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Li1/c0;->c(ILjava/lang/Object;)V

    sget-object v0, Ll0/q;->a:Ll0/q;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    sget-object v0, Lk1/a$d;->i:Lk1/a$d;

    iput-object v0, p0, Lk1/a$c;->g:Lk1/a$d;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final g(Z)Lk1/h;
    .locals 1

    .line 1
    invoke-direct {p0}, Lk1/a$c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lk1/a$c;->e(Z)Lk1/h;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lk1/a$c;->f()Lk1/h;

    move-result-object p1

    return-object p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lk1/a$c;->indexInArray:I

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final m(I)I
    .locals 3

    .line 1
    iget v0, p0, Lk1/a$c;->j:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lk1/a$c;->j:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final q(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk1/a$c;->l:Lk1/a;

    iget-object v1, v1, Lk1/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lk1/a$c;->indexInArray:I

    return-void
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk1/a$c;->p()V

    return-void
.end method

.method public final u(Lk1/a$d;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lk1/a$c;->g:Lk1/a$d;

    sget-object v1, Lk1/a$d;->e:Lk1/a$d;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lk1/a$c;->l:Lk1/a;

    invoke-static {}, Lk1/a;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lk1/a$c;->g:Lk1/a$d;

    :cond_2
    return v1
.end method
