.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 -Util.kt\nokio/_UtilKt\n*L\n1#1,236:1\n11328#2:237\n11663#2,3:238\n13601#2,3:243\n37#3,2:241\n1#4:246\n72#5:247\n72#5:248\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:243,3\n43#1:241,2\n151#1:247\n208#1:248\n*E\n"
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
    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p3

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    move/from16 v0, p6

    .line 10
    .line 11
    move/from16 v13, p7

    .line 12
    .line 13
    move-object/from16 v14, p8

    .line 14
    .line 15
    if-ge v0, v13, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    const-string v4, "Failed requirement."

    .line 21
    .line 22
    if-eqz v3, :cond_1b

    .line 23
    .line 24
    if-ge v0, v13, :cond_4

    .line 25
    .line 26
    move v3, v0

    .line 27
    :goto_1
    add-int/lit8 v5, v3, 0x1

    .line 28
    .line 29
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lokio/ByteString;

    .line 34
    .line 35
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-lt v3, v11, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    :goto_2
    if-eqz v3, :cond_3

    .line 45
    .line 46
    if-lt v5, v13, :cond_2

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    move v3, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_4
    :goto_3
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lokio/ByteString;

    .line 62
    .line 63
    add-int/lit8 v4, v13, -0x1

    .line 64
    .line 65
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lokio/ByteString;

    .line 70
    .line 71
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v15, -0x1

    .line 76
    if-ne v11, v5, :cond_5

    .line 77
    .line 78
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lokio/ByteString;

    .line 95
    .line 96
    move v6, v0

    .line 97
    move v0, v3

    .line 98
    move-object v3, v5

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    move v6, v0

    .line 101
    move v0, v15

    .line 102
    :goto_4
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    const/4 v8, 0x2

    .line 111
    if-eq v5, v7, :cond_12

    .line 112
    .line 113
    add-int/lit8 v1, v6, 0x1

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    if-ge v1, v13, :cond_8

    .line 117
    .line 118
    :goto_5
    add-int/lit8 v3, v1, 0x1

    .line 119
    .line 120
    add-int/lit8 v4, v1, -0x1

    .line 121
    .line 122
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Lokio/ByteString;

    .line 127
    .line 128
    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lokio/ByteString;

    .line 137
    .line 138
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eq v4, v1, :cond_6

    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    :cond_6
    if-lt v3, v13, :cond_7

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_7
    move v1, v3

    .line 150
    goto :goto_5

    .line 151
    :cond_8
    :goto_6
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    add-long v3, p1, v3

    .line 156
    .line 157
    int-to-long v7, v8

    .line 158
    add-long/2addr v3, v7

    .line 159
    mul-int/lit8 v1, v2, 0x2

    .line 160
    .line 161
    int-to-long v7, v1

    .line 162
    add-long v16, v3, v7

    .line 163
    .line 164
    invoke-virtual {v10, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 168
    .line 169
    .line 170
    if-ge v6, v13, :cond_c

    .line 171
    .line 172
    move v0, v6

    .line 173
    :goto_7
    add-int/lit8 v1, v0, 0x1

    .line 174
    .line 175
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Lokio/ByteString;

    .line 180
    .line 181
    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v0, v6, :cond_9

    .line 186
    .line 187
    add-int/lit8 v0, v0, -0x1

    .line 188
    .line 189
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lokio/ByteString;

    .line 194
    .line 195
    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eq v2, v0, :cond_a

    .line 200
    .line 201
    :cond_9
    and-int/lit16 v0, v2, 0xff

    .line 202
    .line 203
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 204
    .line 205
    .line 206
    :cond_a
    if-lt v1, v13, :cond_b

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_b
    move v0, v1

    .line 210
    goto :goto_7

    .line 211
    :cond_c
    :goto_8
    new-instance v8, Lokio/Buffer;

    .line 212
    .line 213
    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    .line 214
    .line 215
    .line 216
    :goto_9
    if-ge v6, v13, :cond_11

    .line 217
    .line 218
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Lokio/ByteString;

    .line 223
    .line 224
    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    add-int/lit8 v1, v6, 0x1

    .line 229
    .line 230
    if-ge v1, v13, :cond_f

    .line 231
    .line 232
    move v2, v1

    .line 233
    :goto_a
    add-int/lit8 v3, v2, 0x1

    .line 234
    .line 235
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Lokio/ByteString;

    .line 240
    .line 241
    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eq v0, v4, :cond_d

    .line 246
    .line 247
    move v7, v2

    .line 248
    goto :goto_c

    .line 249
    :cond_d
    if-lt v3, v13, :cond_e

    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_e
    move v2, v3

    .line 253
    goto :goto_a

    .line 254
    :cond_f
    :goto_b
    move v7, v13

    .line 255
    :goto_c
    if-ne v1, v7, :cond_10

    .line 256
    .line 257
    add-int/lit8 v0, v11, 0x1

    .line 258
    .line 259
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lokio/ByteString;

    .line 264
    .line 265
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-ne v0, v1, :cond_10

    .line 270
    .line 271
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Ljava/lang/Number;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 282
    .line 283
    .line 284
    move/from16 v18, v7

    .line 285
    .line 286
    move-object v15, v8

    .line 287
    goto :goto_d

    .line 288
    :cond_10
    invoke-direct {v9, v8}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 289
    .line 290
    .line 291
    move-result-wide v0

    .line 292
    add-long v0, v16, v0

    .line 293
    .line 294
    long-to-int v0, v0

    .line 295
    mul-int/2addr v0, v15

    .line 296
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 297
    .line 298
    .line 299
    add-int/lit8 v4, v11, 0x1

    .line 300
    .line 301
    move-object/from16 v0, p0

    .line 302
    .line 303
    move-wide/from16 v1, v16

    .line 304
    .line 305
    move-object v3, v8

    .line 306
    move-object/from16 v5, p5

    .line 307
    .line 308
    move/from16 v18, v7

    .line 309
    .line 310
    move-object v15, v8

    .line 311
    move-object/from16 v8, p8

    .line 312
    .line 313
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 314
    .line 315
    .line 316
    :goto_d
    move-object v8, v15

    .line 317
    move/from16 v6, v18

    .line 318
    .line 319
    const/4 v15, -0x1

    .line 320
    goto :goto_9

    .line 321
    :cond_11
    move-object v15, v8

    .line 322
    invoke-virtual {v10, v15}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 323
    .line 324
    .line 325
    goto/16 :goto_13

    .line 326
    .line 327
    :cond_12
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-ge v11, v5, :cond_14

    .line 340
    .line 341
    move v7, v11

    .line 342
    const/4 v15, 0x0

    .line 343
    :goto_e
    add-int/lit8 v1, v7, 0x1

    .line 344
    .line 345
    invoke-virtual {v3, v7}, Lokio/ByteString;->getByte(I)B

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    invoke-virtual {v4, v7}, Lokio/ByteString;->getByte(I)B

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    if-ne v2, v7, :cond_15

    .line 354
    .line 355
    add-int/lit8 v15, v15, 0x1

    .line 356
    .line 357
    if-lt v1, v5, :cond_13

    .line 358
    .line 359
    goto :goto_f

    .line 360
    :cond_13
    move v7, v1

    .line 361
    goto :goto_e

    .line 362
    :cond_14
    const/4 v15, 0x0

    .line 363
    :cond_15
    :goto_f
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v1

    .line 367
    add-long v1, p1, v1

    .line 368
    .line 369
    int-to-long v4, v8

    .line 370
    add-long/2addr v1, v4

    .line 371
    int-to-long v4, v15

    .line 372
    add-long/2addr v1, v4

    .line 373
    const-wide/16 v4, 0x1

    .line 374
    .line 375
    add-long/2addr v1, v4

    .line 376
    neg-int v4, v15

    .line 377
    invoke-virtual {v10, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 381
    .line 382
    .line 383
    add-int v4, v11, v15

    .line 384
    .line 385
    if-ge v11, v4, :cond_17

    .line 386
    .line 387
    :goto_10
    add-int/lit8 v0, v11, 0x1

    .line 388
    .line 389
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    and-int/lit16 v5, v5, 0xff

    .line 394
    .line 395
    invoke-virtual {v10, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 396
    .line 397
    .line 398
    if-lt v0, v4, :cond_16

    .line 399
    .line 400
    goto :goto_11

    .line 401
    :cond_16
    move v11, v0

    .line 402
    goto :goto_10

    .line 403
    :cond_17
    :goto_11
    add-int/lit8 v0, v6, 0x1

    .line 404
    .line 405
    if-ne v0, v13, :cond_1a

    .line 406
    .line 407
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Lokio/ByteString;

    .line 412
    .line 413
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-ne v4, v0, :cond_18

    .line 418
    .line 419
    const/4 v1, 0x1

    .line 420
    goto :goto_12

    .line 421
    :cond_18
    const/4 v1, 0x0

    .line 422
    :goto_12
    if-eqz v1, :cond_19

    .line 423
    .line 424
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    check-cast v0, Ljava/lang/Number;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 435
    .line 436
    .line 437
    goto :goto_13

    .line 438
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 439
    .line 440
    const-string v1, "Check failed."

    .line 441
    .line 442
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :cond_1a
    new-instance v11, Lokio/Buffer;

    .line 447
    .line 448
    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-direct {v9, v11}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 452
    .line 453
    .line 454
    move-result-wide v7

    .line 455
    add-long/2addr v7, v1

    .line 456
    long-to-int v0, v7

    .line 457
    const/4 v3, -0x1

    .line 458
    mul-int/2addr v0, v3

    .line 459
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 460
    .line 461
    .line 462
    move-object/from16 v0, p0

    .line 463
    .line 464
    move-object v3, v11

    .line 465
    move-object/from16 v5, p5

    .line 466
    .line 467
    move/from16 v7, p7

    .line 468
    .line 469
    move-object/from16 v8, p8

    .line 470
    .line 471
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v11}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 475
    .line 476
    .line 477
    :goto_13
    return-void

    .line 478
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 479
    .line 480
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    throw v0
.end method

.method public static synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, p1

    .line 10
    :goto_0
    and-int/lit8 v0, p9, 0x4

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move v6, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, p4

    .line 18
    :goto_1
    and-int/lit8 v0, p9, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move v8, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move/from16 v8, p6

    .line 25
    .line 26
    :goto_2
    and-int/lit8 v0, p9, 0x20

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    move v9, v0

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v9, p7

    .line 37
    .line 38
    :goto_3
    move-object v2, p0

    .line 39
    move-object v5, p3

    .line 40
    move-object/from16 v7, p5

    .line 41
    .line 42
    move-object/from16 v10, p8

    .line 43
    .line 44
    invoke-direct/range {v2 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 p1, 0x4

    .line 6
    int-to-long v2, p1

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 16
    .param p1    # [Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "byteStrings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lokio/Options;

    .line 15
    .line 16
    new-array v1, v4, [Lokio/ByteString;

    .line 17
    .line 18
    filled-new-array {v4, v3}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v0, v1, v3, v2}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    array-length v6, v0

    .line 36
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    array-length v6, v0

    .line 40
    move v7, v4

    .line 41
    :goto_0
    if-ge v7, v6, :cond_1

    .line 42
    .line 43
    aget-object v8, v0, v7

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v7, v7, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-array v3, v4, [Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_c

    .line 62
    .line 63
    check-cast v3, [Ljava/lang/Integer;

    .line 64
    .line 65
    array-length v5, v3

    .line 66
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    array-length v3, v0

    .line 75
    move v11, v4

    .line 76
    move v12, v11

    .line 77
    :goto_1
    if-ge v11, v3, :cond_2

    .line 78
    .line 79
    aget-object v6, v0, v11

    .line 80
    .line 81
    add-int/lit8 v14, v12, 0x1

    .line 82
    .line 83
    const/4 v9, 0x6

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v5, v1

    .line 88
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v13, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v11, v11, 0x1

    .line 100
    .line 101
    move v12, v14

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lokio/ByteString;

    .line 108
    .line 109
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    const/4 v5, 0x1

    .line 114
    if-lez v3, :cond_3

    .line 115
    .line 116
    move v3, v5

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move v3, v4

    .line 119
    :goto_2
    if-eqz v3, :cond_b

    .line 120
    .line 121
    move v3, v4

    .line 122
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-ge v3, v6, :cond_9

    .line 127
    .line 128
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Lokio/ByteString;

    .line 133
    .line 134
    add-int/lit8 v7, v3, 0x1

    .line 135
    .line 136
    move v8, v7

    .line 137
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-ge v8, v9, :cond_8

    .line 142
    .line 143
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    check-cast v9, Lokio/ByteString;

    .line 148
    .line 149
    invoke-virtual {v9, v6}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-nez v10, :cond_4

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_4
    invoke-virtual {v9}, Lokio/ByteString;->size()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    invoke-virtual {v6}, Lokio/ByteString;->size()I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eq v10, v11, :cond_5

    .line 165
    .line 166
    move v10, v5

    .line 167
    goto :goto_5

    .line 168
    :cond_5
    move v10, v4

    .line 169
    :goto_5
    if-eqz v10, :cond_7

    .line 170
    .line 171
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    check-cast v9, Ljava/lang/Number;

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    check-cast v10, Ljava/lang/Number;

    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-le v9, v10, :cond_6

    .line 192
    .line 193
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    const-string v0, "duplicate option: "

    .line 204
    .line 205
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v1

    .line 219
    :cond_8
    :goto_6
    move v3, v7

    .line 220
    goto :goto_3

    .line 221
    :cond_9
    new-instance v3, Lokio/Buffer;

    .line 222
    .line 223
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 224
    .line 225
    .line 226
    const/16 v14, 0x35

    .line 227
    .line 228
    const/4 v15, 0x0

    .line 229
    const-wide/16 v6, 0x0

    .line 230
    .line 231
    const/4 v9, 0x0

    .line 232
    const/4 v11, 0x0

    .line 233
    const/4 v12, 0x0

    .line 234
    move-object/from16 v5, p0

    .line 235
    .line 236
    move-object v8, v3

    .line 237
    move-object v10, v1

    .line 238
    invoke-static/range {v5 .. v15}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    move-object/from16 v1, p0

    .line 242
    .line 243
    invoke-direct {v1, v3}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v5

    .line 247
    long-to-int v5, v5

    .line 248
    new-array v5, v5, [I

    .line 249
    .line 250
    :goto_7
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_a

    .line 255
    .line 256
    add-int/lit8 v6, v4, 0x1

    .line 257
    .line 258
    invoke-virtual {v3}, Lokio/Buffer;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    aput v7, v5, v4

    .line 263
    .line 264
    move v4, v6

    .line 265
    goto :goto_7

    .line 266
    :cond_a
    new-instance v3, Lokio/Options;

    .line 267
    .line 268
    array-length v4, v0

    .line 269
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v4, "java.util.Arrays.copyOf(this, size)"

    .line 274
    .line 275
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    check-cast v0, [Lokio/ByteString;

    .line 279
    .line 280
    invoke-direct {v3, v0, v5, v2}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 281
    .line 282
    .line 283
    return-object v3

    .line 284
    :cond_b
    move-object/from16 v1, p0

    .line 285
    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    const-string v2, "the empty byte string is not a supported option"

    .line 289
    .line 290
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_c
    move-object/from16 v1, p0

    .line 295
    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    .line 297
    .line 298
    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    .line 299
    .line 300
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0
.end method
