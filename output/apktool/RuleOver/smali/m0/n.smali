.class abstract Lm0/n;
.super Lm0/m;
.source "SourceFile"


# direct methods
.method public static varargs c([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "elements"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lm0/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lm0/d;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final d([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm0/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm0/d;-><init>([Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static e()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lm0/x;->e:Lm0/x;

    return-object v0
.end method

.method public static final f(Ljava/util/List;)I
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static varargs g([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "elements"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lm0/i;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lm0/l;->e()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm0/l;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lm0/l;->e()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
