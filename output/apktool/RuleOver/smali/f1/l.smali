.class abstract synthetic Lf1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf1/s;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, p1}, Ld1/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-interface {p0, v0}, Lf1/s;->b(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
