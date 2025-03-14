.class public abstract Lf1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf1/r;Lv0/a;Ln0/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lf1/p$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf1/p$a;

    iget v1, v0, Lf1/p$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf1/p$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf1/p$a;

    invoke-direct {v0, p2}, Lf1/p$a;-><init>(Ln0/d;)V

    :goto_0
    iget-object p2, v0, Lf1/p$a;->j:Ljava/lang/Object;

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lf1/p$a;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lf1/p$a;->i:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lv0/a;

    iget-object p0, v0, Lf1/p$a;->h:Ljava/lang/Object;

    check-cast p0, Lf1/r;

    :try_start_0
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ln0/d;->h()Ln0/g;

    move-result-object p2

    sget-object v2, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {p2, v2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p2

    if-ne p2, p0, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    :try_start_1
    iput-object p0, v0, Lf1/p$a;->h:Ljava/lang/Object;

    iput-object p1, v0, Lf1/p$a;->i:Ljava/lang/Object;

    iput v3, v0, Lf1/p$a;->k:I

    new-instance p2, Ld1/k;

    invoke-static {v0}, Lo0/b;->b(Ln0/d;)Ln0/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Ld1/k;-><init>(Ln0/d;I)V

    invoke-virtual {p2}, Ld1/k;->z()V

    new-instance v2, Lf1/p$b;

    invoke-direct {v2, p2}, Lf1/p$b;-><init>(Ld1/j;)V

    invoke-interface {p0, v2}, Lf1/t;->r(Lv0/l;)V

    invoke-virtual {p2}, Ld1/k;->v()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_4

    invoke-static {v0}, Lp0/h;->c(Ln0/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    invoke-interface {p1}, Lv0/a;->b()Ljava/lang/Object;

    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0

    :goto_3
    invoke-interface {p1}, Lv0/a;->b()Ljava/lang/Object;

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Ld1/d0;Ln0/g;ILf1/a;Ld1/f0;Lv0/l;Lv0/p;)Lf1/s;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, Lf1/g;->b(ILf1/a;Lv0/l;ILjava/lang/Object;)Lf1/d;

    move-result-object p2

    invoke-static {p0, p1}, Ld1/z;->d(Ld1/d0;Ln0/g;)Ln0/g;

    move-result-object p0

    new-instance p1, Lf1/q;

    invoke-direct {p1, p0, p2}, Lf1/q;-><init>(Ln0/g;Lf1/d;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Ld1/l1;->d0(Lv0/l;)Ld1/o0;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Ld1/a;->I0(Ld1/f0;Ljava/lang/Object;Lv0/p;)V

    return-object p1
.end method

.method public static synthetic c(Ld1/d0;Ln0/g;ILf1/a;Ld1/f0;Lv0/l;Lv0/p;ILjava/lang/Object;)Lf1/s;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Ln0/h;->e:Ln0/h;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lf1/a;->e:Lf1/a;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Ld1/f0;->e:Ld1/f0;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lf1/p;->b(Ld1/d0;Ln0/g;ILf1/a;Ld1/f0;Lv0/l;Lv0/p;)Lf1/s;

    move-result-object p0

    return-object p0
.end method
