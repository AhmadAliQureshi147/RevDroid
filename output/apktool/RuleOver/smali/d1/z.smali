.class public abstract Ld1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Ln0/g;Ln0/g;Z)Ln0/g;
    .locals 3

    .line 1
    invoke-static {p0}, Ld1/z;->c(Ln0/g;)Z

    move-result v0

    invoke-static {p1}, Ld1/z;->c(Ln0/g;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lw0/q;

    invoke-direct {v0}, Lw0/q;-><init>()V

    iput-object p1, v0, Lw0/q;->e:Ljava/lang/Object;

    sget-object p1, Ln0/h;->e:Ln0/h;

    new-instance v2, Ld1/z$b;

    invoke-direct {v2, v0, p2}, Ld1/z$b;-><init>(Lw0/q;Z)V

    invoke-interface {p0, p1, v2}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln0/g;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lw0/q;->e:Ljava/lang/Object;

    check-cast p2, Ln0/g;

    sget-object v1, Ld1/z$a;->f:Ld1/z$a;

    invoke-interface {p2, p1, v1}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lw0/q;->e:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lw0/q;->e:Ljava/lang/Object;

    check-cast p1, Ln0/g;

    invoke-interface {p0, p1}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ln0/g;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Ln0/g;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ld1/z$c;->f:Ld1/z$c;

    invoke-interface {p0, v0, v1}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Ld1/d0;Ln0/g;)Ln0/g;
    .locals 1

    .line 1
    invoke-interface {p0}, Ld1/d0;->z()Ln0/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ld1/z;->a(Ln0/g;Ln0/g;Z)Ln0/g;

    move-result-object p0

    invoke-static {}, Ld1/n0;->a()Ld1/a0;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Ln0/e;->d:Ln0/e$b;

    invoke-interface {p0, p1}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ld1/n0;->a()Ld1/a0;

    move-result-object p1

    invoke-interface {p0, p1}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Lp0/e;)Ld1/x1;
    .locals 0

    .line 1
    :cond_0
    invoke-interface {p0}, Lp0/e;->t()Lp0/e;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final f(Ln0/d;Ln0/g;Ljava/lang/Object;)Ld1/x1;
    .locals 1

    .line 1
    instance-of p2, p0, Lp0/e;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Ld1/y1;->e:Ld1/y1;

    invoke-interface {p1, p2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    check-cast p0, Lp0/e;

    invoke-static {p0}, Ld1/z;->e(Lp0/e;)Ld1/x1;

    return-object v0
.end method
