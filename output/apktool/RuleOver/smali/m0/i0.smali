.class abstract Lm0/i0;
.super Lm0/h0;
.source "SourceFile"


# direct methods
.method public static final b()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lm0/z;->e:Lm0/z;

    return-object v0
.end method

.method public static final c(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm0/h0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lm0/i0;->b()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method
