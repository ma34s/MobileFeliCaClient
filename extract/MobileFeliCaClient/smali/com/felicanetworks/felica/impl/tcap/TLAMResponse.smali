.class public Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
.super Ljava/lang/Object;
.source "TLAMResponse.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x10004

.field private static final TLAM_EQUAL_WAIT:I = 0x2

.field private static final TLAM_KEYWORD_WAIT:I = 0x1

.field private static final TLAM_SKIP_TO_EOL:I = 0x4

.field private static final TLAM_VALUE_WAIT:I = 0x3

.field private static sbuf:Ljava/lang/StringBuffer;


# instance fields
.field private buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private cookie:Ljava/lang/String;

.field private valueTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->sbuf:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const v1, 0x10004

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->valueTable:Ljava/util/Hashtable;

    .line 89
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 485
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 471
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 472
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public parse()V
    .locals 13

    .prologue
    .line 209
    const/4 v10, 0x4

    const-string v11, "%s"

    const-string v12, "000"

    invoke-static {v10, v11, v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    .line 212
    .local v3, "data":[B
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v7

    .line 215
    .local v7, "size":I
    const/4 v4, 0x0

    .line 216
    .local v4, "keyword":Ljava/lang/String;
    const/4 v9, 0x0

    .line 217
    .local v9, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 218
    .local v5, "offset":I
    const/4 v8, 0x1

    .line 222
    .local v8, "state":I
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 435
    :goto_1
    if-lt v5, v7, :cond_21

    .line 447
    :goto_2
    if-lt v5, v7, :cond_24

    .line 449
    :cond_1
    :goto_3
    return-void

    .line 230
    :cond_2
    aget-byte v10, v3, v5

    const/16 v11, 0x20

    if-eq v10, v11, :cond_3

    aget-byte v10, v3, v5

    const/16 v11, 0x9

    if-eq v10, v11, :cond_3

    .line 239
    :goto_4
    if-lt v5, v7, :cond_4

    .line 240
    const/4 v10, 0x4

    const-string v11, "%s"

    const-string v12, "999"

    invoke-static {v10, v11, v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 236
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 228
    :pswitch_0
    if-lt v5, v7, :cond_2

    goto :goto_4

    .line 246
    :cond_4
    aget-byte v10, v3, v5

    const/16 v11, 0xa

    if-eq v10, v11, :cond_5

    aget-byte v10, v3, v5

    const/16 v11, 0xd

    if-ne v10, v11, :cond_6

    .line 248
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 250
    const/4 v8, 0x1

    .line 252
    goto :goto_0

    .line 255
    :cond_6
    sget-object v10, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->sbuf:Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    move v6, v5

    .line 257
    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_5
    if-lt v6, v7, :cond_7

    move v5, v6

    .line 297
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_6
    if-lt v5, v7, :cond_0

    goto :goto_3

    .line 259
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_7
    const/16 v10, 0x61

    aget-byte v11, v3, v6

    if-gt v10, v11, :cond_8

    aget-byte v10, v3, v6

    const/16 v11, 0x7a

    if-le v10, v11, :cond_a

    .line 260
    :cond_8
    const/16 v10, 0x41

    aget-byte v11, v3, v6

    if-gt v10, v11, :cond_9

    aget-byte v10, v3, v6

    const/16 v11, 0x5a

    if-le v10, v11, :cond_a

    .line 261
    :cond_9
    const/16 v10, 0x31

    aget-byte v11, v3, v6

    if-gt v10, v11, :cond_b

    aget-byte v10, v3, v6

    const/16 v11, 0x39

    if-gt v10, v11, :cond_b

    .line 263
    :cond_a
    sget-object v10, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->sbuf:Ljava/lang/StringBuffer;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v11, v3, v6

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    .line 265
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_5

    :cond_b
    aget-byte v10, v3, v6

    const/16 v11, 0x20

    if-eq v10, v11, :cond_c

    aget-byte v10, v3, v6

    const/16 v11, 0x9

    if-eq v10, v11, :cond_c

    .line 266
    aget-byte v10, v3, v6

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_e

    .line 268
    :cond_c
    sget-object v10, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_d

    .line 270
    sget-object v10, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    const/4 v8, 0x2

    move v5, v6

    .line 274
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_6

    .line 276
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_d
    const/4 v8, 0x4

    move v5, v6

    .line 279
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_6

    .line 281
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    aget-byte v10, v3, v6

    const/16 v11, 0xa

    if-eq v10, v11, :cond_f

    aget-byte v10, v3, v6

    const/16 v11, 0xd

    if-ne v10, v11, :cond_10

    .line 283
    :cond_f
    add-int/lit8 v5, v6, 0x1

    .line 285
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const/4 v8, 0x1

    .line 287
    goto :goto_6

    .line 291
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_10
    const/4 v8, 0x4

    move v5, v6

    .line 293
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_6

    .line 310
    :cond_11
    aget-byte v10, v3, v5

    const/16 v11, 0x20

    if-eq v10, v11, :cond_13

    aget-byte v10, v3, v5

    const/16 v11, 0x9

    if-eq v10, v11, :cond_13

    .line 318
    :goto_7
    if-ge v5, v7, :cond_1

    .line 324
    aget-byte v10, v3, v5

    const/16 v11, 0xa

    if-eq v10, v11, :cond_12

    aget-byte v10, v3, v5

    const/16 v11, 0xd

    if-ne v10, v11, :cond_14

    .line 326
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 328
    const/4 v8, 0x1

    .line 330
    goto/16 :goto_0

    .line 315
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 308
    :pswitch_1
    if-lt v5, v7, :cond_11

    goto :goto_7

    .line 332
    :cond_14
    aget-byte v10, v3, v5

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_15

    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 336
    const/4 v8, 0x3

    .line 338
    goto/16 :goto_0

    .line 340
    :cond_15
    const/4 v8, 0x4

    .line 343
    goto/16 :goto_0

    .line 351
    :cond_16
    aget-byte v10, v3, v5

    const/16 v11, 0x20

    if-eq v10, v11, :cond_18

    aget-byte v10, v3, v5

    const/16 v11, 0x9

    if-eq v10, v11, :cond_18

    .line 359
    :goto_8
    if-ge v5, v7, :cond_1

    .line 365
    aget-byte v10, v3, v5

    const/16 v11, 0xa

    if-eq v10, v11, :cond_17

    aget-byte v10, v3, v5

    const/16 v11, 0xd

    if-ne v10, v11, :cond_19

    .line 367
    :cond_17
    add-int/lit8 v5, v5, 0x1

    .line 369
    const/4 v8, 0x1

    .line 371
    goto/16 :goto_0

    .line 356
    :cond_18
    add-int/lit8 v5, v5, 0x1

    .line 349
    :pswitch_2
    if-lt v5, v7, :cond_16

    goto :goto_8

    .line 373
    :cond_19
    array-length v10, v3

    new-array v0, v10, [B

    .line 374
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "count":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    move v6, v5

    .line 377
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_9
    if-lt v6, v7, :cond_1d

    .line 388
    :cond_1a
    if-ge v6, v7, :cond_25

    .line 391
    aget-byte v10, v3, v6

    const/16 v11, 0xa

    if-eq v10, v11, :cond_25

    aget-byte v10, v3, v6

    const/16 v11, 0xd

    if-eq v10, v11, :cond_25

    move v5, v6

    .line 393
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_a
    if-lt v5, v7, :cond_1e

    :cond_1b
    move v1, v2

    .line 418
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :goto_b
    if-lez v1, :cond_1c

    .line 420
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v10, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1c

    .line 422
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->valueTable:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_1c
    const/4 v8, 0x1

    .line 429
    goto/16 :goto_0

    .line 379
    .end local v1    # "count":I
    .end local v5    # "offset":I
    .restart local v2    # "count":I
    .restart local v6    # "offset":I
    :cond_1d
    aget-byte v10, v3, v6

    const/16 v11, 0xa

    if-eq v10, v11, :cond_1a

    aget-byte v10, v3, v6

    const/16 v11, 0xd

    if-eq v10, v11, :cond_1a

    .line 380
    aget-byte v10, v3, v6

    const/16 v11, 0x20

    if-eq v10, v11, :cond_1a

    aget-byte v10, v3, v6

    const/16 v11, 0x9

    if-eq v10, v11, :cond_1a

    .line 385
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v10, v3, v6

    aput-byte v10, v0, v2

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_9

    .line 395
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_1e
    aget-byte v10, v3, v5

    const/16 v11, 0xa

    if-eq v10, v11, :cond_1b

    aget-byte v10, v3, v5

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1f

    move v1, v2

    .line 397
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_b

    .line 402
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_1f
    aget-byte v10, v3, v5

    const/16 v11, 0x20

    if-eq v10, v11, :cond_20

    aget-byte v10, v3, v5

    const/16 v11, 0x9

    if-eq v10, v11, :cond_20

    .line 404
    const/4 v8, 0x1

    .line 407
    const/4 v1, 0x0

    .line 409
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_b

    .line 413
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 437
    .end local v0    # "buf":[B
    .end local v2    # "count":I
    :cond_21
    aget-byte v10, v3, v5

    const/16 v11, 0xa

    if-eq v10, v11, :cond_22

    aget-byte v10, v3, v5

    const/16 v11, 0xd

    if-ne v10, v11, :cond_23

    .line 439
    :cond_22
    add-int/lit8 v5, v5, 0x1

    .line 441
    goto/16 :goto_2

    .line 444
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 453
    :cond_24
    const/4 v8, 0x1

    .line 220
    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v0    # "buf":[B
    .restart local v2    # "count":I
    .restart local v6    # "offset":I
    :cond_25
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_b

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method receive(Lorg/apache/http/HttpResponse;)V
    .locals 13
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    .line 117
    const-string v8, "%s"

    const-string v9, "000"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 129
    .local v6, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v6, :cond_0

    .line 130
    const/4 v8, 0x4

    const-string v9, "%s"

    const-string v10, "001"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 133
    .local v5, "responseCode":I
    const/16 v8, 0xc8

    if-eq v5, v8, :cond_1

    .line 134
    const/4 v8, 0x1

    const-string v9, "%s"

    const-string v10, "700"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid response code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    .end local v5    # "responseCode":I
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v3

    .line 190
    .local v3, "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    const-string v8, "%s HTTPException"

    const-string v9, "705"

    invoke-static {v11, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    throw v3

    .line 139
    .end local v3    # "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    const-string v9, "%s"

    const-string v10, "701"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 141
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v9, "Invalid response code: null"

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "%s Exception"

    const-string v9, "706"

    invoke-static {v11, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v9, "HTTP communication error."

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "responseCode":I
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 146
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_2

    .line 147
    const/4 v8, 0x1

    const-string v9, "%s"

    const-string v10, "702"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v9, "Invalid response: Can\'t get Entity."

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 153
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 154
    .local v4, "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_4

    .line 155
    const/4 v8, 0x4

    const-string v9, "%s"

    const-string v10, "002"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 159
    const-string v8, "application/x-tlam"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_5

    .line 160
    :cond_3
    const/4 v8, 0x1

    const-string v9, "%s"

    const-string v10, "703"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 162
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid content-type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    const-string v9, "%s"

    const-string v10, "704"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v9, "Invalid content-type: null"

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 171
    .restart local v0    # "contentType":Ljava/lang/String;
    :cond_5
    const-string v8, "Set-Cookie"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_6

    .line 173
    const/4 v8, 0x4

    const-string v9, "%s"

    const-string v10, "003"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->cookie:Ljava/lang/String;

    .line 184
    :goto_0
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v7

    .line 185
    .local v7, "tmp":[B
    iget-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v8, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    const-string v8, "%s"

    const-string v9, "999"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    return-void

    .line 177
    .end local v7    # "tmp":[B
    :cond_6
    const/4 v8, 0x4

    :try_start_3
    const-string v9, "%s"

    const-string v10, "004"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 179
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->cookie:Ljava/lang/String;
    :try_end_3
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 98
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 102
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 104
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method
