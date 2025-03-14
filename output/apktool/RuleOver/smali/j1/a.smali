.class public abstract Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Ln0/d;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ll0/k;->e:Ll0/k$a;

    invoke-static {p1}, Ll0/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ln0/d;->g(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Ln0/d;Ln0/d;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lo0/b;->b(Ln0/d;)Ln0/d;

    move-result-object p0

    sget-object v0, Ll0/k;->e:Ll0/k$a;

    sget-object v0, Ll0/q;->a:Ll0/q;

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Li1/k;->c(Ln0/d;Ljava/lang/Object;Lv0/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lj1/a;->a(Ln0/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Lv0/p;Ljava/lang/Object;Ln0/d;Lv0/l;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lo0/b;->a(Lv0/p;Ljava/lang/Object;Ln0/d;)Ln0/d;

    move-result-object p0

    invoke-static {p0}, Lo0/b;->b(Ln0/d;)Ln0/d;

    move-result-object p0

    sget-object p1, Ll0/k;->e:Ll0/k$a;

    sget-object p1, Ll0/q;->a:Ll0/q;

    invoke-static {p1}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Li1/k;->b(Ln0/d;Ljava/lang/Object;Lv0/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Lj1/a;->a(Ln0/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lv0/p;Ljava/lang/Object;Ln0/d;Lv0/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lj1/a;->c(Lv0/p;Ljava/lang/Object;Ln0/d;Lv0/l;)V

    return-void
.end method
