.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
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
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p3, v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v1, p3, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static {p2, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return p3

    .line 23
    :cond_0
    move p3, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 30
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "headers"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v5, 0x1

    .line 15
    move v8, v5

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, -0x1

    .line 21
    const/4 v13, -0x1

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, -0x1

    .line 27
    .line 28
    const/16 v18, -0x1

    .line 29
    .line 30
    const/16 v19, 0x0

    .line 31
    .line 32
    const/16 v20, 0x0

    .line 33
    .line 34
    const/16 v21, 0x0

    .line 35
    .line 36
    :goto_0
    if-ge v7, v2, :cond_12

    .line 37
    .line 38
    add-int/lit8 v22, v7, 0x1

    .line 39
    .line 40
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v6, "Cache-Control"

    .line 49
    .line 50
    invoke-static {v3, v6, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    :goto_1
    const/4 v8, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    move-object v9, v7

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const-string v6, "Pragma"

    .line 63
    .line 64
    invoke-static {v3, v6, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_11

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    const/4 v3, 0x0

    .line 72
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-ge v3, v6, :cond_11

    .line 77
    .line 78
    const-string v6, "=,;"

    .line 79
    .line 80
    invoke-direct {v0, v7, v6, v3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 89
    .line 90
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eq v6, v5, :cond_4

    .line 106
    .line 107
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/16 v1, 0x2c

    .line 112
    .line 113
    if-eq v5, v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/16 v5, 0x3b

    .line 120
    .line 121
    if-ne v1, v5, :cond_2

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    invoke-static {v7, v6}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-ge v1, v5, :cond_3

    .line 135
    .line 136
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    const/16 v6, 0x22

    .line 141
    .line 142
    if-ne v5, v6, :cond_3

    .line 143
    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    const/16 v28, 0x4

    .line 147
    .line 148
    const/16 v29, 0x0

    .line 149
    .line 150
    const/16 v25, 0x22

    .line 151
    .line 152
    const/16 v27, 0x0

    .line 153
    .line 154
    move-object/from16 v24, v7

    .line 155
    .line 156
    move/from16 v26, v1

    .line 157
    .line 158
    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v4, 0x1

    .line 170
    add-int/2addr v5, v4

    .line 171
    goto :goto_5

    .line 172
    :cond_3
    const-string v5, ",;"

    .line 173
    .line 174
    invoke-direct {v0, v7, v5, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    goto :goto_5

    .line 194
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 195
    .line 196
    move v5, v6

    .line 197
    const/4 v1, 0x0

    .line 198
    :goto_5
    const-string v4, "no-cache"

    .line 199
    .line 200
    const/4 v6, 0x1

    .line 201
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_5

    .line 206
    .line 207
    move-object/from16 v1, p1

    .line 208
    .line 209
    move v3, v5

    .line 210
    move v5, v6

    .line 211
    move v10, v5

    .line 212
    goto/16 :goto_3

    .line 213
    .line 214
    :cond_5
    const-string v4, "no-store"

    .line 215
    .line 216
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_6

    .line 221
    .line 222
    move-object/from16 v1, p1

    .line 223
    .line 224
    move v3, v5

    .line 225
    move v5, v6

    .line 226
    move v11, v5

    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_6
    const-string v4, "max-age"

    .line 230
    .line 231
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_8

    .line 236
    .line 237
    const/4 v4, -0x1

    .line 238
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    :cond_7
    :goto_6
    move-object/from16 v1, p1

    .line 243
    .line 244
    move v3, v5

    .line 245
    move v5, v6

    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_8
    const-string v4, "s-maxage"

    .line 249
    .line 250
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_9

    .line 255
    .line 256
    const/4 v4, -0x1

    .line 257
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    goto :goto_6

    .line 262
    :cond_9
    const-string v4, "private"

    .line 263
    .line 264
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_a

    .line 269
    .line 270
    move-object/from16 v1, p1

    .line 271
    .line 272
    move v3, v5

    .line 273
    move v5, v6

    .line 274
    move v14, v5

    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_a
    const-string v4, "public"

    .line 278
    .line 279
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_b

    .line 284
    .line 285
    move-object/from16 v1, p1

    .line 286
    .line 287
    move v3, v5

    .line 288
    move v5, v6

    .line 289
    move v15, v5

    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_b
    const-string v4, "must-revalidate"

    .line 293
    .line 294
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_c

    .line 299
    .line 300
    move-object/from16 v1, p1

    .line 301
    .line 302
    move v3, v5

    .line 303
    move v5, v6

    .line 304
    move/from16 v16, v5

    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :cond_c
    const-string v4, "max-stale"

    .line 309
    .line 310
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_d

    .line 315
    .line 316
    const v3, 0x7fffffff

    .line 317
    .line 318
    .line 319
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 320
    .line 321
    .line 322
    move-result v17

    .line 323
    goto :goto_6

    .line 324
    :cond_d
    const-string v4, "min-fresh"

    .line 325
    .line 326
    invoke-static {v4, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_e

    .line 331
    .line 332
    const/4 v4, -0x1

    .line 333
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v18

    .line 337
    goto :goto_6

    .line 338
    :cond_e
    const/4 v4, -0x1

    .line 339
    const-string v1, "only-if-cached"

    .line 340
    .line 341
    invoke-static {v1, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_f

    .line 346
    .line 347
    move-object/from16 v1, p1

    .line 348
    .line 349
    move v3, v5

    .line 350
    move v5, v6

    .line 351
    move/from16 v19, v5

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :cond_f
    const-string v1, "no-transform"

    .line 356
    .line 357
    invoke-static {v1, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_10

    .line 362
    .line 363
    move-object/from16 v1, p1

    .line 364
    .line 365
    move v3, v5

    .line 366
    move v5, v6

    .line 367
    move/from16 v20, v5

    .line 368
    .line 369
    goto/16 :goto_3

    .line 370
    .line 371
    :cond_10
    const-string v1, "immutable"

    .line 372
    .line 373
    invoke-static {v1, v3, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_7

    .line 378
    .line 379
    move-object/from16 v1, p1

    .line 380
    .line 381
    move v3, v5

    .line 382
    move v5, v6

    .line 383
    move/from16 v21, v5

    .line 384
    .line 385
    goto/16 :goto_3

    .line 386
    .line 387
    :cond_11
    const/4 v4, -0x1

    .line 388
    move-object/from16 v1, p1

    .line 389
    .line 390
    move/from16 v7, v22

    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_12
    if-nez v8, :cond_13

    .line 395
    .line 396
    const/16 v22, 0x0

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_13
    move-object/from16 v22, v9

    .line 400
    .line 401
    :goto_7
    new-instance v1, Lokhttp3/CacheControl;

    .line 402
    .line 403
    const/16 v23, 0x0

    .line 404
    .line 405
    move-object v9, v1

    .line 406
    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 407
    .line 408
    .line 409
    return-object v1
.end method
