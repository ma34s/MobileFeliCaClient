.class public Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
.super Ljava/lang/Object;
.source "BizResOptr.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/cmn/ResUtilListener;


# static fields
.field private static final AREA_PERMIT_EXPIRE:Ljava/lang/String; = "2"

.field private static final AREA_PERM_AREA_FORMAT_VERSIONUP:Ljava/lang/String; = "0"

.field private static final AREA_PROBLEM_LOG:Ljava/lang/String; = "3"

.field private static final AREA_SUFFIX:Ljava/lang/String; = ".bin"

.field private static final AREA_TAKE_OVER_PARAM:Ljava/lang/String; = "4"

.field private static final AREA_VERSIONUP:Ljava/lang/String; = "1"

.field private static final CODE_IN_EDIT:Ljava/lang/String;

.field private static final CODE_REFERENCE_POSSIBLE:Ljava/lang/String;

.field private static final INDEX_ADDTIONAL_INFORMATION:I = 0x1

.field private static final INDEX_EXPIRE_LIST:I = 0x137

.field private static final INDEX_EXPIRE_NUMBER:I = 0x9

.field private static final INDEX_EXPIRE_NUMBER_LIMIT:I = 0x1

.field private static final INDEX_EXPIRE_POINT:I = 0x34

.field private static final INDEX_EXPIRE_POINT_SIZE:I = 0x31

.field private static final INDEX_EXPIRE_TERM:I = 0x1d

.field private static final INDEX_LAST_START_DATE:I = 0x102

.field private static final INDEX_MGMTFLAG:I = 0x0

.field private static final INDEX_SERIAL_NUMBER_COUNT:I = 0x133

.field private static final INDEX_START_PARAM:I = 0x4

.field private static final INDEX_START_PARAM_SIZE:I = 0x1

.field private static final INDEX_UPDATE_DATE:I = 0x25

.field private static final INDEX_USED_DATE:I = 0x11

.field private static final INDEX_VERSIONUP_DATE:I = 0x1

.field private static final INDEX_VERSIONUP_NUMBER:I = 0x15

.field private static final INDEX_VERSIONUP_NUMBER_LIMIT:I = 0xd

.field private static final INDEX_VERSIONUP_REQ_DATE:I = 0x25

.field private static final INDEX_VERSIONUP_TERM:I = 0x1d

.field private static final LENGTH_ADDTIONAL_INFORMATION:I = 0x400

.field private static final LENGTH_EXPIRE_EDITFLAG:I = 0x1

.field private static final LENGTH_EXPIRE_LIST:I = 0x960

.field private static final LENGTH_EXPIRE_NUMBER:I = 0x8

.field private static final LENGTH_EXPIRE_NUMBER_LIMIT:I = 0x8

.field private static final LENGTH_EXPIRE_POINT:I = 0xff

.field private static final LENGTH_EXPIRE_POINT_SIZE:I = 0x3

.field private static final LENGTH_EXPIRE_TERM:I = 0x8

.field private static final LENGTH_LAST_START_DATE:I = 0xc

.field private static final LENGTH_MGMTFLAG:I = 0x1

.field private static final LENGTH_SERIAL_NUMBER:I = 0xc

.field private static final LENGTH_SERIAL_NUMBER_COUNT:I = 0x4

.field private static final LENGTH_START_PARAM:I = 0xfe

.field private static final LENGTH_START_PARAM_SIZE:I = 0x3

.field private static final LENGTH_TAKE_OVER_PARAM_EDITFLAG:I = 0x1

.field private static final LENGTH_UPDATE_DATE:I = 0xc

.field private static final LENGTH_USED_DATE:I = 0xc

.field private static final LENGTH_VERSIONUP_DATE:I = 0xc

.field private static final LENGTH_VERSIONUP_EDITFLAG:I = 0x1

.field private static final LENGTH_VERSIONUP_NUMBER:I = 0x8

.field private static final LENGTH_VERSIONUP_NUMBER_LIMIT:I = 0x8

.field private static final LENGTH_VERSIONUP_REQ_DATE:I = 0xc

.field private static final LENGTH_VERSIONUP_TERM:I = 0x8

.field public static final RESOURCE_PERMIT_EXPIRE:Ljava/lang/String; = "R101"

.field public static final RESOURCE_PERMIT_OFFLINE_UPDATE:Ljava/lang/String; = "R102"

.field public static final RESOURCE_PERM_AREA_FORMAT_VERSIONUP:Ljava/lang/String; = "R000"

.field public static final RESOURCE_PROBLEM_LOG:Ljava/lang/String; = "R201"

.field public static final RESOURCE_TAKE_OVER_PARAM:Ljava/lang/String; = "R301"

.field public static final RESOURCE_VERSIONUP:Ljava/lang/String; = "R001"

.field public static final RESOURCE_VERSIONUP_UPDATE:Ljava/lang/String; = "R002"

.field private static final SIZE_PERMIT_EXPIRE:I = 0xa97

.field private static final SIZE_PERM_AREA_FORMAT_VERSIONUP:I = 0x1

.field private static final SIZE_PROBLEM_LOG:I = 0x401

.field private static final SIZE_TAKE_OVER_PARAM:I = 0x10e

.field private static final SIZE_VERSIONUP:I = 0x31

.field private static final _bizResOptr:Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

.field private static sCacheFile:Ljava/io/File;

.field private static sbuffer:Ljava/io/ByteArrayOutputStream;

.field private static sremain:[B

.field private static swritePermitRvctionByte:[B


# instance fields
.field private isEditFlag:I

.field private listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

.field private mposInFile:J

.field private readData:[B

.field private resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field private tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x960

    const/4 v3, 0x1

    .line 245
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_REFERENCE_POSSIBLE:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    .line 252
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->_bizResOptr:Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    .line 277
    new-array v0, v4, [B

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->swritePermitRvctionByte:[B

    .line 283
    new-array v0, v4, [B

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sremain:[B

    .line 295
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    const-string v2, "2.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sCacheFile:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 267
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 315
    return-void
.end method

.method private chkIsBuffWrite(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 797
    .local v0, "isBuffWrite":Z
    const-string v1, "R001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "R002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 798
    const-string v1, "R101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "R102"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    const-string v1, "R301"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    :cond_0
    const/4 v0, 0x1

    .line 803
    :cond_1
    return v0
.end method

.method private clearArea(Ljava/lang/String;II)V
    .locals 1
    .param p1, "areaNumber"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "size"    # I

    .prologue
    .line 1162
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, p3, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    .line 1163
    return-void
.end method

.method private divide([BII)[B
    .locals 2
    .param p1, "target"    # [B
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 1467
    new-array v0, p3, [B

    .line 1468
    .local v0, "divided":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    return-object v0
.end method

.method private executeReadWrite()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 817
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;

    .line 820
    .local v2, "resOptrSetting":Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "resId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isRead()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 826
    const-string v3, "R000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    const-string v3, "0"

    invoke-static {v3, v5, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->readArea(Ljava/lang/String;IILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    const-string v3, "R001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "R002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 837
    :cond_2
    const-string v3, "1"

    const/16 v4, 0x31

    invoke-static {v3, v5, v4, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->readArea(Ljava/lang/String;IILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto :goto_0

    .line 841
    :cond_3
    const-string v3, "R101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 842
    const-string v3, "R102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 848
    :cond_4
    const-string v3, "2"

    iget-wide v4, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->mposInFile:J

    long-to-int v4, v4

    const/16 v5, 0xa97

    invoke-static {v3, v4, v5, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->readArea(Ljava/lang/String;IILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto :goto_0

    .line 853
    :cond_5
    const-string v3, "R201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 856
    const-string v3, "3"

    const/16 v4, 0x401

    invoke-static {v3, v5, v4, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->readArea(Ljava/lang/String;IILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto :goto_0

    .line 860
    :cond_6
    const-string v3, "R301"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    const-string v3, "4"

    const/16 v4, 0x10e

    invoke-static {v3, v5, v4, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->readArea(Ljava/lang/String;IILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto :goto_0

    .line 870
    :cond_7
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isBuffered()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 873
    const-string v3, "R001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 875
    iput v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 878
    const-string v3, "1"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v5, v4, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto :goto_0

    .line 882
    :cond_8
    const-string v3, "R002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 884
    iput v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 887
    const-string v3, "1"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v5, v4, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 891
    :cond_9
    const-string v3, "R101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 893
    iput v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 897
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .line 899
    .local v0, "resData":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    const-string v3, "2"

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getPosInFile()J

    move-result-wide v4

    long-to-int v4, v4

    .line 900
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 899
    invoke-static {v3, v4, v5, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 904
    .end local v0    # "resData":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    :cond_a
    const-string v3, "R102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 906
    iput v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 910
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .line 912
    .restart local v0    # "resData":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    const-string v3, "2"

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getPosInFile()J

    move-result-wide v4

    long-to-int v4, v4

    .line 913
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 912
    invoke-static {v3, v4, v5, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 917
    .end local v0    # "resData":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    :cond_b
    const-string v3, "R301"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    iput v6, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 922
    const-string v3, "4"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v5, v4, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 930
    :cond_c
    const-string v3, "R000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 932
    iput v5, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 934
    const-string v3, "0"

    .line 935
    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/Property;->PERM_AREA_FORMAT_VERSIONUP:[B

    .line 934
    invoke-static {v3, v5, v4, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 939
    :cond_d
    const-string v3, "R201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 941
    iput v5, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 943
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writePrblmAnalyze(Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;)V

    goto/16 :goto_0
.end method

.method private fixBytes([BI)[B
    .locals 1
    .param p1, "target"    # [B
    .param p2, "size"    # I

    .prologue
    .line 1193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BIB)[B

    move-result-object v0

    return-object v0
.end method

.method private fixBytes([BIB)[B
    .locals 4
    .param p1, "target"    # [B
    .param p2, "size"    # I
    .param p3, "paddingData"    # B

    .prologue
    const/4 v3, 0x0

    .line 1209
    new-array v0, p2, [B

    .line 1210
    .local v0, "fixed":[B
    array-length v2, p1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    array-length v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 1214
    return-object v0

    .line 1212
    :cond_0
    aput-byte p3, v0, v1

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private generateInt([BII)I
    .locals 1
    .param p1, "target"    # [B
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 1422
    invoke-direct {p0, p1, p2, p3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->divide([BII)[B

    move-result-object p1

    .line 1423
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isAllNull([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    const/4 v0, -0x1

    .line 1427
    :goto_0
    return v0

    .line 1426
    :cond_0
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->removeNull([B)[B

    move-result-object p1

    .line 1427
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private generatePrblmAnalyze([B)Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 4
    .param p1, "resourceData"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1379
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;-><init>()V

    .line 1380
    .local v0, "resource":Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;
    const-string v1, "R201"

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->setResId(Ljava/lang/String;)V

    .line 1381
    invoke-direct {p0, p1, v2, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->divide([BII)[B

    move-result-object v1

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->setMgmtFlag(I)V

    .line 1383
    const/16 v1, 0x400

    .line 1382
    invoke-direct {p0, p1, v3, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->setAddInfo(Ljava/lang/String;)V

    .line 1384
    return-object v0
.end method

.method private generateResDataPermitRvction([B)Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 11
    .param p1, "resourceData"    # [B

    .prologue
    .line 1252
    const/4 v8, 0x4

    const-string v9, "%s : resourceData=%s"

    const-string v10, "000"

    invoke-static {v8, v9, v10, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1253
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    aget-byte v8, p1, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 1255
    const/4 v8, 0x1

    const-string v9, "%s invalid edit flag"

    const-string v10, "800"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1256
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1259
    :cond_0
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    invoke-direct {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;-><init>()V

    .line 1260
    .local v3, "resource":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    const-string v8, "R101"

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setResId(Ljava/lang/String;)V

    .line 1262
    const/4 v8, 0x1

    const/16 v9, 0x8

    .line 1261
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNumLimit(I)V

    .line 1263
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNumLimit()I

    move-result v8

    const v9, 0x5f5e0ff

    if-le v8, v9, :cond_1

    .line 1265
    const/4 v8, 0x1

    const-string v9, "%s invalid rvction num limit"

    const-string v10, "801"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1266
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1268
    :cond_1
    const/16 v8, 0x9

    .line 1269
    const/16 v9, 0x8

    .line 1268
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNum(I)V

    .line 1271
    const/16 v8, 0x11

    const/16 v9, 0xc

    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUsedDate(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUsedDate()Ljava/lang/String;

    move-result-object v7

    .line 1273
    .local v7, "useddate":Ljava/lang/String;
    invoke-static {v7}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1275
    const/4 v8, 0x1

    const-string v9, "%s invalid used date"

    const-string v10, "812"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1276
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1279
    :cond_2
    const/16 v8, 0x1d

    .line 1280
    const/16 v9, 0x8

    .line 1279
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionTerm(I)V

    .line 1281
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionTerm()I

    move-result v8

    const v9, 0xa8c0

    if-le v8, v9, :cond_3

    .line 1283
    const/4 v8, 0x1

    const-string v9, "%s invalid rvction term"

    const-string v10, "802"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1284
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1286
    :cond_3
    const/16 v8, 0x25

    .line 1287
    const/16 v9, 0xc

    .line 1286
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUpdateDate(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "date":Ljava/lang/String;
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1291
    const/4 v8, 0x1

    const-string v9, "%s invalid date"

    const-string v10, "803"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1292
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1294
    :cond_4
    const/16 v8, 0x31

    .line 1295
    const/4 v9, 0x3

    .line 1294
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionPointSize(I)V

    .line 1296
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPointSize()I

    move-result v8

    const/16 v9, 0xff

    if-le v8, v9, :cond_5

    .line 1298
    const/4 v8, 0x1

    const-string v9, "%s invalid rvction point size"

    const-string v10, "804"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1299
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1301
    :cond_5
    const/16 v8, 0x34

    .line 1302
    const/16 v9, 0xff

    .line 1301
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionPoint(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPoint()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidURL(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1305
    const/4 v8, 0x1

    const-string v9, "%s invalid rvction point"

    const-string v10, "805"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1306
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1308
    :cond_6
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPointSize()I

    move-result v8

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPoint()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_7

    .line 1310
    const/4 v8, 0x1

    const-string v9, "%s rvction point size unmatch"

    const-string v10, "806"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1311
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1314
    :cond_7
    const/16 v8, 0x133

    .line 1315
    const/4 v9, 0x4

    .line 1314
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v6

    .line 1316
    .local v6, "serialNumberCount":I
    const/16 v8, 0xc8

    if-le v6, v8, :cond_8

    .line 1318
    const/4 v8, 0x1

    const-string v9, "%s invalid serial number size"

    const-string v10, "807"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1319
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1321
    :cond_8
    const/4 v8, -0x1

    if-eq v6, v8, :cond_f

    .line 1322
    invoke-virtual {v3, v6}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setSerialNumCount(I)V

    .line 1323
    new-array v4, v6, [Ljava/lang/String;

    .line 1324
    .local v4, "revocationList":[Ljava/lang/String;
    const/16 v8, 0x137

    .line 1325
    const/16 v9, 0x960

    .line 1324
    invoke-direct {p0, p1, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->divide([BII)[B

    move-result-object v5

    .line 1326
    .local v5, "revocationListData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_9

    .line 1347
    mul-int/lit8 v8, v6, 0xc

    rsub-int v2, v8, 0x960

    .line 1348
    .local v2, "remainLength":I
    if-lez v2, :cond_e

    .line 1350
    mul-int/lit8 v8, v6, 0xc

    .line 1351
    sget-object v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sremain:[B

    const/4 v10, 0x0

    .line 1350
    invoke-static {v5, v8, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    sget-object v8, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sremain:[B

    invoke-direct {p0, v8}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isAllNull([B)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1354
    const/4 v1, 0x0

    :goto_1
    sget-object v8, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sremain:[B

    array-length v8, v8

    if-lt v1, v8, :cond_d

    .line 1359
    const/4 v8, 0x1

    const-string v9, "%s invalid data(remain)"

    const-string v10, "811"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1360
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1328
    .end local v2    # "remainLength":I
    :cond_9
    mul-int/lit8 v8, v1, 0xc

    const/16 v9, 0xc

    .line 1327
    invoke-direct {p0, v5, v8, v9}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    .line 1329
    aget-object v8, v4, v1

    if-nez v8, :cond_a

    .line 1331
    const/4 v8, 0x1

    const-string v9, "%s invalid serial number(all 0x00)"

    const-string v10, "808"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1332
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1334
    :cond_a
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_b

    .line 1336
    const/4 v8, 0x1

    const-string v9, "%s invalid serial number(partial 0x00)"

    const-string v10, "809"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1337
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1339
    :cond_b
    aget-object v8, v4, v1

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecOrAlpha(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1341
    const/4 v8, 0x1

    const-string v9, "%s invalid serial number(invalid char)"

    const-string v10, "810"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1342
    new-instance v8, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v9, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    const-string v10, "generateResDataPermitRvction"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v8

    .line 1326
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1355
    .restart local v2    # "remainLength":I
    :cond_d
    sget-object v8, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sremain:[B

    const/4 v9, 0x0

    aput-byte v9, v8, v1

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1363
    :cond_e
    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionList([Ljava/lang/String;)V

    .line 1365
    .end local v1    # "i":I
    .end local v2    # "remainLength":I
    .end local v4    # "revocationList":[Ljava/lang/String;
    .end local v5    # "revocationListData":[B
    :cond_f
    const/4 v8, 0x4

    const-string v9, "%s"

    const-string v10, "999"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1366
    return-object v3
.end method

.method private generateResDataVerUpConfir([B)Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 4
    .param p1, "resourceData"    # [B

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0x8

    .line 1227
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;-><init>()V

    .line 1228
    .local v0, "resource":Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;
    const-string v1, "R001"

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->setResId(Ljava/lang/String;)V

    .line 1229
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->setVerUpConfirDate(Ljava/lang/String;)V

    .line 1231
    const/16 v1, 0xd

    invoke-direct {p0, p1, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->setOfflineVerNumLimit(I)V

    .line 1233
    const/16 v1, 0x15

    invoke-direct {p0, p1, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->setOfflineVerNum(I)V

    .line 1235
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->setOfflineVerData(I)V

    .line 1237
    const/16 v1, 0x25

    invoke-direct {p0, p1, v1, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->setOfflineVerUpReqDate(Ljava/lang/String;)V

    .line 1239
    return-object v0
.end method

.method private generateStartParam([B)Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 3
    .param p1, "resourceData"    # [B

    .prologue
    .line 1397
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;-><init>()V

    .line 1398
    .local v0, "resource":Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;
    const-string v1, "R301"

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->setResId(Ljava/lang/String;)V

    .line 1399
    const/4 v1, 0x1

    .line 1400
    const/4 v2, 0x3

    .line 1399
    invoke-direct {p0, p1, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateInt([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->setStartParamSize(I)V

    .line 1401
    const/4 v1, 0x4

    .line 1402
    const/16 v2, 0xfe

    .line 1401
    invoke-direct {p0, p1, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->setStartParam(Ljava/lang/String;)V

    .line 1403
    const/16 v1, 0x102

    .line 1404
    const/16 v2, 0xc

    .line 1403
    invoke-direct {p0, p1, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->setBeforeStartDate(Ljava/lang/String;)V

    .line 1405
    return-object v0
.end method

.method private generateString([BII)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # [B
    .param p2, "position"    # I
    .param p3, "length"    # I

    .prologue
    .line 1445
    invoke-direct {p0, p1, p2, p3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->divide([BII)[B

    move-result-object p1

    .line 1446
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isAllNull([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x0

    .line 1451
    :goto_0
    return-object v0

    .line 1450
    :cond_0
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->removeNull([B)[B

    move-result-object p1

    .line 1451
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->_bizResOptr:Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    return-object v0
.end method

.method private isAllNull([B)Z
    .locals 2
    .param p1, "target"    # [B

    .prologue
    .line 1481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1486
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1482
    :cond_0
    aget-byte v1, p1, v0

    if-eqz v1, :cond_1

    .line 1483
    const/4 v1, 0x0

    goto :goto_1

    .line 1481
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeNull([B)[B
    .locals 4
    .param p1, "target"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v1, p1

    .line 1507
    :goto_1
    return-object v1

    .line 1501
    :cond_0
    aget-byte v2, p1, v0

    if-nez v2, :cond_1

    .line 1502
    new-array v1, v0, [B

    .line 1503
    .local v1, "removed":[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1500
    .end local v1    # "removed":[B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toValueByte(II)[B
    .locals 2
    .param p1, "number"    # I
    .param p2, "length"    # I

    .prologue
    .line 1177
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "strNumber":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->zeroPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private writeArea(Ljava/lang/String;I[B)V
    .locals 1
    .param p1, "areaNumber"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1147
    array-length v0, p3

    invoke-static {p1, p2, p3, v0, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    .line 1148
    return-void
.end method

.method private writeOfflinePermitRvction(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V
    .locals 7
    .param p1, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .prologue
    .line 1063
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNum()I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v0

    .line 1065
    .local v0, "number":[B
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUsedDate()Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "usedDate":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1068
    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1069
    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getPosInFile()J

    move-result-wide v2

    .line 1075
    .local v2, "position":J
    const-string v4, "2"

    long-to-int v5, v2

    add-int/lit8 v5, v5, 0x9

    .line 1076
    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 1075
    invoke-direct {p0, v4, v5, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeArea(Ljava/lang/String;I[B)V

    .line 1077
    return-void

    .line 1070
    .end local v2    # "position":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private writeOfflineVerUp(Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;)V
    .locals 3
    .param p1, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;

    .prologue
    .line 990
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->getOfflineVerNum()I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v0

    .line 991
    .local v0, "number":[B
    const-string v1, "1"

    const/16 v2, 0x15

    invoke-direct {p0, v1, v2, v0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeArea(Ljava/lang/String;I[B)V

    .line 992
    return-void
.end method

.method private writePermitRvction(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V
    .locals 18
    .param p1, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .prologue
    .line 1003
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNumLimit()I

    move-result v3

    .line 1004
    .local v3, "limit":I
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNum()I

    move-result v4

    .line 1005
    .local v4, "number":I
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUsedDate()Ljava/lang/String;

    move-result-object v13

    .line 1006
    .local v13, "usedDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionTerm()I

    move-result v11

    .line 1007
    .local v11, "term":I
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUpdateDate()Ljava/lang/String;

    move-result-object v12

    .line 1008
    .local v12, "updateDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPointSize()I

    move-result v9

    .line 1009
    .local v9, "revocationPointSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPoint()Ljava/lang/String;

    move-result-object v8

    .line 1010
    .local v8, "revocationPoint":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getSerialNumCount()I

    move-result v10

    .line 1011
    .local v10, "serialNumberCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionList()[Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, "revocationList":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getPosInFile()J

    move-result-wide v6

    .line 1014
    .local v6, "position":J
    const/4 v14, -0x1

    if-eq v3, v14, :cond_0

    const/4 v14, -0x1

    if-eq v4, v14, :cond_0

    if-eqz v13, :cond_0

    .line 1015
    const/4 v14, -0x1

    if-eq v11, v14, :cond_0

    if-eqz v12, :cond_0

    const/4 v14, -0x1

    if-eq v9, v14, :cond_0

    .line 1016
    if-eqz v8, :cond_0

    const/4 v14, -0x1

    if-ne v10, v14, :cond_1

    .line 1020
    :cond_0
    const-string v14, "2"

    long-to-int v15, v6

    add-int/lit8 v15, v15, 0x1

    .line 1021
    const/16 v16, 0xa96

    .line 1020
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->clearArea(Ljava/lang/String;II)V

    .line 1053
    :goto_0
    return-void

    .line 1025
    :cond_1
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1027
    :try_start_0
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1028
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1029
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1030
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1031
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1032
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1033
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1034
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1035
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v14, v5

    if-lt v2, v14, :cond_2

    .line 1041
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    sget-object v15, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->swritePermitRvctionByte:[B

    const/16 v16, 0x0

    .line 1042
    array-length v0, v5

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    rsub-int v0, v0, 0x960

    move/from16 v17, v0

    .line 1041
    invoke-virtual/range {v14 .. v17}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v2    # "i":I
    :goto_2
    const-string v14, "2"

    long-to-int v15, v6

    add-int/lit8 v15, v15, 0x1

    .line 1050
    sget-object v16, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 1049
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeArea(Ljava/lang/String;I[B)V

    goto/16 :goto_0

    .line 1036
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    sget-object v14, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    aget-object v15, v5, v2

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1044
    .end local v2    # "i":I
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method private writePrblmAnalyze(Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;)V
    .locals 7
    .param p1, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;

    .prologue
    const/4 v6, 0x0

    .line 1088
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->getMgmtFlag()I

    move-result v1

    .line 1089
    .local v1, "managementFlag":I
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->getAddInfo()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "addInfomation":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 1092
    :cond_0
    const-string v2, "3"

    const/16 v3, 0x401

    invoke-direct {p0, v2, v6, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->clearArea(Ljava/lang/String;II)V

    .line 1104
    :goto_0
    return-void

    .line 1095
    :cond_1
    sget-object v2, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1097
    :try_start_0
    sget-object v2, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1098
    sget-object v2, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x400

    .line 1099
    const/16 v5, 0x20

    .line 1098
    invoke-direct {p0, v3, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BIB)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :goto_1
    const-string v2, "3"

    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v2, v6, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeArea(Ljava/lang/String;I[B)V

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private writeStartParam(Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;)V
    .locals 7
    .param p1, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;

    .prologue
    const/4 v6, 0x1

    .line 1115
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->getStartParamSize()I

    move-result v0

    .line 1116
    .local v0, "paramSize":I
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->getStartParam()Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, "startParam":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->getBeforeStartDate()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "startDate":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 1120
    :cond_0
    const-string v3, "4"

    const/16 v4, 0x10d

    invoke-direct {p0, v3, v6, v4}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->clearArea(Ljava/lang/String;II)V

    .line 1133
    :goto_0
    return-void

    .line 1124
    :cond_1
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1126
    :try_start_0
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x3

    invoke-direct {p0, v0, v4}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1127
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0xfe

    invoke-direct {p0, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1128
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0xc

    invoke-direct {p0, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :goto_1
    const-string v3, "4"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {p0, v3, v6, v4}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeArea(Ljava/lang/String;I[B)V

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeVerUpConfir(Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;)V
    .locals 9
    .param p1, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 958
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->getVerUpConfirDate()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "confirmDate":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->getOfflineVerNumLimit()I

    move-result v2

    .line 960
    .local v2, "limit":I
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->getOfflineVerNum()I

    move-result v3

    .line 961
    .local v3, "number":I
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->getOfflineVerData()I

    move-result v1

    .line 962
    .local v1, "data":I
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->getOfflineVerUpReqDate()Ljava/lang/String;

    move-result-object v4

    .line 964
    .local v4, "requestDate":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v1, v5, :cond_0

    if-nez v4, :cond_1

    .line 965
    :cond_0
    const-string v5, "1"

    const/16 v6, 0x30

    invoke-direct {p0, v5, v8, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->clearArea(Ljava/lang/String;II)V

    .line 980
    :goto_0
    return-void

    .line 969
    :cond_1
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 971
    :try_start_0
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0xc

    invoke-direct {p0, v6, v7}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 972
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x8

    invoke-direct {p0, v2, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 973
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x8

    invoke-direct {p0, v3, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 974
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x8

    invoke-direct {p0, v1, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->toValueByte(II)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 975
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0xc

    invoke-direct {p0, v6, v7}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->fixBytes([BI)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_1
    const-string v5, "1"

    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sbuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, v5, v8, v6}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeArea(Ljava/lang/String;I[B)V

    goto :goto_0

    .line 976
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getReadData(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 459
    .local v0, "resData":Lcom/felicanetworks/mfw/i/fbl/ResData;
    const-string v1, "R001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "R002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateResDataVerUpConfir([B)Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v0

    .line 481
    :cond_1
    :goto_0
    return-object v0

    .line 464
    :cond_2
    const-string v1, "R101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "R102"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateResDataPermitRvction([B)Lcom/felicanetworks/mfw/i/fbl/ResData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_4
    const-string v1, "R201"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 474
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generatePrblmAnalyze([B)Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v0

    .line 477
    goto :goto_0

    :cond_5
    const-string v1, "R301"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateStartParam([B)Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRvctionUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 494
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    array-length v1, v1

    const/16 v2, 0xa97

    if-ne v1, v2, :cond_0

    .line 495
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    const/16 v2, 0x34

    const/16 v3, 0xff

    invoke-direct {p0, v1, v2, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRvctionUsedDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 510
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    array-length v1, v1

    const/16 v2, 0xa97

    if-ne v1, v2, :cond_0

    .line 511
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    const/16 v2, 0x11

    const/16 v3, 0xc

    invoke-direct {p0, v1, v2, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->generateString([BII)Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 339
    const-string v1, "R000"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setReadInfo(Ljava/lang/String;J)V

    .line 340
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->startReadWrite()V

    .line 343
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 346
    .local v0, "permArea":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/felicanetworks/mfw/i/fbl/Property;->PERM_AREA_FORMAT_VERSIONUP:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    :try_start_0
    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->sCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    const-string v1, "R000"

    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/ResData;

    invoke-direct {v2}, Lcom/felicanetworks/mfw/i/fbl/ResData;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setWriteInfo(Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/ResData;)V

    .line 356
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->startReadWrite()V

    .line 358
    :cond_0
    return-void

    .line 351
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resUtilReadArea([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 568
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;

    .line 570
    .local v2, "resOptrSetting":Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "id":Ljava/lang/String;
    const-string v3, "R000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    .line 579
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 582
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->executeReadWrite()V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const-string v3, "R001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "R002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 594
    const-string v3, "R101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "R102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 595
    const-string v3, "R301"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 598
    :cond_2
    new-instance v0, Ljava/lang/String;

    new-array v3, v6, [B

    aget-byte v4, p1, v5

    aput-byte v4, v3, v5

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 601
    .local v0, "editFlag":Ljava/lang/String;
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_REFERENCE_POSSIBLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 604
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    .line 607
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 610
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;->read(Ljava/lang/String;I)V

    .line 613
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_3

    .line 615
    iput-object v7, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    goto :goto_0

    .line 618
    :cond_3
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->executeReadWrite()V

    goto :goto_0

    .line 621
    :cond_4
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_IN_EDIT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 628
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;->read(Ljava/lang/String;I)V

    .line 631
    iput-object v7, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    goto :goto_0

    .line 639
    .end local v0    # "editFlag":Ljava/lang/String;
    :cond_5
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->readData:[B

    .line 642
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 645
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;->read(Ljava/lang/String;I)V

    .line 648
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_6

    .line 650
    iput-object v7, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    goto/16 :goto_0

    .line 653
    :cond_6
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->executeReadWrite()V

    goto/16 :goto_0
.end method

.method public resUtilWriteArea()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 668
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;

    .line 670
    .local v2, "resOptrSetting":Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "id":Ljava/lang/String;
    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    if-nez v3, :cond_3

    .line 676
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->remove(I)V

    .line 679
    const-string v3, "R000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;->write(Ljava/lang/String;I)V

    .line 686
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_2

    .line 688
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    goto :goto_0

    .line 691
    :cond_2
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->executeReadWrite()V

    goto :goto_0

    .line 695
    :cond_3
    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    if-ne v3, v6, :cond_8

    .line 697
    iput v4, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 700
    const-string v3, "R001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeVerUpConfir(Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;)V

    goto :goto_0

    .line 706
    :cond_4
    const-string v3, "R002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 709
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeOfflineVerUp(Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;)V

    goto :goto_0

    .line 712
    :cond_5
    const-string v3, "R101"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 715
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writePermitRvction(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V

    goto :goto_0

    .line 718
    :cond_6
    const-string v3, "R102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 721
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeOfflinePermitRvction(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V

    goto :goto_0

    .line 724
    :cond_7
    const-string v3, "R301"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->writeStartParam(Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;)V

    goto :goto_0

    .line 731
    :cond_8
    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    if-ne v3, v4, :cond_0

    .line 733
    iput v5, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->isEditFlag:I

    .line 737
    const-string v3, "R001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "R002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 740
    :cond_9
    const-string v3, "1"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_REFERENCE_POSSIBLE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v5, v4, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 746
    :cond_a
    const-string v3, "R101"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "R102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 750
    :cond_b
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .line 752
    .local v1, "resData":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    const-string v3, "2"

    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getPosInFile()J

    move-result-wide v4

    long-to-int v4, v4

    .line 753
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_REFERENCE_POSSIBLE:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 752
    invoke-static {v3, v4, v5, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0

    .line 758
    .end local v1    # "resData":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    :cond_c
    const-string v3, "R301"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 761
    const-string v3, "4"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->CODE_REFERENCE_POSSIBLE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v5, v4, v6, p0}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V

    goto/16 :goto_0
.end method

.method public setListener(Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->listener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    .line 372
    return-void
.end method

.method public setReadInfo(Ljava/lang/String;J)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "posInFile"    # J

    .prologue
    .line 424
    iput-wide p2, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->mposInFile:J

    .line 429
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;-><init>()V

    .line 432
    .local v0, "resOptrSetting":Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->setId(Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->setRead(Z)V

    .line 438
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v1, v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method public setWriteInfo(Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/ResData;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "writeData"    # Lcom/felicanetworks/mfw/i/fbl/ResData;

    .prologue
    .line 389
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;

    invoke-direct {v1}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;-><init>()V

    .line 392
    .local v1, "resOptrSetting":Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;
    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->setId(Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->setRead(Z)V

    .line 398
    invoke-virtual {v1, p2}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->setResData(Lcom/felicanetworks/mfw/i/fbl/ResData;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->chkIsBuffWrite(Ljava/lang/String;)Z

    move-result v0

    .line 404
    .local v0, "isBuffWrite":Z
    invoke-virtual {v1, v0}, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->setBuffered(Z)V

    .line 407
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public startReadWrite()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->clear()V

    .line 538
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->tempResOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->addAllList(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)V

    .line 543
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->resOptrSettingList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->clear()V

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->executeReadWrite()V

    .line 548
    return-void
.end method
