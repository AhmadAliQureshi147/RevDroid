.class abstract Lo0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lv0/p;Ljava/lang/Object;Ln0/d;)Ln0/d;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lp0/h;->a(Ln0/d;)Ln0/d;

    move-result-object p2

    instance-of v0, p0, Lp0/a;

    if-eqz v0, :cond_0

    check-cast p0, Lp0/a;

    invoke-virtual {p0, p1, p2}, Lp0/a;->a(Ljava/lang/Object;Ln0/d;)Ln0/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    sget-object v1, Ln0/h;->e:Ln0/h;

    if-ne v0, v1, :cond_1

    new-instance v0, Lo0/c$a;

    invoke-direct {v0, p2, p0, p1}, Lo0/c$a;-><init>(Ln0/d;Lv0/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lo0/c$b;

    invoke-direct {v1, p2, v0, p0, p1}, Lo0/c$b;-><init>(Ln0/d;Ln0/g;Lv0/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ln0/d;)Ln0/d;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lp0/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lp0/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lp0/d;->l()Ln0/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
