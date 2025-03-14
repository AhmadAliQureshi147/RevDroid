.class abstract Lz0/f;
.super Lz0/e;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static b(II)I
    .locals 0

    .line 1
    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static c(JJ)J
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static d(II)Lz0/a;
    .locals 2

    .line 1
    sget-object v0, Lz0/a;->h:Lz0/a$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lz0/a$a;->a(III)Lz0/a;

    move-result-object p0

    return-object p0
.end method
