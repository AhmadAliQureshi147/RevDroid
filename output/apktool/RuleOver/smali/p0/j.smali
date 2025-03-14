.class public abstract Lp0/j;
.super Lp0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lp0/a;-><init>(Ln0/d;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ln0/d;->h()Ln0/g;

    move-result-object p1

    sget-object v0, Ln0/h;->e:Ln0/h;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public h()Ln0/g;
    .locals 1

    .line 1
    sget-object v0, Ln0/h;->e:Ln0/h;

    return-object v0
.end method
