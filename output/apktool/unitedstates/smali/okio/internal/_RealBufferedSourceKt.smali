.class public final Lokio/internal/_RealBufferedSourceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-RealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -RealBufferedSource.kt\nokio/internal/_RealBufferedSourceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 -Util.kt\nokio/_UtilKt\n*L\n1#1,399:1\n1#2:400\n61#3:401\n61#3:402\n61#3:403\n61#3:404\n61#3:405\n61#3:406\n61#3:407\n61#3:408\n61#3:409\n61#3:410\n61#3:411\n61#3:412\n61#3:413\n61#3:414\n61#3:415\n61#3:416\n61#3:417\n61#3:418\n61#3:419\n61#3:420\n61#3:421\n61#3:422\n61#3:423\n61#3:425\n61#3:426\n61#3:427\n61#3:428\n61#3:429\n61#3:430\n61#3:431\n61#3:432\n61#3:433\n61#3:434\n61#3:435\n61#3:436\n61#3:437\n61#3:438\n61#3:439\n61#3:440\n61#3:441\n61#3:442\n61#3:443\n61#3:444\n61#3:446\n61#3:447\n61#3:448\n61#3:449\n61#3:450\n61#3:451\n61#3:452\n61#3:453\n61#3:454\n61#3:455\n61#3:456\n61#3:457\n61#3:458\n61#3:459\n61#3:460\n61#3:461\n61#3:462\n61#3:463\n61#3:464\n61#3:465\n61#3:466\n61#3:467\n61#3:468\n61#3:469\n61#3:470\n61#3:471\n61#3:472\n87#4:424\n87#4:445\n*S KotlinDebug\n*F\n+ 1 -RealBufferedSource.kt\nokio/internal/_RealBufferedSourceKt\n*L\n38#1:401\n39#1:402\n43#1:403\n44#1:404\n49#1:405\n59#1:406\n60#1:407\n67#1:408\n71#1:409\n72#1:410\n77#1:411\n84#1:412\n91#1:413\n96#1:414\n104#1:415\n105#1:416\n110#1:417\n119#1:418\n120#1:419\n127#1:420\n133#1:421\n134#1:422\n138#1:423\n139#1:425\n147#1:426\n151#1:427\n156#1:428\n157#1:429\n160#1:430\n163#1:431\n164#1:432\n165#1:433\n171#1:434\n172#1:435\n177#1:436\n184#1:437\n185#1:438\n190#1:439\n198#1:440\n200#1:441\n201#1:442\n203#1:443\n206#1:444\n208#1:446\n216#1:447\n223#1:448\n228#1:449\n233#1:450\n238#1:451\n243#1:452\n248#1:453\n253#1:454\n261#1:455\n272#1:456\n280#1:457\n294#1:458\n301#1:459\n304#1:460\n305#1:461\n316#1:462\n321#1:463\n322#1:464\n335#1:465\n338#1:466\n339#1:467\n351#1:468\n354#1:469\n355#1:470\n380#1:471\n393#1:472\n138#1:424\n206#1:445\n*E\n"
.end annotation


# direct methods
.method public static final commonClose(Lokio/RealBufferedSource;)V
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 13
    .line 14
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 15
    .line 16
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 20
    .line 21
    invoke-virtual {p0}, Lokio/Buffer;->clear()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final commonExhausted(Lokio/RealBufferedSource;)Z
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 11
    .line 12
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 19
    .line 20
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 21
    .line 22
    const-wide/16 v1, 0x2000

    .line 23
    .line 24
    invoke-interface {v0, p0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    cmp-long p0, v0, v2

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "closed"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;BJJ)J
    .locals 10
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v8, -0x1

    if-gez v0, :cond_3

    .line 2
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-eqz v2, :cond_1

    return-wide v0

    .line 4
    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, v0, p4

    if-gez v2, :cond_3

    .line 6
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 7
    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    .line 8
    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v8

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fromIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " toIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 13
    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 15
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 16
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 17
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 18
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    .line 19
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 20
    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOfElement(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetBytes"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    return-wide v0

    .line 28
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 29
    .line 30
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 35
    .line 36
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 37
    .line 38
    const-wide/16 v6, 0x2000

    .line 39
    .line 40
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    cmp-long v4, v4, v2

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    return-wide v2

    .line 49
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "closed"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static final commonPeek(Lokio/RealBufferedSource;)Lokio/BufferedSource;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokio/PeekSource;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final commonRangeEquals(Lokio/RealBufferedSource;JLokio/ByteString;II)Z
    .locals 7
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytes"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 12
    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long v0, p1, v0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-ltz v0, :cond_5

    .line 21
    .line 22
    if-ltz p4, :cond_5

    .line 23
    .line 24
    if-ltz p5, :cond_5

    .line 25
    .line 26
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sub-int/2addr v0, p4

    .line 31
    if-ge v0, p5, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    if-lez p5, :cond_4

    .line 35
    .line 36
    move v0, v1

    .line 37
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 38
    .line 39
    int-to-long v3, v0

    .line 40
    add-long/2addr v3, p1

    .line 41
    const-wide/16 v5, 0x1

    .line 42
    .line 43
    add-long/2addr v5, v3

    .line 44
    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 52
    .line 53
    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v0, p4

    .line 58
    invoke-virtual {p3, v0}, Lokio/ByteString;->getByte(I)B

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eq v3, v0, :cond_2

    .line 63
    .line 64
    return v1

    .line 65
    :cond_2
    if-lt v2, p5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v0, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_5
    :goto_2
    return v1

    .line 73
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string p1, "closed"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public static final commonRead(Lokio/RealBufferedSource;[BII)I
    .locals 9
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 14
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 15
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 16
    iget-object p3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 17
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x2000

    .line 18
    invoke-interface {p3, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 19
    :cond_0
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 20
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 21
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 22
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public static final commonRead(Lokio/RealBufferedSource;Lokio/Buffer;J)J
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1
    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_2

    .line 2
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    .line 7
    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 8
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "byteCount < 0: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadAll(Lokio/RealBufferedSource;Lokio/Sink;)J
    .locals 8
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sink"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    move-wide v2, v0

    .line 14
    :cond_0
    :goto_0
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 15
    .line 16
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 17
    .line 18
    const-wide/16 v6, 0x2000

    .line 19
    .line 20
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    const-wide/16 v6, -0x1

    .line 25
    .line 26
    cmp-long v4, v4, v6

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 31
    .line 32
    invoke-virtual {v4}, Lokio/Buffer;->completeSegmentByteCount()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    cmp-long v6, v4, v0

    .line 37
    .line 38
    if-lez v6, :cond_0

    .line 39
    .line 40
    add-long/2addr v2, v4

    .line 41
    iget-object v6, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 42
    .line 43
    invoke-interface {p1, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 48
    .line 49
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    cmp-long v0, v4, v0

    .line 54
    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 58
    .line 59
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    add-long/2addr v2, v0

    .line 64
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 65
    .line 66
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-wide v2
.end method

.method public static final commonReadByte(Lokio/RealBufferedSource;)B
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;)[B
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;J)[B
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;)Lokio/ByteString;
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;J)Lokio/ByteString;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadDecimalLong(Lokio/RealBufferedSource;)J
    .locals 10
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    move-wide v4, v2

    .line 14
    :goto_0
    add-long v6, v4, v0

    .line 15
    .line 16
    invoke-virtual {p0, v6, v7}, Lokio/RealBufferedSource;->request(J)Z

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    if-eqz v8, :cond_4

    .line 21
    .line 22
    iget-object v8, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 23
    .line 24
    invoke-virtual {v8, v4, v5}, Lokio/Buffer;->getByte(J)B

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    const/16 v9, 0x30

    .line 29
    .line 30
    int-to-byte v9, v9

    .line 31
    if-lt v8, v9, :cond_0

    .line 32
    .line 33
    const/16 v9, 0x39

    .line 34
    .line 35
    int-to-byte v9, v9

    .line 36
    if-le v8, v9, :cond_1

    .line 37
    .line 38
    :cond_0
    cmp-long v4, v4, v2

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    const/16 v5, 0x2d

    .line 43
    .line 44
    int-to-byte v5, v5

    .line 45
    if-eq v8, v5, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-wide v4, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 54
    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v8, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "Expected a digit or \'-\' but was 0x"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_4
    :goto_2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 85
    .line 86
    invoke-virtual {p0}, Lokio/Buffer;->readDecimalLong()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    return-wide v0
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;Lokio/Buffer;J)V
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    return-void

    :catch_0
    move-exception p2

    .line 13
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 14
    invoke-virtual {p1, p0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 15
    throw p2
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;[B)V
    .locals 6
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 6
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_1
    throw v0
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/RealBufferedSource;)J
    .locals 5
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 13
    .line 14
    int-to-long v2, v1

    .line 15
    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 22
    .line 23
    int-to-long v3, v0

    .line 24
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x30

    .line 29
    .line 30
    int-to-byte v3, v3

    .line 31
    if-lt v2, v3, :cond_0

    .line 32
    .line 33
    const/16 v3, 0x39

    .line 34
    .line 35
    int-to-byte v3, v3

    .line 36
    if-le v2, v3, :cond_2

    .line 37
    .line 38
    :cond_0
    const/16 v3, 0x61

    .line 39
    .line 40
    int-to-byte v3, v3

    .line 41
    if-lt v2, v3, :cond_1

    .line 42
    .line 43
    const/16 v3, 0x66

    .line 44
    .line 45
    int-to-byte v3, v3

    .line 46
    if-le v2, v3, :cond_2

    .line 47
    .line 48
    :cond_1
    const/16 v3, 0x41

    .line 49
    .line 50
    int-to-byte v3, v3

    .line 51
    if-lt v2, v3, :cond_3

    .line 52
    .line 53
    const/16 v3, 0x46

    .line 54
    .line 55
    int-to-byte v3, v3

    .line 56
    if-le v2, v3, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 65
    .line 66
    const/16 v0, 0x10

    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 86
    .line 87
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_5
    :goto_2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 96
    .line 97
    invoke-virtual {p0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    return-wide v0
.end method

.method public static final commonReadInt(Lokio/RealBufferedSource;)I
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadIntLe(Lokio/RealBufferedSource;)I
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readIntLe()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadLong(Lokio/RealBufferedSource;)J
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static final commonReadLongLe(Lokio/RealBufferedSource;)J
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readLongLe()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static final commonReadShort(Lokio/RealBufferedSource;)S
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadShortLe(Lokio/RealBufferedSource;)S
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/Buffer;->readShortLe()S

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 5
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 7
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 3
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadUtf8CodePoint(Lokio/RealBufferedSource;)I
    .locals 3
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    and-int/lit16 v1, v0, 0xe0

    .line 20
    .line 21
    const/16 v2, 0xc0

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    const-wide/16 v0, 0x2

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    and-int/lit16 v1, v0, 0xf0

    .line 32
    .line 33
    const/16 v2, 0xe0

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    const-wide/16 v0, 0x3

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    and-int/lit16 v0, v0, 0xf8

    .line 44
    .line 45
    const/16 v1, 0xf0

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    const-wide/16 v0, 0x4

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 55
    .line 56
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8CodePoint()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public static final commonReadUtf8Line(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->indexOf(B)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 45
    .line 46
    invoke-static {p0, v0, v1}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    return-object p0
.end method

.method public static final commonReadUtf8LineStrict(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 13
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v2, p1, v0

    .line 23
    .line 24
    const-wide/16 v3, 0x1

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    move-wide v5, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    add-long v5, p1, v3

    .line 31
    .line 32
    :goto_1
    const/16 v2, 0xa

    .line 33
    .line 34
    int-to-byte v2, v2

    .line 35
    const-wide/16 v9, 0x0

    .line 36
    .line 37
    move-object v7, p0

    .line 38
    move v8, v2

    .line 39
    move-wide v11, v5

    .line 40
    invoke-virtual/range {v7 .. v12}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    const-wide/16 v9, -0x1

    .line 45
    .line 46
    cmp-long v9, v7, v9

    .line 47
    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 51
    .line 52
    invoke-static {p0, v7, v8}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_2
    cmp-long v0, v5, v0

    .line 58
    .line 59
    if-gez v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 68
    .line 69
    sub-long v7, v5, v3

    .line 70
    .line 71
    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->getByte(J)B

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    int-to-byte v1, v1

    .line 78
    if-ne v0, v1, :cond_3

    .line 79
    .line 80
    add-long/2addr v3, v5

    .line 81
    invoke-virtual {p0, v3, v4}, Lokio/RealBufferedSource;->request(J)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 88
    .line 89
    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-ne v0, v2, :cond_3

    .line 94
    .line 95
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 96
    .line 97
    invoke-static {p0, v5, v6}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_3
    new-instance v6, Lokio/Buffer;

    .line 103
    .line 104
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 108
    .line 109
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    const/16 v3, 0x20

    .line 114
    .line 115
    int-to-long v3, v3

    .line 116
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    const-wide/16 v2, 0x0

    .line 121
    .line 122
    move-object v1, v6

    .line 123
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 124
    .line 125
    .line 126
    new-instance v0, Ljava/io/EOFException;

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "\\n not found: limit="

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 139
    .line 140
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide p0

    .line 148
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p0, " content="

    .line 152
    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const/16 p0, 0x2026

    .line 168
    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string p1, "limit < 0: "

    .line 185
    .line 186
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1
.end method

.method public static final commonRequest(Lokio/RealBufferedSource;J)Z
    .locals 7
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 24
    .line 25
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    cmp-long v0, v3, p1

    .line 30
    .line 31
    if-gez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 34
    .line 35
    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 36
    .line 37
    const-wide/16 v4, 0x2000

    .line 38
    .line 39
    invoke-interface {v0, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    const-wide/16 v5, -0x1

    .line 44
    .line 45
    cmp-long v0, v3, v5

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    return v2

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "closed"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "byteCount < 0: "

    .line 64
    .line 65
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public static final commonRequire(Lokio/RealBufferedSource;J)V
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static final commonSelect(Lokio/RealBufferedSource;Lokio/Options;)I
    .locals 5
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, p1, v1}, Lokio/internal/_BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x2

    .line 23
    const/4 v2, -0x1

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aget-object p1, p1, v0

    .line 33
    .line 34
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 39
    .line 40
    int-to-long v1, p1

    .line 41
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    return v2

    .line 46
    :cond_2
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 47
    .line 48
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 49
    .line 50
    const-wide/16 v3, 0x2000

    .line 51
    .line 52
    invoke-interface {v0, v1, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    const-wide/16 v3, -0x1

    .line 57
    .line 58
    cmp-long v0, v0, v3

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    return v2

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p1, "closed"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static final commonSkip(Lokio/RealBufferedSource;J)V
    .locals 4
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    :goto_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    if-lez v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 17
    .line 18
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long v0, v2, v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 27
    .line 28
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 29
    .line 30
    const-wide/16 v2, 0x2000

    .line 31
    .line 32
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide/16 v2, -0x1

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    :goto_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 50
    .line 51
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 60
    .line 61
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 62
    .line 63
    .line 64
    sub-long/2addr p1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p1, "closed"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static final commonTimeout(Lokio/RealBufferedSource;)Lokio/Timeout;
    .locals 1
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 7
    .line 8
    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final commonToString(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokio/RealBufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "buffer("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 p0, 0x29

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
