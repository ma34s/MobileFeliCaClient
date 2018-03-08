.class public Lcom/felicanetworks/felica/impl/tcap/WarningMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "WarningMessage.java"


# static fields
.field private static final MSG_CHARSET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "msg":Ljava/lang/String;
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;->length:I

    if-lez v2, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;->length:I

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    move-object v0, v1

    .line 83
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
