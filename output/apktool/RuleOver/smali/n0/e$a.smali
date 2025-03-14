.class public abstract Ln0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ln0/e;Ln0/g$c;)Ln0/g$b;
    .locals 2

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ln0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ln0/b;

    invoke-interface {p0}, Ln0/g$b;->getKey()Ln0/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln0/b;->a(Ln0/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ln0/b;->b(Ln0/g$b;)Ln0/g$b;

    move-result-object p0

    instance-of p1, p0, Ln0/g$b;

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Ln0/e;->d:Ln0/e$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ln0/e;Ln0/g$c;)Ln0/g;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ln0/b;

    if-eqz v0, :cond_1

    check-cast p1, Ln0/b;

    invoke-interface {p0}, Ln0/g$b;->getKey()Ln0/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln0/b;->a(Ln0/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ln0/b;->b(Ln0/g$b;)Ln0/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Ln0/h;->e:Ln0/h;

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Ln0/e;->d:Ln0/e$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Ln0/h;->e:Ln0/h;

    :cond_2
    return-object p0
.end method
