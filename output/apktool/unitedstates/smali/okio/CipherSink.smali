.class public final Lokio/CipherSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nokio/_UtilKt\n*L\n1#1,130:1\n1#2:131\n84#3:132\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:132\n*E\n"
.end annotation


# instance fields
.field private final blockSize:I

.field private final cipher:Ljavax/crypto/Cipher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private final sink:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/crypto/Cipher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cipher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 15
    .line 16
    iput-object p2, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lokio/CipherSink;->blockSize:I

    .line 23
    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const-string p1, "Block cipher required "

    .line 33
    .line 34
    invoke-virtual {p0}, Lokio/CipherSink;->getCipher()Ljavax/crypto/Cipher;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method private final doFinal()Ljava/lang/Throwable;
    .locals 8

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-object v2, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 13
    .line 14
    invoke-interface {v2}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    iget-object v3, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 23
    .line 24
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 25
    .line 26
    iget v5, v0, Lokio/Segment;->limit:I

    .line 27
    .line 28
    invoke-virtual {v3, v4, v5}, Ljavax/crypto/Cipher;->doFinal([BI)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget v4, v0, Lokio/Segment;->limit:I

    .line 33
    .line 34
    add-int/2addr v4, v3

    .line 35
    iput v4, v0, Lokio/Segment;->limit:I

    .line 36
    .line 37
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    int-to-long v6, v3

    .line 42
    add-long/2addr v4, v6

    .line 43
    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->setSize$okio(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :goto_0
    iget v3, v0, Lokio/Segment;->pos:I

    .line 49
    .line 50
    iget v4, v0, Lokio/Segment;->limit:I

    .line 51
    .line 52
    if-ne v3, v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, v2, Lokio/Buffer;->head:Lokio/Segment;

    .line 59
    .line 60
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object v1
.end method

.method private final update(Lokio/Buffer;J)I
    .locals 8

    .line 1
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lokio/Segment;->limit:I

    .line 7
    .line 8
    iget v2, v0, Lokio/Segment;->pos:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    long-to-int p2, p2

    .line 17
    iget-object p3, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 18
    .line 19
    invoke-interface {p3}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    iget-object v1, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    const/16 v2, 0x2000

    .line 30
    .line 31
    if-le v1, v2, :cond_2

    .line 32
    .line 33
    iget v2, p0, Lokio/CipherSink;->blockSize:I

    .line 34
    .line 35
    if-le p2, v2, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    :goto_1
    if-eqz v3, :cond_1

    .line 41
    .line 42
    sub-int/2addr p2, v2

    .line 43
    iget-object v1, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p3, "Unexpected output size "

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, " for input size "

    .line 64
    .line 65
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :cond_2
    invoke-virtual {p3, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 90
    .line 91
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 92
    .line 93
    iget v4, v0, Lokio/Segment;->pos:I

    .line 94
    .line 95
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 96
    .line 97
    iget v7, v1, Lokio/Segment;->limit:I

    .line 98
    .line 99
    move v5, p2

    .line 100
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget v3, v1, Lokio/Segment;->limit:I

    .line 105
    .line 106
    add-int/2addr v3, v2

    .line 107
    iput v3, v1, Lokio/Segment;->limit:I

    .line 108
    .line 109
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    int-to-long v5, v2

    .line 114
    add-long/2addr v3, v5

    .line 115
    invoke-virtual {p3, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 116
    .line 117
    .line 118
    iget v2, v1, Lokio/Segment;->pos:I

    .line 119
    .line 120
    iget v3, v1, Lokio/Segment;->limit:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, p3, Lokio/Buffer;->head:Lokio/Segment;

    .line 129
    .line 130
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object p3, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 134
    .line 135
    invoke-interface {p3}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    int-to-long v3, p2

    .line 143
    sub-long/2addr v1, v3

    .line 144
    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 145
    .line 146
    .line 147
    iget p3, v0, Lokio/Segment;->pos:I

    .line 148
    .line 149
    add-int/2addr p3, p2

    .line 150
    iput p3, v0, Lokio/Segment;->pos:I

    .line 151
    .line 152
    iget v1, v0, Lokio/Segment;->limit:I

    .line 153
    .line 154
    if-ne p3, v1, :cond_4

    .line 155
    .line 156
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    iput-object p3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 161
    .line 162
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    return p2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/CipherSink;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokio/CipherSink;->closed:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lokio/CipherSink;->doFinal()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 14
    .line 15
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    throw v0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->cipher:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/CipherSink;->sink:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p2

    .line 13
    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lokio/CipherSink;->closed:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    cmp-long v0, p2, v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lokio/CipherSink;->update(Lokio/Buffer;J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-long v0, v0

    .line 31
    sub-long/2addr p2, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "closed"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
