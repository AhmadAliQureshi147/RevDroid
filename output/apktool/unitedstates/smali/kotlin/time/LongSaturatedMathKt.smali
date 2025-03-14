.class public final Lkotlin/time/LongSaturatedMathKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,75:1\n74#1:76\n74#1:77\n74#1:78\n74#1:79\n74#1:80\n74#1:81\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n15#1:76\n18#1:77\n36#1:78\n45#1:79\n52#1:80\n56#1:81\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,75:1\n74#1:76\n74#1:77\n74#1:78\n74#1:79\n74#1:80\n74#1:81\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n15#1:76\n18#1:77\n36#1:78\n45#1:79\n52#1:80\n56#1:81\n*E\n"
    }
.end annotation


# direct methods
.method private static final checkInfiniteSumDefined-PjuGub4(JJJ)J
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    xor-long p2, p0, p4

    .line 8
    .line 9
    const-wide/16 p4, 0x0

    .line 10
    .line 11
    cmp-long p2, p2, p4

    .line 12
    .line 13
    if-ltz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p1, "Summing infinities of different signs"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    return-wide p0
.end method

.method private static final isSaturated(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    or-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final saturatingAdd-pTJri5U(JJ)J
    .locals 8

    .line 1
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getInWholeNanoseconds-impl(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    const-wide/16 v0, 0x1

    .line 6
    .line 7
    sub-long v2, p0, v0

    .line 8
    .line 9
    or-long/2addr v2, v0

    .line 10
    const-wide v6, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, v2, v6

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move-wide v0, p0

    .line 20
    move-wide v2, p2

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlin/time/LongSaturatedMathKt;->checkInfiniteSumDefined-PjuGub4(JJJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    sub-long v2, v4, v0

    .line 27
    .line 28
    or-long/2addr v0, v2

    .line 29
    cmp-long v0, v0, v6

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/LongSaturatedMathKt;->saturatingAddInHalves-pTJri5U(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    return-wide p0

    .line 38
    :cond_1
    add-long p2, p0, v4

    .line 39
    .line 40
    xor-long v0, p0, p2

    .line 41
    .line 42
    xor-long v2, v4, p2

    .line 43
    .line 44
    and-long/2addr v0, v2

    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    cmp-long v0, v0, v2

    .line 48
    .line 49
    if-gez v0, :cond_3

    .line 50
    .line 51
    cmp-long p0, p0, v2

    .line 52
    .line 53
    if-gez p0, :cond_2

    .line 54
    .line 55
    const-wide/high16 v6, -0x8000000000000000L

    .line 56
    .line 57
    :cond_2
    return-wide v6

    .line 58
    :cond_3
    return-wide p2
.end method

.method private static final saturatingAddInHalves-pTJri5U(JJ)J
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeNanoseconds-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, 0x1

    .line 11
    .line 12
    sub-long/2addr v2, v4

    .line 13
    or-long/2addr v2, v4

    .line 14
    const-wide v4, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    long-to-double p0, p0

    .line 24
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 25
    .line 26
    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    add-double/2addr p0, p2

    .line 31
    double-to-long p0, p0

    .line 32
    return-wide p0

    .line 33
    :cond_0
    invoke-static {p0, p1, v0, v1}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-pTJri5U(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-static {p2, p3, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p2

    .line 41
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/LongSaturatedMathKt;->saturatingAdd-pTJri5U(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    return-wide p0
.end method

.method public static final saturatingDiff(JJ)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    sub-long v2, p2, v0

    .line 4
    .line 5
    or-long/2addr v0, v2

    .line 6
    const-wide v2, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 16
    .line 17
    invoke-static {p2, p3, p0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/LongSaturatedMathKt;->saturatingFiniteDiff(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method private static final saturatingFiniteDiff(JJ)J
    .locals 6

    .line 1
    sub-long v0, p0, p2

    .line 2
    .line 3
    xor-long v2, v0, p0

    .line 4
    .line 5
    xor-long v4, v0, p2

    .line 6
    .line 7
    not-long v4, v4

    .line 8
    and-long/2addr v2, v4

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    const v0, 0xf4240

    .line 16
    .line 17
    .line 18
    int-to-long v0, v0

    .line 19
    div-long v2, p0, v0

    .line 20
    .line 21
    div-long v4, p2, v0

    .line 22
    .line 23
    sub-long/2addr v2, v4

    .line 24
    rem-long/2addr p0, v0

    .line 25
    rem-long/2addr p2, v0

    .line 26
    sub-long/2addr p0, p2

    .line 27
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 28
    .line 29
    sget-object p2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 30
    .line 31
    invoke-static {v2, v3, p2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 32
    .line 33
    .line 34
    move-result-wide p2

    .line 35
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    return-wide p0

    .line 46
    :cond_0
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 47
    .line 48
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 49
    .line 50
    invoke-static {v0, v1, p0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    return-wide p0
.end method

.method public static final saturatingOriginsDiff(JJ)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    sub-long v2, p2, v0

    .line 4
    .line 5
    or-long/2addr v2, v0

    .line 6
    const-wide v4, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    cmp-long p0, p0, p2

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    sget-object p0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 27
    .line 28
    invoke-static {p2, p3, p0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    return-wide p0

    .line 37
    :cond_1
    sub-long v2, p0, v0

    .line 38
    .line 39
    or-long/2addr v0, v2

    .line 40
    cmp-long v0, v0, v4

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    sget-object p2, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    return-wide p0

    .line 51
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/LongSaturatedMathKt;->saturatingFiniteDiff(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    return-wide p0
.end method
