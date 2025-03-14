.class public final Lokio/_Base64Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE64:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BASE64_URL_SAFE:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lokio/ByteString;->getData$okio()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lokio/_Base64Kt;->BASE64:[B

    .line 14
    .line 15
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lokio/_Base64Kt;->BASE64_URL_SAFE:[B

    .line 26
    .line 27
    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .locals 15
    .param p0    # Ljava/lang/String;
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
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    const/16 v1, 0x9

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 v5, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x3d

    .line 27
    .line 28
    if-eq v5, v6, :cond_0

    .line 29
    .line 30
    if-eq v5, v4, :cond_0

    .line 31
    .line 32
    if-eq v5, v3, :cond_0

    .line 33
    .line 34
    if-eq v5, v2, :cond_0

    .line 35
    .line 36
    if-eq v5, v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    int-to-long v5, v0

    .line 43
    const-wide/16 v7, 0x6

    .line 44
    .line 45
    mul-long/2addr v5, v7

    .line 46
    const-wide/16 v7, 0x8

    .line 47
    .line 48
    div-long/2addr v5, v7

    .line 49
    long-to-int v5, v5

    .line 50
    new-array v6, v5, [B

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    move v9, v8

    .line 55
    if-lez v0, :cond_d

    .line 56
    .line 57
    move v10, v9

    .line 58
    move v11, v10

    .line 59
    :goto_2
    add-int/lit8 v12, v8, 0x1

    .line 60
    .line 61
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/16 v13, 0x41

    .line 66
    .line 67
    if-gt v13, v8, :cond_2

    .line 68
    .line 69
    const/16 v13, 0x5a

    .line 70
    .line 71
    if-gt v8, v13, :cond_2

    .line 72
    .line 73
    add-int/lit8 v8, v8, -0x41

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_2
    const/16 v13, 0x61

    .line 77
    .line 78
    if-gt v13, v8, :cond_3

    .line 79
    .line 80
    const/16 v13, 0x7a

    .line 81
    .line 82
    if-gt v8, v13, :cond_3

    .line 83
    .line 84
    add-int/lit8 v8, v8, -0x47

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_3
    const/16 v13, 0x30

    .line 88
    .line 89
    if-gt v13, v8, :cond_4

    .line 90
    .line 91
    const/16 v13, 0x39

    .line 92
    .line 93
    if-gt v8, v13, :cond_4

    .line 94
    .line 95
    add-int/lit8 v8, v8, 0x4

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_4
    const/16 v13, 0x2b

    .line 99
    .line 100
    if-eq v8, v13, :cond_9

    .line 101
    .line 102
    const/16 v13, 0x2d

    .line 103
    .line 104
    if-ne v8, v13, :cond_5

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    const/16 v13, 0x2f

    .line 108
    .line 109
    if-eq v8, v13, :cond_8

    .line 110
    .line 111
    const/16 v13, 0x5f

    .line 112
    .line 113
    if-ne v8, v13, :cond_6

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    if-eq v8, v4, :cond_b

    .line 117
    .line 118
    if-eq v8, v3, :cond_b

    .line 119
    .line 120
    if-eq v8, v2, :cond_b

    .line 121
    .line 122
    if-ne v8, v1, :cond_7

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_7
    return-object v7

    .line 126
    :cond_8
    :goto_3
    const/16 v8, 0x3f

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_9
    :goto_4
    const/16 v8, 0x3e

    .line 130
    .line 131
    :goto_5
    shl-int/lit8 v11, v11, 0x6

    .line 132
    .line 133
    or-int/2addr v8, v11

    .line 134
    add-int/lit8 v10, v10, 0x1

    .line 135
    .line 136
    rem-int/lit8 v11, v10, 0x4

    .line 137
    .line 138
    if-nez v11, :cond_a

    .line 139
    .line 140
    add-int/lit8 v11, v9, 0x1

    .line 141
    .line 142
    shr-int/lit8 v13, v8, 0x10

    .line 143
    .line 144
    int-to-byte v13, v13

    .line 145
    aput-byte v13, v6, v9

    .line 146
    .line 147
    add-int/lit8 v13, v9, 0x2

    .line 148
    .line 149
    shr-int/lit8 v14, v8, 0x8

    .line 150
    .line 151
    int-to-byte v14, v14

    .line 152
    aput-byte v14, v6, v11

    .line 153
    .line 154
    add-int/lit8 v9, v9, 0x3

    .line 155
    .line 156
    int-to-byte v11, v8

    .line 157
    aput-byte v11, v6, v13

    .line 158
    .line 159
    :cond_a
    move v11, v8

    .line 160
    :cond_b
    :goto_6
    if-lt v12, v0, :cond_c

    .line 161
    .line 162
    move v8, v10

    .line 163
    goto :goto_7

    .line 164
    :cond_c
    move v8, v12

    .line 165
    goto :goto_2

    .line 166
    :cond_d
    move v11, v9

    .line 167
    :goto_7
    rem-int/lit8 v8, v8, 0x4

    .line 168
    .line 169
    const/4 p0, 0x1

    .line 170
    if-eq v8, p0, :cond_11

    .line 171
    .line 172
    const/4 p0, 0x2

    .line 173
    if-eq v8, p0, :cond_f

    .line 174
    .line 175
    const/4 p0, 0x3

    .line 176
    if-eq v8, p0, :cond_e

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_e
    shl-int/lit8 p0, v11, 0x6

    .line 180
    .line 181
    add-int/lit8 v0, v9, 0x1

    .line 182
    .line 183
    shr-int/lit8 v1, p0, 0x10

    .line 184
    .line 185
    int-to-byte v1, v1

    .line 186
    aput-byte v1, v6, v9

    .line 187
    .line 188
    add-int/lit8 v9, v9, 0x2

    .line 189
    .line 190
    shr-int/lit8 p0, p0, 0x8

    .line 191
    .line 192
    int-to-byte p0, p0

    .line 193
    aput-byte p0, v6, v0

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_f
    shl-int/lit8 p0, v11, 0xc

    .line 197
    .line 198
    add-int/lit8 v0, v9, 0x1

    .line 199
    .line 200
    shr-int/lit8 p0, p0, 0x10

    .line 201
    .line 202
    int-to-byte p0, p0

    .line 203
    aput-byte p0, v6, v9

    .line 204
    .line 205
    move v9, v0

    .line 206
    :goto_8
    if-ne v9, v5, :cond_10

    .line 207
    .line 208
    return-object v6

    .line 209
    :cond_10
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    .line 214
    .line 215
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_11
    return-object v7
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
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
    const-string v0, "map"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x2

    .line 13
    add-int/2addr v0, v1

    .line 14
    div-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x4

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    array-length v2, p0

    .line 21
    array-length v3, p0

    .line 22
    rem-int/lit8 v3, v3, 0x3

    .line 23
    .line 24
    sub-int/2addr v2, v3

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v3, v2, :cond_0

    .line 28
    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    aget-byte v6, p0, v3

    .line 32
    .line 33
    add-int/lit8 v7, v3, 0x2

    .line 34
    .line 35
    aget-byte v5, p0, v5

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x3

    .line 38
    .line 39
    aget-byte v7, p0, v7

    .line 40
    .line 41
    add-int/lit8 v8, v4, 0x1

    .line 42
    .line 43
    and-int/lit16 v9, v6, 0xff

    .line 44
    .line 45
    shr-int/2addr v9, v1

    .line 46
    aget-byte v9, p1, v9

    .line 47
    .line 48
    aput-byte v9, v0, v4

    .line 49
    .line 50
    add-int/lit8 v9, v4, 0x2

    .line 51
    .line 52
    and-int/lit8 v6, v6, 0x3

    .line 53
    .line 54
    shl-int/lit8 v6, v6, 0x4

    .line 55
    .line 56
    and-int/lit16 v10, v5, 0xff

    .line 57
    .line 58
    shr-int/lit8 v10, v10, 0x4

    .line 59
    .line 60
    or-int/2addr v6, v10

    .line 61
    aget-byte v6, p1, v6

    .line 62
    .line 63
    aput-byte v6, v0, v8

    .line 64
    .line 65
    add-int/lit8 v6, v4, 0x3

    .line 66
    .line 67
    and-int/lit8 v5, v5, 0xf

    .line 68
    .line 69
    shl-int/2addr v5, v1

    .line 70
    and-int/lit16 v8, v7, 0xff

    .line 71
    .line 72
    shr-int/lit8 v8, v8, 0x6

    .line 73
    .line 74
    or-int/2addr v5, v8

    .line 75
    aget-byte v5, p1, v5

    .line 76
    .line 77
    aput-byte v5, v0, v9

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x4

    .line 80
    .line 81
    and-int/lit8 v5, v7, 0x3f

    .line 82
    .line 83
    aget-byte v5, p1, v5

    .line 84
    .line 85
    aput-byte v5, v0, v6

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    array-length v5, p0

    .line 89
    sub-int/2addr v5, v2

    .line 90
    const/16 v2, 0x3d

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    if-eq v5, v6, :cond_2

    .line 94
    .line 95
    if-eq v5, v1, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 99
    .line 100
    aget-byte v3, p0, v3

    .line 101
    .line 102
    aget-byte p0, p0, v5

    .line 103
    .line 104
    add-int/lit8 v5, v4, 0x1

    .line 105
    .line 106
    and-int/lit16 v6, v3, 0xff

    .line 107
    .line 108
    shr-int/2addr v6, v1

    .line 109
    aget-byte v6, p1, v6

    .line 110
    .line 111
    aput-byte v6, v0, v4

    .line 112
    .line 113
    add-int/lit8 v6, v4, 0x2

    .line 114
    .line 115
    and-int/lit8 v3, v3, 0x3

    .line 116
    .line 117
    shl-int/lit8 v3, v3, 0x4

    .line 118
    .line 119
    and-int/lit16 v7, p0, 0xff

    .line 120
    .line 121
    shr-int/lit8 v7, v7, 0x4

    .line 122
    .line 123
    or-int/2addr v3, v7

    .line 124
    aget-byte v3, p1, v3

    .line 125
    .line 126
    aput-byte v3, v0, v5

    .line 127
    .line 128
    add-int/lit8 v4, v4, 0x3

    .line 129
    .line 130
    and-int/lit8 p0, p0, 0xf

    .line 131
    .line 132
    shl-int/2addr p0, v1

    .line 133
    aget-byte p0, p1, p0

    .line 134
    .line 135
    aput-byte p0, v0, v6

    .line 136
    .line 137
    int-to-byte p0, v2

    .line 138
    aput-byte p0, v0, v4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    aget-byte p0, p0, v3

    .line 142
    .line 143
    add-int/lit8 v3, v4, 0x1

    .line 144
    .line 145
    and-int/lit16 v5, p0, 0xff

    .line 146
    .line 147
    shr-int/lit8 v1, v5, 0x2

    .line 148
    .line 149
    aget-byte v1, p1, v1

    .line 150
    .line 151
    aput-byte v1, v0, v4

    .line 152
    .line 153
    add-int/lit8 v1, v4, 0x2

    .line 154
    .line 155
    and-int/lit8 p0, p0, 0x3

    .line 156
    .line 157
    shl-int/lit8 p0, p0, 0x4

    .line 158
    .line 159
    aget-byte p0, p1, p0

    .line 160
    .line 161
    aput-byte p0, v0, v3

    .line 162
    .line 163
    add-int/lit8 v4, v4, 0x3

    .line 164
    .line 165
    int-to-byte p0, v2

    .line 166
    aput-byte p0, v0, v1

    .line 167
    .line 168
    aput-byte p0, v0, v4

    .line 169
    .line 170
    :goto_1
    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lokio/_Base64Kt;->BASE64:[B

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final getBASE64()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/_Base64Kt;->BASE64:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getBASE64$annotations()V
    .locals 0

    return-void
.end method

.method public static final getBASE64_URL_SAFE()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/_Base64Kt;->BASE64_URL_SAFE:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getBASE64_URL_SAFE$annotations()V
    .locals 0

    return-void
.end method
