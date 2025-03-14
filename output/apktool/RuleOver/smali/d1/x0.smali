.class public final Ld1/x0;
.super Ld1/w0;
.source "SourceFile"

# interfaces
.implements Ld1/k0;


# instance fields
.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/w0;-><init>()V

    iput-object p1, p0, Ld1/x0;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1}, Li1/c;->a(Ljava/util/concurrent/Executor;)Z

    return-void
.end method

.method private final o(Ln0/g;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 1

    .line 1
    const-string v0, "The task was rejected"

    invoke-static {v0, p2}, Ld1/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p2

    invoke-static {p1, p2}, Ld1/i1;->c(Ln0/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ld1/x0;

    if-eqz v0, :cond_0

    check-cast p1, Ld1/x0;

    invoke-virtual {p1}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Ln0/g;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-direct {p0, p1, v0}, Ld1/x0;->o(Ln0/g;Ljava/util/concurrent/RejectedExecutionException;)V

    invoke-static {}, Ld1/n0;->b()Ld1/a0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld1/a0;->g(Ln0/g;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public r()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/x0;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/x0;->r()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
