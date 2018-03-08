.class public Lcom/felicanetworks/falp/HandshakeParameter;
.super Ljava/lang/Object;
.source "HandshakeParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    }
.end annotation


# static fields
.field public static final APPCODE_KIND_ANDR:I = 0x2

.field public static final APPCODE_KIND_CMN:I = 0x0

.field public static final APPCODE_KIND_SVC:I = 0x1

.field public static final APPCODE_KIND_USR:I = 0x3

.field public static final APPCODE_TYPE_COMM_NUM:I = 0x0

.field public static final APPCODE_TYPE_SERVICE_NUM:I = 0x1

.field public static final APPCODE_TYPE_USER_NUM:I = 0x2

.field static final FALP_ADH_HS_RES_INITIATOR_ANDR01:I = 0xbb8

.field static final FALP_ADH_HS_RES_INITIATOR_DEFAULT:I = 0xbb8

.field static final FALP_ADH_HS_RES_INITIATOR_USER:I = 0xafc8

.field static final FALP_ADH_HS_RES_MAX:I = 0xea60

.field static final FALP_ADH_HS_RES_MIN:I = 0x7d0

.field static final FALP_ADH_HS_RES_TARGET_ANDR01:I = 0x7d0

.field static final FALP_ADH_HS_RES_TARGET_DEFAULT:I = 0x7d0

.field static final FALP_ADH_HS_RES_TARGET_USER:I = 0xafc8

.field public static final FALP_FALPCLS_DEFAULT:Ljava/lang/String; = "falp"

.field public static final FALP_FALPCNG_INITIATOR:Ljava/lang/String; = "Initiator"

.field public static final FALP_FALPCNG_TARGET:Ljava/lang/String; = "Target"


# instance fields
.field private appid:[B

.field private appidLen:C

.field private falpRecvmax:S

.field private paraRs:J

.field private paraTdb:J

.field private paraTdcc:I

.field private paraTddb:I

.field private paraTddc:I

.field private paraTde:J

.field private paraTdf:J

.field private paraTdg:I

.field private paraTdh:J

.field private paraTdi:J

.field private paraWs:J

.field private recvPktMax:I

.field private sessionId:S


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->sessionId:S

    .line 208
    iput-char v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appidLen:C

    .line 209
    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->recvPktMax:I

    .line 210
    iput-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->falpRecvmax:S

    .line 211
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraWs:J

    .line 212
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdb:J

    .line 213
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraRs:J

    .line 214
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTde:J

    .line 215
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdf:J

    .line 216
    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdg:I

    .line 217
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdh:J

    .line 218
    iput-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdi:J

    .line 219
    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddb:I

    .line 220
    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdcc:I

    .line 221
    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddc:I

    .line 223
    return-void
.end method

.method private checkAppCode(Ljava/lang/String;[B)Z
    .locals 9
    .param p1, "whitelistLine"    # Ljava/lang/String;
    .param p2, "appCode"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x7

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 916
    const-string v2, "HandshakeParameter#checkAppCode app code length error."

    invoke-static {v6, v2, p1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 927
    :goto_0
    return v1

    .line 921
    :cond_0
    const-string v2, "%02x%02x%02x%02x%02x%02x"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 922
    aget-byte v4, p2, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    aget-byte v1, p2, v8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v3, v6

    const/4 v1, 0x4

    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v3, v7

    const/4 v1, 0x5

    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v3, v8

    const/4 v1, 0x4

    .line 923
    const/4 v4, 0x6

    aget-byte v4, p2, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    aget-byte v4, p2, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    .line 921
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "appCodeByte":Ljava/lang/String;
    const-string v1, "my appcode:"

    invoke-static {v5, v1, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v1, "whitelist code:"

    invoke-static {v5, v1, p1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public checkInitiatorHrSvcAppCode(Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;)V
    .locals 4
    .param p1, "componentNameHolder"    # Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    .prologue
    const/4 v3, 0x1

    .line 751
    new-array v1, v3, [I

    .line 752
    .local v1, "timer":[I
    invoke-virtual {p0}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v0

    .line 753
    .local v0, "appid":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    if-eq v2, v3, :cond_0

    .line 754
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    .line 755
    const/4 v2, -0x3

    iput v2, p1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    .line 759
    :goto_0
    return-void

    .line 758
    :cond_0
    const-string v2, "Initiator"

    invoke-virtual {p0, v2, p1, v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getParameterFromFalpCng(Ljava/lang/String;Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;[I)V

    goto :goto_0
.end method

.method public checkTargetHsSvcAppCode(Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;)V
    .locals 4
    .param p1, "componentNameHolder"    # Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    .prologue
    const/4 v3, 0x1

    .line 730
    new-array v1, v3, [I

    .line 731
    .local v1, "timer":[I
    invoke-virtual {p0}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v0

    .line 732
    .local v0, "appid":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    if-eq v2, v3, :cond_0

    .line 733
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    .line 734
    const/4 v2, -0x3

    iput v2, p1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    .line 738
    :goto_0
    return-void

    .line 737
    :cond_0
    const-string v2, "Target"

    invoke-virtual {p0, v2, p1, v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getParameterFromFalpCng(Ljava/lang/String;Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;[I)V

    goto :goto_0
.end method

.method public copyFrom(Lcom/felicanetworks/falp/HandshakeParameter;)V
    .locals 2
    .param p1, "mng"    # Lcom/felicanetworks/falp/HandshakeParameter;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getSession_id()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->sessionId:S

    .line 273
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v0

    iput-char v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appidLen:C

    .line 274
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appid:[B

    .line 275
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->recvPktMax:I

    .line 276
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->falpRecvmax:S

    .line 277
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraWs:J

    .line 278
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdb:J

    .line 279
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraRs:J

    .line 280
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTde:J

    .line 281
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdf:J

    .line 282
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdg:I

    .line 283
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdh:J

    .line 284
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdi:J

    .line 285
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddb:I

    .line 286
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdcc()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdcc:I

    .line 287
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddc:I

    .line 289
    return-void
.end method

.method public getAppCodeKind()I
    .locals 5

    .prologue
    .line 685
    const/4 v1, -0x3

    .line 686
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v0

    .line 687
    .local v0, "byteAppid":[B
    if-nez v0, :cond_0

    .line 688
    const/4 v1, -0x3

    move v2, v1

    .line 717
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 693
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    packed-switch v3, :pswitch_data_0

    .line 713
    const/4 v1, -0x3

    :goto_1
    move v2, v1

    .line 717
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 697
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :pswitch_0
    const/4 v1, 0x0

    .line 698
    goto :goto_1

    .line 702
    :pswitch_1
    invoke-virtual {p0}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v3

    sget-object v4, Lcom/felicanetworks/falp/FalpProtocolParameter;->ANDR01_APP_CODE:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 703
    const/4 v1, 0x2

    .line 704
    goto :goto_1

    .line 705
    :cond_1
    const/4 v1, 0x1

    .line 707
    goto :goto_1

    .line 710
    :pswitch_2
    const/4 v1, 0x3

    .line 711
    goto :goto_1

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAppid()[B
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appid:[B

    return-object v0
.end method

.method public getAppid_len()C
    .locals 1

    .prologue
    .line 369
    iget-char v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appidLen:C

    return v0
.end method

.method public getFalp_recvmax()S
    .locals 1

    .prologue
    .line 413
    iget-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->falpRecvmax:S

    return v0
.end method

.method public getPara_rs()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraRs:J

    return-wide v0
.end method

.method public getPara_tdb()J
    .locals 2

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdb:J

    return-wide v0
.end method

.method public getPara_tdcc()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdcc:I

    return v0
.end method

.method public getPara_tddb()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddb:I

    return v0
.end method

.method public getPara_tddc()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddc:I

    return v0
.end method

.method public getPara_tde()J
    .locals 2

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTde:J

    return-wide v0
.end method

.method public getPara_tdf()J
    .locals 2

    .prologue
    .line 532
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdf:J

    return-wide v0
.end method

.method public getPara_tdg()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdg:I

    return v0
.end method

.method public getPara_tdh()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdh:J

    return-wide v0
.end method

.method public getPara_tdi()J
    .locals 2

    .prologue
    .line 599
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdi:J

    return-wide v0
.end method

.method public getPara_ws()J
    .locals 2

    .prologue
    .line 435
    iget-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraWs:J

    return-wide v0
.end method

.method public getParameterFromFalpCng(Ljava/lang/String;Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;[I)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "componentNameHolder"    # Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    .param p3, "timer"    # [I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    .line 779
    const/4 v7, -0x3

    iput v7, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    .line 780
    const/4 v4, 0x0

    .line 784
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 786
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/system/etc/felica/mfc_falp.cfg"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 790
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 791
    if-nez v2, :cond_2

    .line 879
    :cond_1
    if-nez v2, :cond_0

    move-object v4, v5

    .line 895
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 900
    :goto_1
    return-void

    .line 795
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v7, 0x7

    :try_start_3
    const-string v8, "whitelite line:"

    invoke-static {v7, v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v7, ","

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 797
    .local v6, "splitLine":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    .line 802
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 807
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {p0}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/felicanetworks/falp/HandshakeParameter;->checkAppCode(Ljava/lang/String;[B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 812
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "Target"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 815
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "^[\\s\u3000]*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 816
    const-string v8, "[\\s\u3000]*$"

    const-string v9, ""

    .line 815
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "className":Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v6, v7

    const-string v8, "^[\\s\u3000]*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[\\s\u3000]*$"

    .line 818
    const-string v9, ""

    .line 817
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "pkgName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 824
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x3

    aget-object v7, v6, v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 825
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x3

    aget-object v8, v6, v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    .line 858
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_3
    :goto_2
    array-length v7, v6

    const/4 v8, 0x5

    if-lt v7, v8, :cond_4

    const/4 v7, 0x4

    aget-object v7, v6, v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 860
    :cond_4
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "Target"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 861
    const/4 v7, 0x0

    const/16 v8, 0x7d0

    aput v8, p3, v7

    .line 877
    :goto_3
    const/4 v7, 0x0

    iput v7, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    move-object v4, v5

    .line 878
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 838
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_5
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "Initiator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 841
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "^[\\s\u3000]*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 842
    const-string v8, "[\\s\u3000]*$"

    const-string v9, ""

    .line 841
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .restart local v0    # "className":Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v6, v7

    const-string v8, "^[\\s\u3000]*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[\\s\u3000]*$"

    .line 844
    const-string v9, ""

    .line 843
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 846
    .restart local v3    # "pkgName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 847
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 848
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x3

    aget-object v8, v6, v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 881
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v6    # "splitLine":[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 882
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_4
    const-string v7, "white list not found!!"

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 883
    iput v10, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    goto/16 :goto_1

    .line 850
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "splitLine":[Ljava/lang/String;
    :cond_6
    :try_start_4
    new-instance v7, Landroid/content/ComponentName;

    const/4 v8, 0x3

    aget-object v8, v6, v8

    .line 851
    const-string v9, "falp"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iput-object v7, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 885
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v6    # "splitLine":[Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 886
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_5
    const-string v7, "white list io exception"

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 887
    iput v10, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    goto/16 :goto_0

    .line 863
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "splitLine":[Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    const/16 v8, 0xbb8

    :try_start_5
    aput v8, p3, v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 888
    .end local v6    # "splitLine":[Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v4, v5

    .line 889
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_6
    const-string v7, "white list format error."

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 890
    iput v10, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    goto/16 :goto_0

    .line 867
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "splitLine":[Ljava/lang/String;
    :cond_8
    const/4 v7, 0x4

    :try_start_6
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0xea60

    if-le v7, v8, :cond_9

    .line 868
    const/4 v7, 0x0

    const v8, 0xea60

    aput v8, p3, v7

    goto/16 :goto_3

    .line 869
    :cond_9
    const/4 v7, 0x4

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x7d0

    if-ge v7, v8, :cond_a

    .line 870
    const/4 v7, 0x0

    const/16 v8, 0x7d0

    aput v8, p3, v7

    goto/16 :goto_3

    .line 872
    :cond_a
    const/4 v7, 0x0

    const/4 v8, 0x4

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, p3, v7
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 896
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "splitLine":[Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 897
    .local v1, "e":Ljava/io/IOException;
    iput v10, p2, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    goto/16 :goto_1

    .line 888
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    goto :goto_6

    .line 885
    :catch_5
    move-exception v1

    goto :goto_5

    .line 881
    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method public getRecv_pkt_max()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->recvPktMax:I

    return v0
.end method

.method public getSession_id()S
    .locals 1

    .prologue
    .line 327
    iget-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->sessionId:S

    return v0
.end method

.method public init(Lcom/felicanetworks/falp/FalpProtocolParameter;)V
    .locals 2
    .param p1, "mng"    # Lcom/felicanetworks/falp/FalpProtocolParameter;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->sessionId:S

    .line 241
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getRecv_pkt_max()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->recvPktMax:I

    .line 242
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getFalp_recvmax()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->falpRecvmax:S

    .line 243
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_ws()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraWs:J

    .line 244
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tdb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdb:J

    .line 245
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_rs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraRs:J

    .line 246
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tde()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTde:J

    .line 247
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tdf()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdf:J

    .line 248
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tdg()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdg:I

    .line 249
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tdh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdh:J

    .line 250
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tdi()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdi:J

    .line 251
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tddb()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddb:I

    .line 252
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tdcc()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdcc:I

    .line 253
    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPara_tddc()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddc:I

    .line 255
    return-void
.end method

.method public setAppid([B)V
    .locals 0
    .param p1, "appId"    # [B

    .prologue
    .line 359
    iput-object p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appid:[B

    .line 360
    return-void
.end method

.method public setAppid_len(C)V
    .locals 0
    .param p1, "appidLength"    # C

    .prologue
    .line 380
    iput-char p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appidLen:C

    .line 381
    return-void
.end method

.method public setFalp_recvmax(S)V
    .locals 0
    .param p1, "falpRecieveMax"    # S

    .prologue
    .line 424
    iput-short p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->falpRecvmax:S

    .line 425
    return-void
.end method

.method public setPara_rs(J)V
    .locals 1
    .param p1, "parameterRs"    # J

    .prologue
    .line 498
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraRs:J

    .line 499
    return-void
.end method

.method public setPara_tdb(J)V
    .locals 1
    .param p1, "parameterTdb"    # J

    .prologue
    .line 470
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdb:J

    .line 471
    return-void
.end method

.method public setPara_tdcc(I)V
    .locals 0
    .param p1, "parameterTdcc"    # I

    .prologue
    .line 653
    iput p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdcc:I

    .line 654
    return-void
.end method

.method public setPara_tddb(I)V
    .locals 0
    .param p1, "parametertddb"    # I

    .prologue
    .line 632
    iput p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddb:I

    .line 633
    return-void
.end method

.method public setPara_tddc(I)V
    .locals 0
    .param p1, "parameterTddc"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddc:I

    .line 675
    return-void
.end method

.method public setPara_tde(J)V
    .locals 1
    .param p1, "parameterTde"    # J

    .prologue
    .line 521
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTde:J

    .line 522
    return-void
.end method

.method public setPara_tdf(J)V
    .locals 1
    .param p1, "parameterTdf"    # J

    .prologue
    .line 544
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdf:J

    .line 545
    return-void
.end method

.method public setPara_tdg(I)V
    .locals 0
    .param p1, "parameterTdg"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdg:I

    .line 566
    return-void
.end method

.method public setPara_tdh(J)V
    .locals 1
    .param p1, "parameterTdh"    # J

    .prologue
    .line 588
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdh:J

    .line 589
    return-void
.end method

.method public setPara_tdi(J)V
    .locals 1
    .param p1, "parameterTdi"    # J

    .prologue
    .line 611
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdi:J

    .line 612
    return-void
.end method

.method public setPara_ws(J)V
    .locals 1
    .param p1, "parameterWs"    # J

    .prologue
    .line 447
    iput-wide p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraWs:J

    .line 448
    return-void
.end method

.method public setRecv_pkt_max(I)V
    .locals 0
    .param p1, "recvpacketmax"    # I

    .prologue
    .line 403
    iput p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->recvPktMax:I

    .line 404
    return-void
.end method

.method public setSession_id(S)V
    .locals 0
    .param p1, "sessionIdPara"    # S

    .prologue
    .line 338
    iput-short p1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->sessionId:S

    .line 339
    return-void
.end method

.method public showLog()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 296
    const-string v0, "sessionId:"

    iget-short v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->sessionId:S

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 297
    const-string v0, "appidLen:"

    iget-char v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->appidLen:C

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 298
    const-string v0, "recvPktMax:"

    iget v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->recvPktMax:I

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 299
    const-string v0, "falpRecvmax:"

    iget-short v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->falpRecvmax:S

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 301
    const-string v0, "paraWs:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraWs:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 303
    const-string v0, "paraTdb:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdb:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 305
    const-string v0, "paraRs:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraRs:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 307
    const-string v0, "paraTde:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTde:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 309
    const-string v0, "paraTdf:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdf:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 310
    const-string v0, "paraTdg:"

    iget v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdg:I

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 312
    const-string v0, "paraTdh:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdh:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 314
    const-string v0, "paraTdi:"

    iget-wide v2, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdi:J

    long-to-int v1, v2

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 315
    const-string v0, "paraTddb:"

    iget v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddb:I

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 316
    const-string v0, "paraTdcc:"

    iget v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTdcc:I

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 317
    const-string v0, "paraTddc:"

    iget v1, p0, Lcom/felicanetworks/falp/HandshakeParameter;->paraTddc:I

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 318
    return-void
.end method
