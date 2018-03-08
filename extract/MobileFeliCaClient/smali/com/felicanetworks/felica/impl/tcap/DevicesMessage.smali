.class public Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "DevicesMessage.java"


# static fields
.field private static final DEVICE_CHARSET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    .locals 20
    .param p1, "deviceList"    # Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 39
    const/4 v7, 0x0

    .line 45
    .local v7, "device":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    const/4 v10, 0x0

    .line 48
    .local v10, "len":I
    const/4 v6, 0x0

    .line 49
    .local v6, "chbuf":Ljava/nio/CharBuffer;
    const-string v17, "ISO-8859-1"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    .line 50
    .local v5, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v9

    .line 51
    .local v9, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/4 v4, 0x0

    .line 55
    .local v4, "byteBuf":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v11, v0, :cond_0

    .line 81
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x25

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->init(BIBI)V

    .line 83
    const/4 v14, 0x6

    .line 85
    .local v14, "pos":I
    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v11, v0, :cond_1

    .line 150
    return-void

    .line 57
    .end local v14    # "pos":I
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v7

    .line 61
    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 62
    invoke-virtual {v9, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 64
    .local v15, "type":[B
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 68
    invoke-virtual {v9, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 70
    .local v12, "name":[B
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 73
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 75
    .local v16, "typeLen":I
    array-length v0, v12

    move/from16 v17, v0

    const v18, 0xffff

    and-int v13, v17, v18

    .line 77
    .local v13, "nameLen":I
    add-int/lit8 v17, v16, 0x5

    add-int/lit8 v17, v17, 0x1

    add-int v17, v17, v13

    add-int v10, v10, v17

    .line 55
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 87
    .end local v12    # "name":[B
    .end local v13    # "nameLen":I
    .end local v15    # "type":[B
    .end local v16    # "typeLen":I
    .restart local v14    # "pos":I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 92
    invoke-virtual {v9, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 94
    .restart local v15    # "type":[B
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 98
    invoke-virtual {v9, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 100
    .restart local v12    # "name":[B
    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 105
    .restart local v16    # "typeLen":I
    array-length v0, v12

    move/from16 v17, v0

    const v18, 0xffff

    and-int v13, v17, v18

    .line 108
    .restart local v13    # "nameLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v17, v0

    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getID()I

    move-result v18

    const v19, 0xff00

    and-int v18, v18, v19

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v14

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getID()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 112
    add-int/lit8 v14, v14, 0x2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-byte v18, v17, v14

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    const/16 v19, 0x0

    aput-byte v19, v17, v18

    .line 119
    add-int/lit8 v14, v14, 0x2

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v14

    .line 124
    add-int/lit8 v14, v14, 0x1

    .line 127
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v15, v0, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    add-int v14, v14, v16

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v17, v0

    int-to-byte v0, v13

    move/from16 v18, v0

    aput-byte v18, v17, v14

    .line 134
    add-int/lit8 v14, v14, 0x1

    .line 137
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;->data:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    add-int/2addr v14, v13

    .line 85
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 144
    .end local v12    # "name":[B
    .end local v13    # "nameLen":I
    .end local v14    # "pos":I
    .end local v15    # "type":[B
    .end local v16    # "typeLen":I
    :catch_0
    move-exception v8

    .line 147
    .local v8, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const-string v18, "Unsupported device name/type."

    invoke-direct/range {v17 .. v18}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(Ljava/lang/String;)V

    throw v17
.end method
