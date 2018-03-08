.class public Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "OperateDeviceMessage.java"


# static fields
.field private static final MIN_LENGTH:I = 0x5

.field private static final PARAM_NAME_CHARSET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 40
    return-void
.end method

.method private getParamNameLength()I
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 174
    .local v0, "paramNameLen":I
    return v0
.end method

.method private getParamSize()I
    .locals 6

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParamNameLength()I

    move-result v0

    .line 190
    .local v0, "paramNameLen":I
    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    add-int/lit8 v2, v3, 0x2

    .line 192
    .local v2, "pos":I
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 194
    .local v1, "paramSize":I
    return v1
.end method


# virtual methods
.method public getParam()[B
    .locals 6

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 144
    .local v0, "param":[B
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParamSize()I

    move-result v2

    .line 146
    .local v2, "paramSize":I
    if-lez v2, :cond_0

    .line 151
    new-array v0, v2, [B

    .line 153
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParamNameLength()I

    move-result v1

    .line 155
    .local v1, "paramNameLen":I
    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->offset:I

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x2

    .line 157
    .local v3, "pos":I
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    const/4 v5, 0x0

    invoke-static {v4, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    .end local v1    # "paramNameLen":I
    .end local v3    # "pos":I
    :cond_0
    return-object v0
.end method

.method public getParamName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 116
    .local v0, "paramName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParamNameLength()I

    move-result v2

    .line 118
    .local v2, "paramNameLen":I
    if-lez v2, :cond_0

    .line 122
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->offset:I

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x1

    .line 123
    const-string v5, "ISO-8859-1"

    .line 122
    invoke-direct {v1, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "paramName":Ljava/lang/String;
    .local v1, "paramName":Ljava/lang/String;
    move-object v0, v1

    .line 131
    .end local v1    # "paramName":Ljava/lang/String;
    .restart local v0    # "paramName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public validateData()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 68
    iget v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->offset:I

    add-int/lit8 v3, v5, 0x6

    .line 71
    .local v3, "pos":I
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    aget-byte v5, v5, v3

    and-int/lit16 v1, v5, 0xff

    .line 73
    .local v1, "paramNameLen":I
    add-int/lit8 v3, v3, 0x1

    .line 75
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 84
    add-int/2addr v3, v1

    .line 87
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    aget-byte v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v5, v5, v6

    if-eqz v5, :cond_2

    .line 103
    :cond_0
    :goto_1
    return v4

    .line 78
    :cond_1
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    add-int v6, v3, v0

    aget-byte v5, v5, v6

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    add-int v6, v3, v0

    aget-byte v5, v5, v6

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 95
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->data:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v2, v5, v6

    .line 98
    .local v2, "paramSize":I
    iget v5, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->length:I

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    if-ne v5, v6, :cond_0

    .line 103
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public validateFormat()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->length:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
