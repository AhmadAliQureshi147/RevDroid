.class abstract synthetic Ld1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ld1/d0;Ln0/g;Ld1/f0;Lv0/p;)Ld1/e1;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ld1/z;->d(Ld1/d0;Ln0/g;)Ln0/g;

    move-result-object p0

    invoke-virtual {p2}, Ld1/f0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ld1/n1;

    invoke-direct {p1, p0, p3}, Ld1/n1;-><init>(Ln0/g;Lv0/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ld1/t1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ld1/t1;-><init>(Ln0/g;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Ld1/a;->I0(Ld1/f0;Ljava/lang/Object;Lv0/p;)V

    return-object p1
.end method

.method public static synthetic b(Ld1/d0;Ln0/g;Ld1/f0;Lv0/p;ILjava/lang/Object;)Ld1/e1;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Ln0/h;->e:Ln0/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Ld1/f0;->e:Ld1/f0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ld1/f;->a(Ld1/d0;Ln0/g;Ld1/f0;Lv0/p;)Ld1/e1;

    move-result-object p0

    return-object p0
.end method
