.class public final Ld1/i0;
.super Ld1/r0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final m:Ld1/i0;

.field private static final n:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ld1/i0;

    invoke-direct {v0}, Ld1/i0;-><init>()V

    sput-object v0, Ld1/i0;->m:Ld1/i0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ld1/q0;->y(Ld1/q0;ZILjava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Ld1/i0;->n:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/r0;-><init>()V

    return-void
.end method

.method private final declared-synchronized Q()V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ld1/i0;->T()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sput v0, Ld1/i0;->debugStatus:I

    invoke-virtual {p0}, Ld1/r0;->O()V

    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized R()Ljava/lang/Thread;
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    sget-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final S()Z
    .locals 2

    .line 1
    sget v0, Ld1/i0;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final T()Z
    .locals 2

    .line 1
    sget v0, Ld1/i0;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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

.method private final declared-synchronized U()Z
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ld1/i0;->T()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput v0, Ld1/i0;->debugStatus:I

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v1}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final V()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public D()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    sput v0, Ld1/i0;->debugStatus:I

    invoke-super {p0}, Ld1/r0;->D()V

    return-void
.end method

.method protected E()Ljava/lang/Thread;
    .locals 1

    .line 1
    sget-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ld1/i0;->R()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public I(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld1/i0;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld1/i0;->V()V

    :cond_0
    invoke-super {p0, p1}, Ld1/r0;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 12

    .line 1
    sget-object v0, Ld1/v1;->a:Ld1/v1;

    invoke-virtual {v0, p0}, Ld1/v1;->c(Ld1/q0;)V

    invoke-static {}, Ld1/c;->a()Ld1/b;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Ld1/i0;->U()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sput-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ld1/i0;->Q()V

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-virtual {p0}, Ld1/r0;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/i0;->E()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Ld1/r0;->M()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v1

    if-nez v9, :cond_6

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    cmp-long v11, v3, v1

    if-nez v11, :cond_3

    sget-wide v3, Ld1/i0;->n:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v9

    :cond_3
    sub-long v9, v3, v9

    cmp-long v11, v9, v7

    if-gtz v11, :cond_5

    sput-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ld1/i0;->Q()V

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-virtual {p0}, Ld1/r0;->L()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ld1/i0;->E()Ljava/lang/Thread;

    :cond_4
    return-void

    :cond_5
    :try_start_2
    invoke-static {v5, v6, v9, v10}, Lz0/d;->c(JJ)J

    move-result-wide v5

    goto :goto_1

    :cond_6
    move-wide v3, v1

    :goto_1
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    invoke-direct {p0}, Ld1/i0;->T()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_8

    sput-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ld1/i0;->Q()V

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-virtual {p0}, Ld1/r0;->L()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ld1/i0;->E()Ljava/lang/Thread;

    :cond_7
    return-void

    :cond_8
    :try_start_3
    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v0, Ld1/i0;->_thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ld1/i0;->Q()V

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-virtual {p0}, Ld1/r0;->L()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ld1/i0;->E()Ljava/lang/Thread;

    :cond_9
    throw v1
.end method
