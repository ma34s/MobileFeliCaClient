.class public Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;
.super Ljava/lang/Object;
.source "BizNwConOptr.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;


# static fields
.field private static final CONTENT_TYPE_COMMAND_DATA:Ljava/lang/String; = "application/vnd.fn-command-data"

.field private static final CONTENT_TYPE_PERMIT_EXPIRE:Ljava/lang/String; = "application/vnd.fn-revocation"

.field private static final CONTENT_TYPE_VERSION_UP:Ljava/lang/String; = "application/vnd.fn-version"

.field public static final IF_AUTHENT:Ljava/lang/String; = "I009"

.field public static final IF_COMMAND_DATA:Ljava/lang/String; = "I007"

.field public static final IF_CONFIRM_PERMIT_EXPIRE:Ljava/lang/String; = "I003"

.field public static final IF_CONFIRM_VERSIONUP:Ljava/lang/String; = "I001"

.field public static final IF_PROC_RSLT_QUES:Ljava/lang/String; = "I011"

.field public static final IF_RESOURCE_PROBLEM_LOG:Ljava/lang/String; = "I005"

.field private static final URL_PRBLM_ANALYZE_LOG_SEND:Ljava/lang/String; = "http://ots.fnrt.jp/~testuser2/site/command/debuglog.php"

.field private static final URL_VERUP_CONFIR_REQ:Ljava/lang/String; = "http://ots.fnrt.jp/~testuser2/site/command/verup.php"


# instance fields
.field private listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

.field private nwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field private respData:Lcom/felicanetworks/mfw/i/cmn/RespData;

.field private tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->nwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 87
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 38
    return-void
.end method

.method private chkContentType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "I001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "application/vnd.fn-version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    const/16 v0, 0x1f54

    .line 355
    :goto_0
    return v0

    .line 343
    :cond_0
    const-string v0, "I003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "application/vnd.fn-revocation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    const/16 v0, 0x1f55

    goto :goto_0

    .line 349
    :cond_1
    const-string v0, "I007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    const-string v0, "application/vnd.fn-command-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    const/16 v0, 0x1f57

    goto :goto_0

    .line 355
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeCommunication()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 378
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;

    .line 380
    .local v2, "nwConOptrSetting":Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->getId()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    const-string v3, "I001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "I003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    :cond_0
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->get(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;)V

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    const-string v3, "I005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "I007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 395
    const-string v3, "I009"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "I011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    :cond_3
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->post(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 409
    const-string v3, "failed to encode."

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 412
    const-string v3, "I001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f4a

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    .line 462
    :cond_4
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    goto :goto_0

    .line 416
    :cond_5
    const-string v3, "I003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f4b

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 420
    :cond_6
    const-string v3, "I005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 421
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f4c

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 424
    :cond_7
    const-string v3, "I007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 425
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f4d

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 428
    :cond_8
    const-string v3, "I009"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 429
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f4e

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 432
    :cond_9
    const-string v3, "I011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 433
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f4f

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 437
    :cond_a
    const-string v3, "I001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 438
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f40

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 441
    :cond_b
    const-string v3, "I003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 442
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f41

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 445
    :cond_c
    const-string v3, "I005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 446
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f42

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 449
    :cond_d
    const-string v3, "I007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 450
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f43

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 453
    :cond_e
    const-string v3, "I009"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 454
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f44

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 457
    :cond_f
    const-string v3, "I011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f45

    invoke-interface {v3, v1, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getRespData()Lcom/felicanetworks/mfw/i/cmn/RespData;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->respData:Lcom/felicanetworks/mfw/i/cmn/RespData;

    return-object v0
.end method

.method public setListener(Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    .line 220
    return-void
.end method

.method public setRequestInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sendData"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "I001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "http://ots.fnrt.jp/~testuser2/site/command/verup.php"

    invoke-virtual {p0, p1, p2, v0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->setRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "I005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "http://ots.fnrt.jp/~testuser2/site/command/debuglog.php"

    invoke-virtual {p0, p1, p2, v0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->setRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sendData"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;-><init>()V

    .line 184
    .local v0, "nwConOptrSetting":Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->setId(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p2}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->setData(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p3}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->setUrl(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->nwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v1, v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public startCommunication()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->nwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->nwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->addAllList(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)V

    .line 128
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->nwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->clear()V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->executeCommunication()V

    .line 133
    return-void
.end method

.method public webUtilExpired(Lcom/felicanetworks/mfw/i/cmn/RespData;)V
    .locals 7
    .param p1, "respData"    # Lcom/felicanetworks/mfw/i/cmn/RespData;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 244
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;

    .line 246
    .local v1, "nwConOptrSetting":Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/NwConOptrSetting;->getId()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "id":Ljava/lang/String;
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->respData:Lcom/felicanetworks/mfw/i/cmn/RespData;

    .line 252
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->respData:Lcom/felicanetworks/mfw/i/cmn/RespData;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/RespData;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 255
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->respData:Lcom/felicanetworks/mfw/i/cmn/RespData;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/RespData;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->chkContentType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 258
    .local v2, "result":I
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 261
    if-nez v2, :cond_1

    .line 263
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    invoke-interface {v3, v0, v5}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    .line 266
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 268
    iput-object v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    .line 313
    .end local v2    # "result":I
    :goto_0
    return-void

    .line 271
    .restart local v2    # "result":I
    :cond_0
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->executeCommunication()V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    invoke-interface {v3, v0, v2}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    .line 277
    iput-object v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    goto :goto_0

    .line 283
    .end local v2    # "result":I
    :cond_2
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->tempNwConOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 286
    const-string v3, "I001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f40

    invoke-interface {v3, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    .line 311
    :cond_3
    :goto_1
    iput-object v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    goto :goto_0

    .line 290
    :cond_4
    const-string v3, "I003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 291
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f41

    invoke-interface {v3, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 294
    :cond_5
    const-string v3, "I005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 295
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f42

    invoke-interface {v3, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 298
    :cond_6
    const-string v3, "I007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 299
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f43

    invoke-interface {v3, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 302
    :cond_7
    const-string v3, "I009"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 303
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f44

    invoke-interface {v3, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1

    .line 306
    :cond_8
    const-string v3, "I011"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    const/16 v4, 0x1f45

    invoke-interface {v3, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;->communicate(Ljava/lang/String;I)V

    goto :goto_1
.end method
