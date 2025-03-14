.class public abstract Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lv0/p;Ljava/lang/Object;Ln0/d;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lp0/h;->a(Ln0/d;)Ln0/d;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Ln0/d;->h()Ln0/g;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Li1/l0;->c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    :try_start_1
    invoke-static {p0, v2}, Lw0/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv0/p;

    invoke-interface {p0, p1, v0}, Lv0/p;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p2, v1}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {p2, v1}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Ll0/k;->e:Ll0/k$a;

    invoke-static {p0}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ln0/d;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final b(Li1/d0;Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Lw0/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv0/p;

    invoke-interface {p2, p1, p0}, Lv0/p;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ld1/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Ld1/u;-><init>(Ljava/lang/Throwable;ZILw0/g;)V

    move-object p1, p2

    :goto_0
    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    :goto_1
    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Ld1/l1;->i0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ld1/m1;->b:Li1/h0;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, Ld1/u;

    if-nez p1, :cond_2

    invoke-static {p0}, Ld1/m1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_2
    check-cast p0, Ld1/u;

    iget-object p0, p0, Ld1/u;->a:Ljava/lang/Throwable;

    throw p0
.end method
