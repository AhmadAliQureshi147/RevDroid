.class public final Lokio/internal/_ByteStringKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-ByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n+ 2 -Util.kt\nokio/_UtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,360:1\n129#1,2:366\n131#1,9:369\n66#2:361\n72#2:362\n72#2:364\n72#2:365\n66#2:393\n72#2:405\n1#3:363\n1#3:368\n212#4,7:378\n122#4:385\n219#4,5:386\n122#4:391\n226#4:392\n228#4:394\n396#4,2:395\n122#4:397\n399#4,6:398\n127#4:404\n405#4:406\n122#4:407\n406#4,13:408\n122#4:421\n421#4:422\n122#4:423\n424#4:424\n230#4,3:425\n439#4,3:428\n122#4:431\n442#4:432\n127#4:433\n445#4,10:434\n127#4:444\n455#4:445\n122#4:446\n456#4,4:447\n127#4:451\n460#4:452\n122#4:453\n461#4,14:454\n122#4:468\n476#4,2:469\n122#4:471\n480#4:472\n122#4:473\n483#4:474\n234#4,3:475\n499#4,3:478\n122#4:481\n502#4:482\n127#4:483\n505#4,2:484\n127#4:486\n509#4,10:487\n127#4:497\n519#4:498\n122#4:499\n520#4,4:500\n127#4:504\n524#4:505\n122#4:506\n525#4,4:507\n127#4:511\n529#4:512\n122#4:513\n530#4,15:514\n122#4:529\n546#4,2:530\n122#4:532\n549#4,2:533\n122#4:535\n553#4:536\n122#4:537\n556#4:538\n241#4:539\n122#4:540\n242#4,5:541\n*S KotlinDebug\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n*L\n326#1:366,2\n326#1:369,9\n65#1:361\n66#1:362\n256#1:364\n257#1:365\n345#1:393\n345#1:405\n326#1:368\n345#1:378,7\n350#1:385\n345#1:386,5\n350#1:391\n345#1:392\n345#1:394\n345#1:395,2\n350#1:397\n345#1:398,6\n345#1:404\n345#1:406\n350#1:407\n345#1:408,13\n350#1:421\n345#1:422\n350#1:423\n345#1:424\n345#1:425,3\n345#1:428,3\n350#1:431\n345#1:432\n345#1:433\n345#1:434,10\n345#1:444\n345#1:445\n350#1:446\n345#1:447,4\n345#1:451\n345#1:452\n350#1:453\n345#1:454,14\n350#1:468\n345#1:469,2\n350#1:471\n345#1:472\n350#1:473\n345#1:474\n345#1:475,3\n345#1:478,3\n350#1:481\n345#1:482\n345#1:483\n345#1:484,2\n345#1:486\n345#1:487,10\n345#1:497\n345#1:498\n350#1:499\n345#1:500,4\n345#1:504\n345#1:505\n350#1:506\n345#1:507,4\n345#1:511\n345#1:512\n350#1:513\n345#1:514,15\n350#1:529\n345#1:530,2\n350#1:532\n345#1:533,2\n350#1:535\n345#1:536\n350#1:537\n345#1:538\n345#1:539\n350#1:540\n345#1:541,5\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lokio/internal/_ByteStringKt;->codePointIndexToCharIndex([BI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    move v5, v4

    .line 9
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_3d

    .line 10
    .line 11
    aget-byte v6, v0, v3

    .line 12
    .line 13
    const v7, 0xfffd

    .line 14
    .line 15
    .line 16
    const/16 v8, 0x9f

    .line 17
    .line 18
    const/16 v9, 0x7f

    .line 19
    .line 20
    const/16 v10, 0x1f

    .line 21
    .line 22
    const/16 v11, 0xd

    .line 23
    .line 24
    const/16 v12, 0xa

    .line 25
    .line 26
    const/high16 v13, 0x10000

    .line 27
    .line 28
    const/16 v16, -0x1

    .line 29
    .line 30
    if-ltz v6, :cond_b

    .line 31
    .line 32
    add-int/lit8 v17, v5, 0x1

    .line 33
    .line 34
    if-ne v5, v1, :cond_1

    .line 35
    .line 36
    return v4

    .line 37
    :cond_1
    if-eq v6, v12, :cond_3

    .line 38
    .line 39
    if-eq v6, v11, :cond_3

    .line 40
    .line 41
    if-ltz v6, :cond_2

    .line 42
    .line 43
    if-gt v6, v10, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-gt v9, v6, :cond_3

    .line 47
    .line 48
    if-gt v6, v8, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    if-ne v6, v7, :cond_4

    .line 52
    .line 53
    :goto_1
    return v16

    .line 54
    :cond_4
    if-ge v6, v13, :cond_5

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    const/4 v5, 0x2

    .line 59
    :goto_2
    add-int/2addr v4, v5

    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    :goto_3
    move/from16 v5, v17

    .line 63
    .line 64
    if-ge v3, v2, :cond_0

    .line 65
    .line 66
    aget-byte v6, v0, v3

    .line 67
    .line 68
    if-ltz v6, :cond_0

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    add-int/lit8 v17, v5, 0x1

    .line 73
    .line 74
    if-ne v5, v1, :cond_6

    .line 75
    .line 76
    return v4

    .line 77
    :cond_6
    if-eq v6, v12, :cond_8

    .line 78
    .line 79
    if-eq v6, v11, :cond_8

    .line 80
    .line 81
    if-ltz v6, :cond_7

    .line 82
    .line 83
    if-gt v6, v10, :cond_7

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-gt v9, v6, :cond_8

    .line 87
    .line 88
    if-gt v6, v8, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    if-ne v6, v7, :cond_9

    .line 92
    .line 93
    :goto_4
    return v16

    .line 94
    :cond_9
    if-ge v6, v13, :cond_a

    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    goto :goto_5

    .line 98
    :cond_a
    const/4 v5, 0x2

    .line 99
    :goto_5
    add-int/2addr v4, v5

    .line 100
    goto :goto_3

    .line 101
    :cond_b
    shr-int/lit8 v14, v6, 0x5

    .line 102
    .line 103
    const/4 v15, -0x2

    .line 104
    const/16 v13, 0x80

    .line 105
    .line 106
    if-ne v14, v15, :cond_17

    .line 107
    .line 108
    add-int/lit8 v14, v3, 0x1

    .line 109
    .line 110
    if-gt v2, v14, :cond_d

    .line 111
    .line 112
    if-ne v5, v1, :cond_c

    .line 113
    .line 114
    return v4

    .line 115
    :cond_c
    return v16

    .line 116
    :cond_d
    aget-byte v14, v0, v14

    .line 117
    .line 118
    and-int/lit16 v15, v14, 0xc0

    .line 119
    .line 120
    if-ne v15, v13, :cond_15

    .line 121
    .line 122
    xor-int/lit16 v14, v14, 0xf80

    .line 123
    .line 124
    shl-int/lit8 v6, v6, 0x6

    .line 125
    .line 126
    xor-int/2addr v6, v14

    .line 127
    if-ge v6, v13, :cond_f

    .line 128
    .line 129
    if-ne v5, v1, :cond_e

    .line 130
    .line 131
    return v4

    .line 132
    :cond_e
    return v16

    .line 133
    :cond_f
    add-int/lit8 v13, v5, 0x1

    .line 134
    .line 135
    if-ne v5, v1, :cond_10

    .line 136
    .line 137
    return v4

    .line 138
    :cond_10
    if-eq v6, v12, :cond_12

    .line 139
    .line 140
    if-eq v6, v11, :cond_12

    .line 141
    .line 142
    if-ltz v6, :cond_11

    .line 143
    .line 144
    if-gt v6, v10, :cond_11

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_11
    if-gt v9, v6, :cond_12

    .line 148
    .line 149
    if-gt v6, v8, :cond_12

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_12
    if-ne v6, v7, :cond_13

    .line 153
    .line 154
    :goto_6
    return v16

    .line 155
    :cond_13
    const/high16 v5, 0x10000

    .line 156
    .line 157
    if-ge v6, v5, :cond_14

    .line 158
    .line 159
    const/4 v14, 0x1

    .line 160
    goto :goto_7

    .line 161
    :cond_14
    const/4 v14, 0x2

    .line 162
    :goto_7
    add-int/2addr v4, v14

    .line 163
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x2

    .line 166
    .line 167
    move v5, v13

    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_15
    if-ne v5, v1, :cond_16

    .line 171
    .line 172
    return v4

    .line 173
    :cond_16
    return v16

    .line 174
    :cond_17
    shr-int/lit8 v14, v6, 0x4

    .line 175
    .line 176
    const v7, 0xdfff

    .line 177
    .line 178
    .line 179
    const v8, 0xd800

    .line 180
    .line 181
    .line 182
    if-ne v14, v15, :cond_27

    .line 183
    .line 184
    add-int/lit8 v14, v3, 0x2

    .line 185
    .line 186
    if-gt v2, v14, :cond_19

    .line 187
    .line 188
    if-ne v5, v1, :cond_18

    .line 189
    .line 190
    return v4

    .line 191
    :cond_18
    return v16

    .line 192
    :cond_19
    add-int/lit8 v15, v3, 0x1

    .line 193
    .line 194
    aget-byte v15, v0, v15

    .line 195
    .line 196
    and-int/lit16 v9, v15, 0xc0

    .line 197
    .line 198
    if-ne v9, v13, :cond_25

    .line 199
    .line 200
    aget-byte v9, v0, v14

    .line 201
    .line 202
    and-int/lit16 v14, v9, 0xc0

    .line 203
    .line 204
    if-ne v14, v13, :cond_23

    .line 205
    .line 206
    const v13, -0x1e080

    .line 207
    .line 208
    .line 209
    xor-int/2addr v9, v13

    .line 210
    shl-int/lit8 v13, v15, 0x6

    .line 211
    .line 212
    xor-int/2addr v9, v13

    .line 213
    shl-int/lit8 v6, v6, 0xc

    .line 214
    .line 215
    xor-int/2addr v6, v9

    .line 216
    const/16 v9, 0x800

    .line 217
    .line 218
    if-ge v6, v9, :cond_1b

    .line 219
    .line 220
    if-ne v5, v1, :cond_1a

    .line 221
    .line 222
    return v4

    .line 223
    :cond_1a
    return v16

    .line 224
    :cond_1b
    if-gt v8, v6, :cond_1d

    .line 225
    .line 226
    if-gt v6, v7, :cond_1d

    .line 227
    .line 228
    if-ne v5, v1, :cond_1c

    .line 229
    .line 230
    return v4

    .line 231
    :cond_1c
    return v16

    .line 232
    :cond_1d
    add-int/lit8 v7, v5, 0x1

    .line 233
    .line 234
    if-ne v5, v1, :cond_1e

    .line 235
    .line 236
    return v4

    .line 237
    :cond_1e
    if-eq v6, v12, :cond_20

    .line 238
    .line 239
    if-eq v6, v11, :cond_20

    .line 240
    .line 241
    if-ltz v6, :cond_1f

    .line 242
    .line 243
    if-gt v6, v10, :cond_1f

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_1f
    const/16 v5, 0x7f

    .line 247
    .line 248
    if-gt v5, v6, :cond_20

    .line 249
    .line 250
    const/16 v5, 0x9f

    .line 251
    .line 252
    if-gt v6, v5, :cond_20

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_20
    const v5, 0xfffd

    .line 256
    .line 257
    .line 258
    if-ne v6, v5, :cond_21

    .line 259
    .line 260
    :goto_8
    return v16

    .line 261
    :cond_21
    const/high16 v5, 0x10000

    .line 262
    .line 263
    if-ge v6, v5, :cond_22

    .line 264
    .line 265
    const/4 v14, 0x1

    .line 266
    goto :goto_9

    .line 267
    :cond_22
    const/4 v14, 0x2

    .line 268
    :goto_9
    add-int/2addr v4, v14

    .line 269
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 270
    .line 271
    add-int/lit8 v3, v3, 0x3

    .line 272
    .line 273
    :goto_a
    move v5, v7

    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_23
    if-ne v5, v1, :cond_24

    .line 277
    .line 278
    return v4

    .line 279
    :cond_24
    return v16

    .line 280
    :cond_25
    if-ne v5, v1, :cond_26

    .line 281
    .line 282
    return v4

    .line 283
    :cond_26
    return v16

    .line 284
    :cond_27
    shr-int/lit8 v9, v6, 0x3

    .line 285
    .line 286
    if-ne v9, v15, :cond_3b

    .line 287
    .line 288
    add-int/lit8 v9, v3, 0x3

    .line 289
    .line 290
    if-gt v2, v9, :cond_29

    .line 291
    .line 292
    if-ne v5, v1, :cond_28

    .line 293
    .line 294
    return v4

    .line 295
    :cond_28
    return v16

    .line 296
    :cond_29
    add-int/lit8 v14, v3, 0x1

    .line 297
    .line 298
    aget-byte v14, v0, v14

    .line 299
    .line 300
    and-int/lit16 v15, v14, 0xc0

    .line 301
    .line 302
    if-ne v15, v13, :cond_39

    .line 303
    .line 304
    add-int/lit8 v15, v3, 0x2

    .line 305
    .line 306
    aget-byte v15, v0, v15

    .line 307
    .line 308
    and-int/lit16 v10, v15, 0xc0

    .line 309
    .line 310
    if-ne v10, v13, :cond_37

    .line 311
    .line 312
    aget-byte v9, v0, v9

    .line 313
    .line 314
    and-int/lit16 v10, v9, 0xc0

    .line 315
    .line 316
    if-ne v10, v13, :cond_35

    .line 317
    .line 318
    const v10, 0x381f80

    .line 319
    .line 320
    .line 321
    xor-int/2addr v9, v10

    .line 322
    shl-int/lit8 v10, v15, 0x6

    .line 323
    .line 324
    xor-int/2addr v9, v10

    .line 325
    shl-int/lit8 v10, v14, 0xc

    .line 326
    .line 327
    xor-int/2addr v9, v10

    .line 328
    shl-int/lit8 v6, v6, 0x12

    .line 329
    .line 330
    xor-int/2addr v6, v9

    .line 331
    const v9, 0x10ffff

    .line 332
    .line 333
    .line 334
    if-le v6, v9, :cond_2b

    .line 335
    .line 336
    if-ne v5, v1, :cond_2a

    .line 337
    .line 338
    return v4

    .line 339
    :cond_2a
    return v16

    .line 340
    :cond_2b
    if-gt v8, v6, :cond_2d

    .line 341
    .line 342
    if-gt v6, v7, :cond_2d

    .line 343
    .line 344
    if-ne v5, v1, :cond_2c

    .line 345
    .line 346
    return v4

    .line 347
    :cond_2c
    return v16

    .line 348
    :cond_2d
    const/high16 v7, 0x10000

    .line 349
    .line 350
    if-ge v6, v7, :cond_2f

    .line 351
    .line 352
    if-ne v5, v1, :cond_2e

    .line 353
    .line 354
    return v4

    .line 355
    :cond_2e
    return v16

    .line 356
    :cond_2f
    add-int/lit8 v7, v5, 0x1

    .line 357
    .line 358
    if-ne v5, v1, :cond_30

    .line 359
    .line 360
    return v4

    .line 361
    :cond_30
    if-eq v6, v12, :cond_32

    .line 362
    .line 363
    if-eq v6, v11, :cond_32

    .line 364
    .line 365
    if-ltz v6, :cond_31

    .line 366
    .line 367
    const/16 v5, 0x1f

    .line 368
    .line 369
    if-gt v6, v5, :cond_31

    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_31
    const/16 v5, 0x7f

    .line 373
    .line 374
    if-gt v5, v6, :cond_32

    .line 375
    .line 376
    const/16 v5, 0x9f

    .line 377
    .line 378
    if-gt v6, v5, :cond_32

    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_32
    const v5, 0xfffd

    .line 382
    .line 383
    .line 384
    if-ne v6, v5, :cond_33

    .line 385
    .line 386
    :goto_b
    return v16

    .line 387
    :cond_33
    const/high16 v5, 0x10000

    .line 388
    .line 389
    if-ge v6, v5, :cond_34

    .line 390
    .line 391
    const/4 v14, 0x1

    .line 392
    goto :goto_c

    .line 393
    :cond_34
    const/4 v14, 0x2

    .line 394
    :goto_c
    add-int/2addr v4, v14

    .line 395
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 396
    .line 397
    add-int/lit8 v3, v3, 0x4

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_35
    if-ne v5, v1, :cond_36

    .line 401
    .line 402
    return v4

    .line 403
    :cond_36
    return v16

    .line 404
    :cond_37
    if-ne v5, v1, :cond_38

    .line 405
    .line 406
    return v4

    .line 407
    :cond_38
    return v16

    .line 408
    :cond_39
    if-ne v5, v1, :cond_3a

    .line 409
    .line 410
    return v4

    .line 411
    :cond_3a
    return v16

    .line 412
    :cond_3b
    if-ne v5, v1, :cond_3c

    .line 413
    .line 414
    return v4

    .line 415
    :cond_3c
    return v16

    .line 416
    :cond_3d
    return v4
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p0, v0, v1, v0}, Lokio/_Base64Kt;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Lokio/_Base64Kt;->getBASE64_URL_SAFE()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .locals 9
    .param p0    # Lokio/ByteString;
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
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    const/4 v5, -0x1

    .line 26
    const/4 v6, 0x1

    .line 27
    if-ge v4, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    and-int/lit16 v7, v7, 0xff

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    and-int/lit16 v8, v8, 0xff

    .line 40
    .line 41
    if-ne v7, v8, :cond_0

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-ge v7, v8, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v6

    .line 50
    :goto_1
    return v5

    .line 51
    :cond_2
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    return v3

    .line 54
    :cond_3
    if-ge v0, v1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move v5, v6

    .line 58
    :goto_2
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
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
    const-string v0, "target"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    add-int/2addr p4, p1

    .line 16
    invoke-static {p0, p2, p3, p1, p4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
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
    invoke-static {p0}, Lokio/_Base64Kt;->decodeBase64ToArray(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lokio/ByteString;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 7
    .param p0    # Ljava/lang/String;
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
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    rem-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    new-array v3, v0, [B

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 34
    .line 35
    mul-int/lit8 v5, v1, 0x2

    .line 36
    .line 37
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v6}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    shl-int/lit8 v6, v6, 0x4

    .line 46
    .line 47
    add-int/2addr v5, v2

    .line 48
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-static {v5}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/2addr v6, v5

    .line 57
    int-to-byte v5, v6

    .line 58
    aput-byte v5, v3, v1

    .line 59
    .line 60
    if-le v4, v0, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move v1, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    new-instance p0, Lokio/ByteString;

    .line 66
    .line 67
    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_3
    const-string v0, "Unexpected hex string: "

    .line 72
    .line 73
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2
    .param p0    # Ljava/lang/String;
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
    new-instance v0, Lokio/ByteString;

    .line 7
    .line 8
    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .locals 3
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .locals 3
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .locals 4
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/4 v0, 0x1

    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast p1, Lokio/ByteString;

    .line 16
    .line 17
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    array-length v3, v3

    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length p0, p0

    .line 37
    invoke-virtual {p1, v2, v1, v2, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    aget-byte p0, p0, p1

    .line 11
    .line 12
    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length p0, p0

    .line 11
    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$okio(I)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .locals 8
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v0, v0

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    new-array v0, v0, [C

    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    aget-byte v4, p0, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 29
    .line 30
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    shr-int/lit8 v7, v4, 0x4

    .line 35
    .line 36
    and-int/lit8 v7, v7, 0xf

    .line 37
    .line 38
    aget-char v6, v6, v7

    .line 39
    .line 40
    aput-char v6, v0, v3

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x2

    .line 43
    .line 44
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    and-int/lit8 v4, v4, 0xf

    .line 49
    .line 50
    aget-char v4, v6, v4

    .line 51
    .line 52
    aput-char v4, v0, v5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .locals 5
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
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
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    array-length v1, p1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-gt p2, v0, :cond_2

    .line 24
    .line 25
    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 26
    .line 27
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    array-length v4, p1

    .line 32
    invoke-static {v3, p2, p1, v1, v4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    return p2

    .line 39
    :cond_0
    if-ne p2, v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move p2, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    const/4 p0, -0x1

    .line 45
    return p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .locals 4
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ltz p2, :cond_2

    :goto_0
    add-int/lit8 v0, p2, -0x1

    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, p2, p1, v2, v3}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokio/ByteString;

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "java.util.Arrays.copyOf(this, size)"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .locals 2
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .locals 2
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .locals 3
    .param p0    # Lokio/ByteString;
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
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v0

    .line 17
    :goto_0
    if-eqz v2, :cond_6

    .line 18
    .line 19
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    array-length v2, v2

    .line 24
    if-gt p2, v2, :cond_1

    .line 25
    .line 26
    move v2, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :goto_1
    if-eqz v2, :cond_5

    .line 30
    .line 31
    sub-int v2, p2, p1

    .line 32
    .line 33
    if-ltz v2, :cond_2

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_2
    if-eqz v0, :cond_4

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    array-length v0, v0

    .line 45
    if-ne p2, v0, :cond_3

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 49
    .line 50
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p1, "endIndex < beginIndex"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string p2, "endIndex > length("

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    array-length p0, p0

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 p0, 0x29

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string p1, "beginIndex < 0"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p0    # Lokio/ByteString;
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
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    if-ge v0, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget-byte v1, v1, v0

    .line 19
    .line 20
    const/16 v2, 0x41

    .line 21
    .line 22
    int-to-byte v2, v2

    .line 23
    if-lt v1, v2, :cond_4

    .line 24
    .line 25
    const/16 v3, 0x5a

    .line 26
    .line 27
    int-to-byte v3, v3

    .line 28
    if-le v1, v3, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    array-length v4, p0

    .line 36
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v4, "java.util.Arrays.copyOf(this, size)"

    .line 41
    .line 42
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, v0, 0x1

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x20

    .line 48
    .line 49
    int-to-byte v1, v1

    .line 50
    aput-byte v1, p0, v0

    .line 51
    .line 52
    :goto_1
    array-length v0, p0

    .line 53
    if-ge v4, v0, :cond_3

    .line 54
    .line 55
    aget-byte v0, p0, v4

    .line 56
    .line 57
    if-lt v0, v2, :cond_2

    .line 58
    .line 59
    if-le v0, v3, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 63
    .line 64
    int-to-byte v0, v0

    .line 65
    aput-byte v0, p0, v4

    .line 66
    .line 67
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p0    # Lokio/ByteString;
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
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    if-ge v0, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget-byte v1, v1, v0

    .line 19
    .line 20
    const/16 v2, 0x61

    .line 21
    .line 22
    int-to-byte v2, v2

    .line 23
    if-lt v1, v2, :cond_4

    .line 24
    .line 25
    const/16 v3, 0x7a

    .line 26
    .line 27
    int-to-byte v3, v3

    .line 28
    if-le v1, v3, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    array-length v4, p0

    .line 36
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v4, "java.util.Arrays.copyOf(this, size)"

    .line 41
    .line 42
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, v0, 0x1

    .line 46
    .line 47
    add-int/lit8 v1, v1, -0x20

    .line 48
    .line 49
    int-to-byte v1, v1

    .line 50
    aput-byte v1, p0, v0

    .line 51
    .line 52
    :goto_1
    array-length v0, p0

    .line 53
    if-ge v4, v0, :cond_3

    .line 54
    .line 55
    aget-byte v0, p0, v4

    .line 56
    .line 57
    if-lt v0, v2, :cond_2

    .line 58
    .line 59
    if-le v0, v3, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v0, v0, -0x20

    .line 63
    .line 64
    int-to-byte v0, v0

    .line 65
    aput-byte v0, p0, v4

    .line 66
    .line 67
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    array-length v0, p0

    .line 11
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "java.util.Arrays.copyOf(this, size)"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .locals 7
    .param p0    # [B
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
    array-length v0, p0

    .line 7
    int-to-long v1, v0

    .line 8
    int-to-long v3, p1

    .line 9
    int-to-long v5, p2

    .line 10
    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lokio/ByteString;

    .line 14
    .line 15
    add-int/2addr p2, p1

    .line 16
    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .locals 20
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v1, v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "[size=0]"

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0x40

    .line 23
    .line 24
    invoke-static {v1, v2}, Lokio/internal/_ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, -0x1

    .line 29
    const-string v4, "\u2026]"

    .line 30
    .line 31
    const-string v5, "[size="

    .line 32
    .line 33
    const/16 v6, 0x5d

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-ne v1, v3, :cond_7

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    array-length v1, v1

    .line 43
    if-gt v1, v2, :cond_1

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "[hex="

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_3

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    array-length v3, v3

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, " hex="

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    array-length v3, v3

    .line 100
    const/4 v5, 0x1

    .line 101
    if-gt v2, v3, :cond_2

    .line 102
    .line 103
    move v3, v5

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    move v3, v7

    .line 106
    :goto_0
    if-eqz v3, :cond_6

    .line 107
    .line 108
    if-ltz v2, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move v5, v7

    .line 112
    :goto_1
    if-eqz v5, :cond_5

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    array-length v3, v3

    .line 119
    if-ne v2, v3, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    new-instance v3, Lokio/ByteString;

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0, v7, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {v3, v0}, Lokio/ByteString;-><init>([B)V

    .line 133
    .line 134
    .line 135
    move-object v0, v3

    .line 136
    :goto_2
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_3
    return-object v0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string v1, "endIndex < beginIndex"

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v2, "endIndex > length("

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    array-length v0, v0

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const/16 v0, 0x29

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v1

    .line 196
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_9

    .line 201
    .line 202
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 207
    .line 208
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/4 v12, 0x4

    .line 212
    const/4 v13, 0x0

    .line 213
    const-string v9, "\\"

    .line 214
    .line 215
    const-string v10, "\\\\"

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    const/16 v18, 0x4

    .line 223
    .line 224
    const/16 v19, 0x0

    .line 225
    .line 226
    const-string v15, "\n"

    .line 227
    .line 228
    const-string v16, "\\n"

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    const/4 v11, 0x4

    .line 237
    const/4 v12, 0x0

    .line 238
    const-string v8, "\r"

    .line 239
    .line 240
    const-string v9, "\\r"

    .line 241
    .line 242
    const/4 v10, 0x0

    .line 243
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-ge v1, v2, :cond_8

    .line 252
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    array-length v0, v0

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v0, " text="

    .line 270
    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    goto :goto_4

    .line 285
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v1, "[text="

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :goto_4
    return-object v0

    .line 306
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 307
    .line 308
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 309
    .line 310
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0    # Lokio/ByteString;
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
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
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
    const-string v0, "buffer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final decodeHexDigit(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x66

    .line 16
    .line 17
    if-gt p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x57

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x41

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x46

    .line 27
    .line 28
    if-gt p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x37

    .line 31
    .line 32
    :goto_0
    return p0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "Unexpected hex digit: "

    .line 40
    .line 41
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .locals 0

    return-void
.end method
