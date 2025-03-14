.class abstract synthetic Ld1/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ld1/e1;)Ld1/s;
    .locals 1

    .line 1
    new-instance v0, Ld1/h1;

    invoke-direct {v0, p0}, Ld1/h1;-><init>(Ld1/e1;)V

    return-object v0
.end method

.method public static synthetic b(Ld1/e1;ILjava/lang/Object;)Ld1/s;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Ld1/i1;->a(Ld1/e1;)Ld1/s;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ln0/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {p0, v0}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p0

    check-cast p0, Ld1/e1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ld1/e1;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final d(Ld1/e1;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ld1/e1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ld1/e1;->q()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method
