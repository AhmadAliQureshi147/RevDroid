.class final Lf1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/f;
.implements Ld1/z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Ld1/k;

.field final synthetic g:Lf1/b;


# direct methods
.method public constructor <init>(Lf1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/b$a;->g:Lf1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lf1/c;->m()Li1/h0;

    move-result-object p1

    iput-object p1, p0, Lf1/b$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lf1/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf1/b$a;->h()V

    return-void
.end method

.method public static final synthetic d(Lf1/b$a;Ld1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/b$a;->f:Ld1/k;

    return-void
.end method

.method public static final synthetic e(Lf1/b$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/b$a;->e:Ljava/lang/Object;

    return-void
.end method

.method private final f(Lf1/j;IJLn0/d;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v6, p0, Lf1/b$a;->g:Lf1/b;

    invoke-static {p5}, Lo0/b;->b(Ln0/d;)Ln0/d;

    move-result-object v0

    invoke-static {v0}, Ld1/m;->a(Ln0/d;)Ld1/k;

    move-result-object v7

    :try_start_0
    invoke-static {p0, v7}, Lf1/b$a;->d(Lf1/b$a;Ld1/k;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lf1/b;->m(Lf1/b;Lf1/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lf1/c;->r()Li1/h0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v6, p0, p1, p2}, Lf1/b;->k(Lf1/b;Ld1/z1;Lf1/j;I)V

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lf1/c;->h()Li1/h0;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    invoke-virtual {v6}, Lf1/b;->L()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Li1/e;->b()V

    :cond_1
    invoke-static {}, Lf1/b;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/j;

    :cond_2
    :goto_0
    invoke-virtual {v6}, Lf1/b;->S()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lf1/b$a;->c(Lf1/b$a;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lf1/b;->f()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lf1/c;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    rem-long v2, p2, v2

    long-to-int p4, v2

    iget-wide v2, p1, Li1/e0;->g:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_5

    invoke-static {v6, v0, v1, p1}, Lf1/b;->a(Lf1/b;JLf1/j;)Lf1/j;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lf1/b;->m(Lf1/b;Lf1/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lf1/c;->r()Li1/h0;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-static {v6, p0, p1, p4}, Lf1/b;->k(Lf1/b;Ld1/z1;Lf1/j;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lf1/c;->h()Li1/h0;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {v6}, Lf1/b;->L()J

    move-result-wide v0

    cmp-long p4, p2, v0

    if-gez p4, :cond_2

    invoke-virtual {p1}, Li1/e;->b()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lf1/c;->s()Li1/h0;

    move-result-object p2

    if-eq v0, p2, :cond_9

    invoke-virtual {p1}, Li1/e;->b()V

    invoke-static {p0, v0}, Lf1/b$a;->e(Lf1/b$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lf1/b$a;->d(Lf1/b$a;Ld1/k;)V

    invoke-static {v8}, Lp0/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lf1/b;->f:Lv0/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Ld1/k;->h()Ln0/g;

    move-result-object p3

    invoke-static {p2, v0, p3}, Li1/z;->a(Lv0/l;Ljava/lang/Object;Ln0/g;)Lv0/l;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, Ld1/k;->K(Ljava/lang/Object;Lv0/l;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Li1/e;->b()V

    invoke-static {p0, v0}, Lf1/b$a;->e(Lf1/b$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lf1/b$a;->d(Lf1/b$a;Ld1/k;)V

    invoke-static {v8}, Lp0/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lf1/b;->f:Lv0/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Ld1/k;->h()Ln0/g;

    move-result-object p3

    invoke-static {p2, v0, p3}, Li1/z;->a(Lv0/l;Ljava/lang/Object;Ln0/g;)Lv0/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Ld1/k;->v()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    invoke-static {p5}, Lp0/h;->c(Ln0/d;)V

    :cond_b
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Ld1/k;->I()V

    throw p1
.end method

.method private final g()Z
    .locals 1

    .line 1
    invoke-static {}, Lf1/c;->z()Li1/h0;

    move-result-object v0

    iput-object v0, p0, Lf1/b$a;->e:Ljava/lang/Object;

    iget-object v0, p0, Lf1/b$a;->g:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->H()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Li1/g0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b$a;->f:Ld1/k;

    invoke-static {v0}, Lw0/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lf1/b$a;->f:Ld1/k;

    invoke-static {}, Lf1/c;->z()Li1/h0;

    move-result-object v1

    iput-object v1, p0, Lf1/b$a;->e:Ljava/lang/Object;

    iget-object v1, p0, Lf1/b$a;->g:Lf1/b;

    invoke-virtual {v1}, Lf1/b;->H()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ll0/k;->e:Ll0/k$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v1}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ln0/d;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v2, Ll0/k;->e:Ll0/k$a;

    invoke-static {v1}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Li1/e0;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/b$a;->f:Ld1/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ld1/k;->a(Li1/e0;I)V

    :cond_0
    return-void
.end method

.method public b(Ln0/d;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v6, p0, Lf1/b$a;->g:Lf1/b;

    const/4 v7, 0x0

    invoke-static {}, Lf1/b;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/j;

    :goto_0
    invoke-virtual {v6}, Lf1/b;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lf1/b$a;->g()Z

    move-result p1

    :goto_1
    invoke-static {p1}, Lp0/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    :cond_0
    invoke-static {}, Lf1/b;->f()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    sget v1, Lf1/c;->b:I

    int-to-long v2, v1

    div-long v2, v11, v2

    int-to-long v4, v1

    rem-long v4, v11, v4

    long-to-int v10, v4

    iget-wide v4, v0, Li1/e0;->g:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-static {v6, v2, v3, v0}, Lf1/b;->a(Lf1/b;JLf1/j;)Lf1/j;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object v9, v0

    :goto_2
    move-object v0, v6

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lf1/b;->m(Lf1/b;Lf1/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lf1/c;->r()Li1/h0;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lf1/c;->h()Li1/h0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v6}, Lf1/b;->L()J

    move-result-wide v0

    cmp-long v2, v11, v0

    if-gez v2, :cond_3

    invoke-virtual {v9}, Li1/e;->b()V

    :cond_3
    move-object v0, v9

    goto :goto_0

    :cond_4
    invoke-static {}, Lf1/c;->s()Li1/h0;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v8, p0

    move-object v13, p1

    invoke-direct/range {v8 .. v13}, Lf1/b$a;->f(Lf1/j;IJLn0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v9}, Li1/e;->b()V

    iput-object v0, p0, Lf1/b$a;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :goto_3
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/b$a;->f:Ld1/k;

    invoke-static {v0}, Lw0/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lf1/b$a;->f:Ld1/k;

    iput-object p1, p0, Lf1/b$a;->e:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lf1/b$a;->g:Lf1/b;

    iget-object v3, v3, Lf1/b;->f:Lv0/l;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ld1/k;->h()Ln0/g;

    move-result-object v1

    invoke-static {v3, p1, v1}, Li1/z;->a(Lv0/l;Ljava/lang/Object;Ln0/g;)Lv0/l;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, Lf1/c;->u(Ld1/j;Ljava/lang/Object;Lv0/l;)Z

    move-result p1

    return p1
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b$a;->f:Ld1/k;

    invoke-static {v0}, Lw0/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lf1/b$a;->f:Ld1/k;

    invoke-static {}, Lf1/c;->z()Li1/h0;

    move-result-object v1

    iput-object v1, p0, Lf1/b$a;->e:Ljava/lang/Object;

    iget-object v1, p0, Lf1/b$a;->g:Lf1/b;

    invoke-virtual {v1}, Lf1/b;->H()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ll0/k;->e:Ll0/k$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v1}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ln0/d;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v2, Ll0/k;->e:Ll0/k$a;

    invoke-static {v1}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b$a;->e:Ljava/lang/Object;

    invoke-static {}, Lf1/c;->m()Li1/h0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lf1/c;->m()Li1/h0;

    move-result-object v1

    iput-object v1, p0, Lf1/b$a;->e:Ljava/lang/Object;

    invoke-static {}, Lf1/c;->z()Li1/h0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lf1/b$a;->g:Lf1/b;

    invoke-static {v0}, Lf1/b;->d(Lf1/b;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Li1/g0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
