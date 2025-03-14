.class public abstract Ld1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln0/g;)Ld1/d0;
    .locals 3

    .line 1
    new-instance v0, Li1/f;

    sget-object v1, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {p0, v1}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Ld1/i1;->b(Ld1/e1;ILjava/lang/Object;)Ld1/s;

    move-result-object v1

    invoke-interface {p0, v1}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Li1/f;-><init>(Ln0/g;)V

    return-object v0
.end method

.method public static final b(Lv0/p;Ln0/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Li1/d0;

    invoke-interface {p1}, Ln0/d;->h()Ln0/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Li1/d0;-><init>(Ln0/g;Ln0/d;)V

    invoke-static {v0, v0, p0}, Lj1/b;->b(Li1/d0;Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lp0/h;->c(Ln0/d;)V

    :cond_0
    return-object p0
.end method
