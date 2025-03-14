.class public abstract Ld1/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ld1/l0;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld1/l0;->c()Ln0/d;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    instance-of v2, v0, Li1/j;

    if-eqz v2, :cond_2

    invoke-static {p1}, Ld1/m0;->b(I)Z

    move-result p1

    iget v2, p0, Ld1/l0;->g:I

    invoke-static {v2}, Ld1/m0;->b(I)Z

    move-result v2

    if-ne p1, v2, :cond_2

    move-object p1, v0

    check-cast p1, Li1/j;

    iget-object p1, p1, Li1/j;->h:Ld1/a0;

    invoke-interface {v0}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld1/a0;->h(Ln0/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0}, Ld1/a0;->g(Ln0/g;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ld1/m0;->e(Ld1/l0;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, v1}, Ld1/m0;->d(Ld1/l0;Ln0/d;Z)V

    :goto_1
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Ld1/l0;Ln0/d;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld1/l0;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld1/l0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Ll0/k;->e:Ll0/k$a;

    invoke-static {v1}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Ll0/k;->e:Ll0/k$a;

    invoke-virtual {p0, v0}, Ld1/l0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_2

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Li1/j;

    iget-object p2, p1, Li1/j;->i:Ln0/d;

    iget-object v0, p1, Li1/j;->k:Ljava/lang/Object;

    invoke-interface {p2}, Ln0/d;->h()Ln0/g;

    move-result-object v1

    invoke-static {v1, v0}, Li1/l0;->c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Li1/l0;->a:Li1/h0;

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1, v0}, Ld1/z;->f(Ln0/d;Ln0/g;Ljava/lang/Object;)Ld1/x1;

    :cond_1
    :try_start_0
    iget-object p1, p1, Li1/j;->i:Ln0/d;

    invoke-interface {p1, p0}, Ln0/d;->g(Ljava/lang/Object;)V

    sget-object p0, Ll0/q;->a:Ll0/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v1, v0}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-interface {p1, p0}, Ln0/d;->g(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final e(Ld1/l0;)V
    .locals 4

    .line 1
    sget-object v0, Ld1/v1;->a:Ld1/v1;

    invoke-virtual {v0}, Ld1/v1;->a()Ld1/q0;

    move-result-object v0

    invoke-virtual {v0}, Ld1/q0;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ld1/q0;->t(Ld1/l0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld1/q0;->x(Z)V

    :try_start_0
    invoke-virtual {p0}, Ld1/l0;->c()Ln0/d;

    move-result-object v2

    invoke-static {p0, v2, v1}, Ld1/m0;->d(Ld1/l0;Ln0/d;Z)V

    :cond_1
    invoke-virtual {v0}, Ld1/q0;->C()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ld1/l0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {v0, v1}, Ld1/q0;->o(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Ld1/q0;->o(Z)V

    throw p0
.end method
