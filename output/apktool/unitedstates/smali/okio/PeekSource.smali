.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pos:J

.field private final upstream:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "upstream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 18
    .line 19
    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p1, p1, Lokio/Segment;->pos:I

    .line 26
    .line 27
    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    .line 3
    .line 4
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1    # Lokio/Buffer;
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
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    move v5, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v3

    .line 17
    :goto_0
    if-eqz v5, :cond_8

    .line 18
    .line 19
    iget-boolean v5, p0, Lokio/PeekSource;->closed:Z

    .line 20
    .line 21
    if-nez v5, :cond_7

    .line 22
    .line 23
    iget-object v5, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    iget-object v6, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 28
    .line 29
    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 30
    .line 31
    if-ne v5, v6, :cond_2

    .line 32
    .line 33
    iget v5, p0, Lokio/PeekSource;->expectedPos:I

    .line 34
    .line 35
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v6, v6, Lokio/Segment;->pos:I

    .line 39
    .line 40
    if-ne v5, v6, :cond_2

    .line 41
    .line 42
    :cond_1
    move v3, v4

    .line 43
    :cond_2
    if-eqz v3, :cond_6

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    return-wide v0

    .line 48
    :cond_3
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 49
    .line 50
    iget-wide v1, p0, Lokio/PeekSource;->pos:J

    .line 51
    .line 52
    const-wide/16 v3, 0x1

    .line 53
    .line 54
    add-long/2addr v1, v3

    .line 55
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    const-wide/16 p1, -0x1

    .line 62
    .line 63
    return-wide p1

    .line 64
    :cond_4
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 65
    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 69
    .line 70
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget v0, v0, Lokio/Segment;->pos:I

    .line 80
    .line 81
    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 82
    .line 83
    :cond_5
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 84
    .line 85
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    .line 90
    .line 91
    sub-long/2addr v0, v2

    .line 92
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide p2

    .line 96
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 97
    .line 98
    iget-wide v4, p0, Lokio/PeekSource;->pos:J

    .line 99
    .line 100
    move-object v3, p1

    .line 101
    move-wide v6, p2

    .line 102
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 103
    .line 104
    .line 105
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 106
    .line 107
    add-long/2addr v0, p2

    .line 108
    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 109
    .line 110
    return-wide p2

    .line 111
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    const-string p2, "Peek source is invalid because upstream source was used"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string p2, "closed"

    .line 122
    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "byteCount < 0: "

    .line 132
    .line 133
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
