.class public abstract Ld1/s0;
.super Ld1/q0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/q0;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract E()Ljava/lang/Thread;
.end method

.method protected final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/s0;->E()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Ld1/c;->a()Ld1/b;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
