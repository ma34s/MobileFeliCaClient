.class public Lcom/felicanetworks/mfc/AccessRightChecker;
.super Ljava/lang/Object;
.source "AccessRightChecker.java"


# static fields
.field public static final CATEGORY_OFFLINE_ACCESS:I = 0x1

.field private static final CATEGORY_OFFLINE_ACCESS_ATTRIBUTE:I = 0x1

.field public static final CATEGORY_ONLINE_ACCESS:I = 0x2

.field private static final CATEGORY_ONLINE_ACCESS_ATTRIBUTE:I = 0x2

.field public static final CATEGORY_PRIVILEGED_ACCESS_1:I = 0x4

.field private static final CATEGORY_PRIVILEGED_ACCESS_1_ATTRIBUTE:I = 0x1

.field public static final CATEGORY_PRIVILEGED_ACCESS_2:I = 0x5

.field private static final CATEGORY_PRIVILEGED_ACCESS_2_ATTRIBUTE:I = 0x2

.field public static final CATEGORY_RW_ACCESS:I = 0x3

.field private static final CATEGORY_RW_ACCESS_ATTRIBUTE:I = 0x4

.field private static final MAX_VALUE_NODE_CODE:J = 0xffffffffL

.field private static final WILD_CARD_SYSTEM_CODE:I = 0xffff

.field private static sofflineAccessTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/AccessRightChecker;->sofflineAccessTargetList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(ILcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 12
    .param p0, "category"    # I
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x7

    const/16 v9, 0x26

    const/16 v8, 0xc

    const/4 v7, 0x1

    .line 120
    const/4 v3, 0x4

    const-string v4, "%s In type = %s : permit = %s"

    const-string v5, "000"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string v3, "%s permit data is null."

    const-string v4, "800"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 137
    :cond_0
    const-string v3, "0002"

    invoke-virtual {p1, v3}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;

    .line 142
    .local v2, "felicaAccessData":Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    packed-switch p0, :pswitch_data_0

    .line 212
    const-string v3, "%s type is unknow"

    const-string v4, "806"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 215
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 144
    :pswitch_0
    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v10, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOrdinaryCommandCategory()[B

    move-result-object v1

    .line 146
    .local v1, "commandCategory":[B
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "checkCategory":I
    and-int/lit8 v3, v0, 0x1

    if-eq v3, v7, :cond_1

    .line 148
    const-string v3, "%s category != CATEGORY_OFFLINE_ACCESS_ATTRIBUTE"

    const-string v4, "801"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 157
    .end local v0    # "checkCategory":I
    .end local v1    # "commandCategory":[B
    :pswitch_1
    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v10, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOrdinaryCommandCategory()[B

    move-result-object v1

    .line 159
    .restart local v1    # "commandCategory":[B
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .restart local v0    # "checkCategory":I
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 161
    const-string v3, "%s category != CATEGORY_ONLINE_ACCESS_ATTRIBUTE"

    const-string v4, "802"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 170
    .end local v0    # "checkCategory":I
    .end local v1    # "commandCategory":[B
    :pswitch_2
    const-string v3, "%s"

    const-string v4, "003"

    invoke-static {v10, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOrdinaryCommandCategory()[B

    move-result-object v1

    .line 172
    .restart local v1    # "commandCategory":[B
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .restart local v0    # "checkCategory":I
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 174
    const-string v3, "%s category != CATEGORY_RW_ACCESS_ATTRIBUTE"

    const-string v4, "803"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 183
    .end local v0    # "checkCategory":I
    .end local v1    # "commandCategory":[B
    :pswitch_3
    const-string v3, "%s"

    const-string v4, "004"

    invoke-static {v10, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getPrivilegedCommandCategory()[B

    move-result-object v1

    .line 185
    .restart local v1    # "commandCategory":[B
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .restart local v0    # "checkCategory":I
    and-int/lit8 v3, v0, 0x1

    if-eq v3, v7, :cond_1

    .line 187
    const-string v3, "%s category != CATEGORY_PRIVILEGED_ACCESS_1_ATTRIBUTE"

    .line 188
    const-string v4, "804"

    .line 187
    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 197
    .end local v0    # "checkCategory":I
    .end local v1    # "commandCategory":[B
    :pswitch_4
    const-string v3, "%s"

    const-string v4, "005"

    invoke-static {v10, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getPrivilegedCommandCategory()[B

    move-result-object v1

    .line 199
    .restart local v1    # "commandCategory":[B
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 200
    .restart local v0    # "checkCategory":I
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 201
    const-string v3, "%s category != CATEGORY_PRIVILEGED_ACCESS_1_ATTRIBUTE"

    .line 202
    const-string v4, "805"

    .line 201
    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 205
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v3, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 219
    :cond_1
    const/4 v3, 0x4

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 220
    return-void

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static checkNodeCodeList(I[ILcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 22
    .param p0, "currentSystemCode"    # I
    .param p1, "nodeCodeList"    # [I
    .param p2, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v2, 0x4

    const-string v3, "%s In currentSystemCode = %s : nodeCodeList = %s : permit = %s"

    .line 314
    const-string v4, "000"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 313
    invoke-static/range {v2 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    const-string v2, "0002"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v11

    check-cast v11, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;

    .line 318
    .local v11, "felicaAccessData":Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    invoke-virtual {v11}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetSize()I

    move-result v17

    .line 323
    .local v17, "targetSize":I
    sget-object v2, Lcom/felicanetworks/mfc/AccessRightChecker;->sofflineAccessTargetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 326
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 336
    sget-object v2, Lcom/felicanetworks/mfc/AccessRightChecker;->sofflineAccessTargetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 337
    const/4 v2, 0x1

    const-string v3, "%s "

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 339
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0xc

    .line 340
    const/16 v4, 0x32

    .line 339
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 327
    :cond_0
    invoke-virtual {v11, v12}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOfflineAccessTarget(I)Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    move-result-object v16

    .line 328
    .local v16, "offlineAccessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    invoke-virtual/range {v16 .. v16}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getSystemCode()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 329
    .local v10, "checkSystemCode":I
    move/from16 v0, p0

    if-eq v0, v10, :cond_1

    .line 330
    const v2, 0xffff

    if-ne v2, v10, :cond_2

    .line 331
    :cond_1
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 332
    sget-object v2, Lcom/felicanetworks/mfc/AccessRightChecker;->sofflineAccessTargetList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 343
    .end local v10    # "checkSystemCode":I
    .end local v16    # "offlineAccessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    :cond_3
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_4

    .line 372
    const/4 v2, 0x4

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 373
    return-void

    .line 343
    :cond_4
    aget v13, p1, v2

    .line 344
    .local v13, "nodeCode":I
    const/4 v9, 0x0

    .line 346
    .local v9, "canAccess":Z
    sget-object v4, Lcom/felicanetworks/mfc/AccessRightChecker;->sofflineAccessTargetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 365
    :goto_2
    if-nez v9, :cond_9

    .line 366
    const/4 v2, 0x1

    const-string v3, "%s "

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 368
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0xc

    .line 369
    const/16 v4, 0x20

    .line 368
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 346
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    .line 347
    .local v8, "accessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v8}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeSize()I

    move-result v5

    if-lt v12, v5, :cond_7

    .line 360
    :goto_4
    if-eqz v9, :cond_5

    .line 361
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "003"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 350
    :cond_7
    invoke-virtual {v8, v12}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getNodeCodeRange(I)Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->getLowerNode()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 349
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    .line 352
    .local v14, "lowerNodeCode":J
    invoke-virtual {v8, v12}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getNodeCodeRange(I)Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    move-result-object v5

    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->getUpperNode()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 351
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    .line 353
    .local v18, "upperNodeCode":J
    int-to-long v6, v13

    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    cmp-long v5, v14, v6

    if-gtz v5, :cond_8

    .line 354
    int-to-long v6, v13

    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    cmp-long v5, v6, v18

    if-gtz v5, :cond_8

    .line 355
    const/4 v5, 0x7

    const-string v6, "%s"

    const-string v7, "002"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 356
    const/4 v9, 0x1

    .line 357
    goto :goto_4

    .line 347
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 343
    .end local v8    # "accessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    .end local v14    # "lowerNodeCode":J
    .end local v18    # "upperNodeCode":J
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static checkSystemCode(ILcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 9
    .param p0, "systemCode"    # I
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 253
    const-string v5, "%s In systemCode = %s : permit = %s"

    const-string v6, "000"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v5, v6, v7, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    const-string v5, "0002"

    invoke-virtual {p1, v5}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;

    .line 257
    .local v1, "felicaAccessData":Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetSize()I

    move-result v4

    .line 261
    .local v4, "targetSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 269
    const/4 v5, 0x1

    const-string v6, "%s "

    const-string v7, "800"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 270
    new-instance v5, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v6, 0xc

    .line 271
    const/16 v7, 0x32

    .line 270
    invoke-direct {v5, v6, v7}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v5

    .line 262
    :cond_0
    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOfflineAccessTarget(I)Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    move-result-object v3

    .line 263
    .local v3, "offlineAccessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getSystemCode()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, "checkSystemCode":I
    const v5, 0xffff

    if-eq v0, v5, :cond_1

    if-ne v0, p0, :cond_2

    .line 265
    :cond_1
    const-string v5, "%s"

    const-string v6, "999"

    invoke-static {v8, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 266
    return-void

    .line 261
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
