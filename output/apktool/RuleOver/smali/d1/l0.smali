.class public abstract Ld1/l0;
.super Lk1/h;
.source "SourceFile"


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk1/h;-><init>()V

    iput p1, p0, Ld1/l0;->g:I

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract c()Ln0/d;
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Ld1/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ld1/u;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Ld1/u;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ll0/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Ld1/g0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lw0/k;->b(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Ld1/g0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ld1/l0;->c()Ln0/d;

    move-result-object p1

    invoke-interface {p1}, Ln0/d;->h()Ln0/g;

    move-result-object p1

    invoke-static {p1, p2}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract i()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk1/h;->f:Lk1/i;

    :try_start_0
    invoke-virtual {p0}, Ld1/l0;->c()Ln0/d;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v1, v2}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li1/j;

    iget-object v2, v1, Li1/j;->i:Ln0/d;

    iget-object v1, v1, Li1/j;->k:Ljava/lang/Object;

    invoke-interface {v2}, Ln0/d;->h()Ln0/g;

    move-result-object v3

    invoke-static {v3, v1}, Li1/l0;->c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Li1/l0;->a:Li1/h0;

    if-eq v1, v4, :cond_0

    invoke-static {v2, v3, v1}, Ld1/z;->f(Ln0/d;Ln0/g;Ljava/lang/Object;)Ld1/x1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ln0/d;->h()Ln0/g;

    move-result-object v4

    invoke-virtual {p0}, Ld1/l0;->i()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ld1/l0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    iget v8, p0, Ld1/l0;->g:I

    invoke-static {v8}, Ld1/m0;->b(I)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {v4, v8}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v4

    check-cast v4, Ld1/e1;

    goto :goto_1

    :cond_1
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ld1/e1;->c()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v4}, Ld1/e1;->q()Ljava/util/concurrent/CancellationException;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ld1/l0;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v5, Ll0/k;->e:Ll0/k$a;

    invoke-static {v4}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    invoke-interface {v2, v4}, Ln0/d;->g(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    sget-object v4, Ll0/k;->e:Ll0/k$a;

    invoke-static {v6}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_3
    sget-object v4, Ll0/k;->e:Ll0/k$a;

    invoke-virtual {p0, v5}, Ld1/l0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :goto_3
    sget-object v2, Ll0/q;->a:Ll0/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v3, v1}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lk1/i;->b()V

    sget-object v0, Ll0/q;->a:Ll0/q;

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v1, Ll0/k;->e:Ll0/k$a;

    invoke-static {v0}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Ll0/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Ld1/l0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {v3, v1}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    :try_start_5
    sget-object v2, Ll0/k;->e:Ll0/k$a;

    invoke-interface {v0}, Lk1/i;->b()V

    sget-object v0, Ll0/q;->a:Ll0/q;

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    sget-object v2, Ll0/k;->e:Ll0/k$a;

    invoke-static {v0}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Ll0/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ld1/l0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
