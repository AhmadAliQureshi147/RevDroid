.class public final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1    # Ljava/nio/channels/FileChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fileChannel"

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
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final read(JLokio/Buffer;J)V
    .locals 9
    .param p3    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p4, v0

    .line 9
    .line 10
    if-ltz v2, :cond_1

    .line 11
    .line 12
    :goto_0
    cmp-long v2, p4, v0

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    move-wide v4, p1

    .line 19
    move-wide v6, p4

    .line 20
    move-object v8, p3

    .line 21
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    add-long/2addr p1, v2

    .line 26
    sub-long/2addr p4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final write(JLokio/Buffer;J)V
    .locals 9
    .param p3    # Lokio/Buffer;
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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p4, v0

    .line 9
    .line 10
    if-ltz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    cmp-long v2, p4, v2

    .line 17
    .line 18
    if-gtz v2, :cond_1

    .line 19
    .line 20
    :goto_0
    cmp-long v2, p4, v0

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 25
    .line 26
    move-object v4, p3

    .line 27
    move-wide v5, p1

    .line 28
    move-wide v7, p4

    .line 29
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    add-long/2addr p1, v2

    .line 34
    sub-long/2addr p4, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
