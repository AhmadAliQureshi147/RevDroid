.class public abstract Lh1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lg1/d;Ln0/g;)Lg1/d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lh1/e;->d(Lg1/d;Ln0/g;)Lg1/d;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ln0/g;Ljava/lang/Object;Ljava/lang/Object;Lv0/p;Ln0/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0, p2}, Li1/l0;->c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Lh1/k;

    invoke-direct {v0, p4, p0}, Lh1/k;-><init>(Ln0/d;Ln0/g;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lw0/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv0/p;

    invoke-interface {p3, p1, v0}, Lv0/p;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    invoke-static {p4}, Lp0/h;->c(Ln0/d;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Li1/l0;->a(Ln0/g;Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic c(Ln0/g;Ljava/lang/Object;Ljava/lang/Object;Lv0/p;Ln0/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {p0}, Li1/l0;->b(Ln0/g;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lh1/e;->b(Ln0/g;Ljava/lang/Object;Ljava/lang/Object;Lv0/p;Ln0/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lg1/d;Ln0/g;)Lg1/d;
    .locals 1

    .line 1
    instance-of v0, p0, Lh1/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lh1/l;

    invoke-direct {v0, p0, p1}, Lh1/l;-><init>(Lg1/d;Ln0/g;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
