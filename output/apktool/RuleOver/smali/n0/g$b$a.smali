.class public abstract Ln0/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ln0/g$b;Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "operation"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lv0/p;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ln0/g$b;Ln0/g$c;)Ln0/g$b;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ln0/g$b;->getKey()Ln0/g$c;

    move-result-object v0

    invoke-static {v0, p1}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get"

    invoke-static {p0, p1}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ln0/g$b;Ln0/g$c;)Ln0/g;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ln0/g$b;->getKey()Ln0/g$c;

    move-result-object v0

    invoke-static {v0, p1}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Ln0/h;->e:Ln0/h;

    :cond_0
    return-object p0
.end method

.method public static d(Ln0/g$b;Ln0/g;)Ln0/g;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ln0/g$a;->a(Ln0/g;Ln0/g;)Ln0/g;

    move-result-object p0

    return-object p0
.end method
