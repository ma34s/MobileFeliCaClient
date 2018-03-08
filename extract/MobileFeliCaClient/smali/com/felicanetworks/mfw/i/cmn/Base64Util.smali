.class public Lcom/felicanetworks/mfw/i/cmn/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 6
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 74
    const-string v2, "%s : target = %s"

    const-string v3, "000"

    invoke-static {v4, v2, v3, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Base64Util.decode() target = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/DebugLogger;->set(Ljava/lang/String;)V

    .line 76
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidBase64(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    const/4 v2, 0x1

    const-string v3, "800 target = %s"

    invoke-static {v2, v3, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "Illegal argument."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [target = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/Base64Util;

    const-string v4, "decode"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 85
    .local v1, "decoded":[B
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-object v1
.end method
