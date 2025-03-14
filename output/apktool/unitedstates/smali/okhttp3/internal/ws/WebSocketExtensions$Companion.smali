.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 21
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "responseHeaders"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    :goto_0
    if-ge v4, v1, :cond_13

    .line 20
    .line 21
    add-int/lit8 v5, v4, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    const-string v13, "Sec-WebSocket-Extensions"

    .line 28
    .line 29
    const/4 v14, 0x1

    .line 30
    invoke-static {v12, v13, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    if-nez v12, :cond_1

    .line 35
    .line 36
    :cond_0
    move v4, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v12, 0x0

    .line 43
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-ge v12, v13, :cond_0

    .line 48
    .line 49
    const/16 v19, 0x4

    .line 50
    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    const/16 v16, 0x2c

    .line 54
    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    move-object v15, v4

    .line 58
    move/from16 v17, v12

    .line 59
    .line 60
    invoke-static/range {v15 .. v20}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    const/16 v15, 0x3b

    .line 65
    .line 66
    invoke-static {v4, v15, v12, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v4, v12, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    add-int/2addr v2, v14

    .line 75
    const-string v3, "permessage-deflate"

    .line 76
    .line 77
    invoke-static {v12, v3, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_12

    .line 82
    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    move v11, v14

    .line 86
    :cond_2
    move v12, v2

    .line 87
    :cond_3
    :goto_2
    if-ge v12, v13, :cond_11

    .line 88
    .line 89
    invoke-static {v4, v15, v12, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/16 v3, 0x3d

    .line 94
    .line 95
    invoke-static {v4, v3, v12, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v4, v12, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-ge v3, v2, :cond_4

    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    invoke-static {v4, v3, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v12, "\""

    .line 112
    .line 113
    invoke-static {v3, v12}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    const/4 v3, 0x0

    .line 119
    :goto_3
    add-int/lit8 v12, v2, 0x1

    .line 120
    .line 121
    const-string v2, "client_max_window_bits"

    .line 122
    .line 123
    invoke-static {v6, v2, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    if-eqz v7, :cond_5

    .line 130
    .line 131
    move v11, v14

    .line 132
    :cond_5
    if-nez v3, :cond_6

    .line 133
    .line 134
    const/4 v7, 0x0

    .line 135
    goto :goto_4

    .line 136
    :cond_6
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    move-object v7, v2

    .line 141
    :goto_4
    if-nez v7, :cond_3

    .line 142
    .line 143
    :cond_7
    :goto_5
    move v11, v14

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    const-string v2, "client_no_context_takeover"

    .line 146
    .line 147
    invoke-static {v6, v2, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_b

    .line 152
    .line 153
    if-eqz v8, :cond_9

    .line 154
    .line 155
    move v11, v14

    .line 156
    :cond_9
    if-eqz v3, :cond_a

    .line 157
    .line 158
    move v11, v14

    .line 159
    :cond_a
    move v8, v14

    .line 160
    goto :goto_2

    .line 161
    :cond_b
    const-string v2, "server_max_window_bits"

    .line 162
    .line 163
    invoke-static {v6, v2, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_e

    .line 168
    .line 169
    if-eqz v9, :cond_c

    .line 170
    .line 171
    move v11, v14

    .line 172
    :cond_c
    if-nez v3, :cond_d

    .line 173
    .line 174
    const/4 v9, 0x0

    .line 175
    goto :goto_6

    .line 176
    :cond_d
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move-object v9, v2

    .line 181
    :goto_6
    if-nez v9, :cond_3

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_e
    const-string v2, "server_no_context_takeover"

    .line 185
    .line 186
    invoke-static {v6, v2, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_7

    .line 191
    .line 192
    if-eqz v10, :cond_f

    .line 193
    .line 194
    move v11, v14

    .line 195
    :cond_f
    if-eqz v3, :cond_10

    .line 196
    .line 197
    move v11, v14

    .line 198
    :cond_10
    move v10, v14

    .line 199
    goto :goto_2

    .line 200
    :cond_11
    move v6, v14

    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_12
    move v12, v2

    .line 204
    move v11, v14

    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_13
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 208
    .line 209
    move-object v5, v0

    .line 210
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 211
    .line 212
    .line 213
    return-object v0
.end method
