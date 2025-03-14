.class public abstract Li1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln0/g;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Li1/g;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/b0;

    :try_start_0
    invoke-interface {v1, p0, p1}, Ld1/b0;->j(Ln0/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {p1, v1}, Ld1/c0;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Li1/g;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Li1/i;

    invoke-direct {v0, p0}, Li1/i;-><init>(Ln0/g;)V

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {p1}, Li1/g;->b(Ljava/lang/Throwable;)V

    return-void
.end method
