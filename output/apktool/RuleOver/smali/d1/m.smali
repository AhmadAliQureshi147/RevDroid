.class public abstract Ld1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln0/d;)Ld1/k;
    .locals 2

    .line 1
    instance-of v0, p0, Li1/j;

    if-nez v0, :cond_0

    new-instance v0, Ld1/k;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld1/k;-><init>(Ln0/d;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Li1/j;

    invoke-virtual {v0}, Li1/j;->k()Ld1/k;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld1/k;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Ld1/k;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ld1/k;-><init>(Ln0/d;I)V

    return-object v0
.end method
