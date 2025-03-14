.class public abstract Li1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li1/h0;

.field public static final b:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li1/k;->a:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li1/k;->b:Li1/h0;

    return-void
.end method

.method public static final synthetic a()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Li1/k;->a:Li1/h0;

    return-object v0
.end method

.method public static final b(Ln0/d;Ljava/lang/Object;Lv0/l;)V
    .locals 5

    .line 1
    instance-of v0, p0, Li1/j;

    if-eqz v0, :cond_5

    check-cast p0, Li1/j;

    invoke-static {p1, p2}, Ld1/y;->c(Ljava/lang/Object;Lv0/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Li1/j;->h:Ld1/a0;

    invoke-virtual {p0}, Li1/j;->h()Ln0/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld1/a0;->h(Ln0/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Li1/j;->j:Ljava/lang/Object;

    iput v1, p0, Ld1/l0;->g:I

    iget-object p1, p0, Li1/j;->h:Ld1/a0;

    invoke-virtual {p0}, Li1/j;->h()Ln0/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ld1/a0;->g(Ln0/g;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Ld1/v1;->a:Ld1/v1;

    invoke-virtual {v0}, Ld1/v1;->a()Ld1/q0;

    move-result-object v0

    invoke-virtual {v0}, Ld1/q0;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Li1/j;->j:Ljava/lang/Object;

    iput v1, p0, Ld1/l0;->g:I

    invoke-virtual {v0, p0}, Ld1/q0;->t(Ld1/l0;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v1}, Ld1/q0;->x(Z)V

    :try_start_0
    invoke-virtual {p0}, Li1/j;->h()Ln0/g;

    move-result-object v2

    sget-object v3, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {v2, v3}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v2

    check-cast v2, Ld1/e1;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ld1/e1;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ld1/e1;->q()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Li1/j;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Ll0/k;->e:Ll0/k$a;

    invoke-static {v2}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ln0/d;->g(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_4

    iget-object p2, p0, Li1/j;->i:Ln0/d;

    iget-object v2, p0, Li1/j;->k:Ljava/lang/Object;

    invoke-interface {p2}, Ln0/d;->h()Ln0/g;

    move-result-object v3

    invoke-static {v3, v2}, Li1/l0;->c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Li1/l0;->a:Li1/h0;

    if-eq v2, v4, :cond_3

    invoke-static {p2, v3, v2}, Ld1/z;->f(Ln0/d;Ln0/g;Ljava/lang/Object;)Ld1/x1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    iget-object p2, p0, Li1/j;->i:Ln0/d;

    invoke-interface {p2, p1}, Ln0/d;->g(Ljava/lang/Object;)V

    sget-object p1, Ll0/q;->a:Ll0/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v2}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v3, v2}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ld1/q0;->C()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 p2, 0x0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Ld1/l0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    invoke-virtual {v0, v1}, Ld1/q0;->o(Z)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Ld1/q0;->o(Z)V

    throw p0

    :cond_5
    invoke-interface {p0, p1}, Ln0/d;->g(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static synthetic c(Ln0/d;Ljava/lang/Object;Lv0/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Li1/k;->b(Ln0/d;Ljava/lang/Object;Lv0/l;)V

    return-void
.end method
