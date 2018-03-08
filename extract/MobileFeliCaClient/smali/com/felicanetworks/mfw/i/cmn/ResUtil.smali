.class public Lcom/felicanetworks/mfw/i/cmn/ResUtil;
.super Ljava/lang/Object;
.source "ResUtil.java"


# static fields
.field private static final AREA_SIZE:[I

.field private static final AREA_SUFFIX:Ljava/lang/String; = ".bin"

.field private static final EOF:I = -0x1

.field public static final FILE_CREATION_FAIL:Ljava/lang/String; = "file creation failed."

.field private static stmp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    .line 48
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    new-array v0, v0, [B

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->stmp:[B

    return-void

    .line 36
    :array_0
    .array-data 4
        0x1
        0x31
        0x69e6
        0x401
        0x10e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAreaCount()I
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    array-length v0, v0

    return v0
.end method

.method public static getAreaSize(Ljava/lang/String;)I
    .locals 5
    .param p0, "areaNumber"    # Ljava/lang/String;

    .prologue
    .line 413
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 415
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Illegal argument."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [areaNumber = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v3, "getAreaSize"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 422
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget v1, v1, v2

    return v1
.end method

.method public static readArea(Ljava/lang/String;IILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V
    .locals 19
    .param p0, "areaNumber"    # Ljava/lang/String;
    .param p1, "position"    # I
    .param p2, "length"    # I
    .param p3, "listener"    # Lcom/felicanetworks/mfw/i/cmn/ResUtilListener;

    .prologue
    .line 77
    const/4 v4, 0x4

    const-string v5, "%s : areaNumber = %s, position = %d, length = %d, listener = %s"

    .line 78
    const-string v6, "000"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v7, p0

    move-object/from16 v10, p3

    .line 77
    invoke-static/range {v4 .. v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    .line 80
    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    if-nez v4, :cond_1

    .line 82
    :cond_0
    const/4 v4, 0x1

    .line 83
    const-string v5, "800 areaNumber = %s, position = %d, length = %d, listener = %s, FILE_DIR = %s"

    .line 84
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v10, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    move-object/from16 v6, p0

    move-object/from16 v9, p3

    .line 81
    invoke-static/range {v4 .. v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v11, "buf":Ljava/lang/StringBuffer;
    const-string v4, "Illegal argument."

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [areaNumber = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", position = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", length = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", listener = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", FILE_DIR = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v5, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v6, "readArea"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 95
    .end local v11    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    add-int v4, p1, p2

    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget v5, v5, v6

    if-le v4, v5, :cond_2

    .line 96
    const/4 v4, 0x1

    const-string v5, "801 areaNumber = %s, position = %d, length = %d"

    .line 97
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 96
    move-object/from16 v0, p0

    invoke-static {v4, v5, v0, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v5, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v6, "readArea"

    const-string v7, "out of bound"

    invoke-direct {v4, v5, v6, v7}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_2
    move/from16 v0, p2

    new-array v12, v0, [B

    .line 102
    .local v12, "data":[B
    new-instance v15, Ljava/io/File;

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v15, "file":Ljava/io/File;
    const/16 v18, 0x0

    .line 107
    .local v18, "readSum":I
    :try_start_0
    new-instance v16, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v16, "randomAccess":Ljava/io/RandomAccessFile;
    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    :goto_0
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 117
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 120
    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 121
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "002"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v16    # "randomAccess":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v13

    .line 128
    .local v13, "e":Ljava/lang/Exception;
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "003"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 133
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "004"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 136
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "005"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :catch_1
    move-exception v14

    .line 142
    .local v14, "e1":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "%s Exception:%s"

    const-string v6, "803"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v5, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v6, "readArea"

    const-string v7, "file creation failed."

    invoke-direct {v4, v5, v6, v7}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 110
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "e1":Ljava/lang/Exception;
    .restart local v16    # "randomAccess":Ljava/io/RandomAccessFile;
    :cond_3
    sub-int v4, p2, v18

    :try_start_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v17

    .line 111
    .local v17, "readSize":I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 112
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 115
    :cond_4
    add-int v18, v18, v17

    goto :goto_0

    .line 146
    .end local v16    # "randomAccess":Ljava/io/RandomAccessFile;
    .end local v17    # "readSize":I
    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v15, v0, v12, v1, v2}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->recoverOnReading(Ljava/io/File;Ljava/lang/String;[BII)V

    .line 149
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_6
    array-length v4, v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v4}, Lcom/felicanetworks/mfw/i/cmn/ResUtilListener;->resUtilReadArea([BI)V

    .line 150
    const/4 v4, 0x4

    const-string v5, "%s"

    const-string v6, "999"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method private static recoverOnReading(Ljava/io/File;Ljava/lang/String;[BII)V
    .locals 17
    .param p0, "target"    # Ljava/io/File;
    .param p1, "areaNumber"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "length"    # I

    .prologue
    .line 171
    const/4 v2, 0x4

    .line 172
    const-string v3, "%s : target = %s, areaNumber = %s, data = %s, position = %d, length = %d"

    const-string v4, "000"

    .line 173
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 171
    invoke-static/range {v2 .. v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    move-result v16

    .line 176
    .local v16, "result":Z
    if-nez v16, :cond_0

    .line 177
    const/4 v2, 0x1

    const-string v3, "%s createNewFile() failure"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v4, "readArea"

    const-string v5, "file creation failed."

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v16    # "result":Z
    :catch_0
    move-exception v10

    .line 181
    .local v10, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception:%s"

    const-string v4, "801"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v4, "readArea"

    const-string v5, "file creation failed."

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 187
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "result":Z
    :cond_0
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 191
    .local v12, "output":Ljava/io/FileOutputStream;
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->stmp:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v12, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 193
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 196
    const/4 v15, 0x0

    .line 197
    .local v15, "readSum":I
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v13, "randomAccess":Ljava/io/RandomAccessFile;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 199
    :goto_0
    move/from16 v0, p4

    if-lt v15, v0, :cond_1

    .line 207
    :goto_1
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    move/from16 v0, p4

    if-eq v15, v0, :cond_3

    .line 210
    const/4 v2, 0x1

    const-string v3, "%s size unmatch"

    const-string v4, "803"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 211
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .end local v13    # "randomAccess":Ljava/io/RandomAccessFile;
    .end local v15    # "readSum":I
    :catch_1
    move-exception v11

    .line 216
    .local v11, "e1":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_2
    const-string v3, "%s Exception:%s"

    const-string v4, "802"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 221
    :goto_2
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v4, "readArea"

    const-string v5, "file creation failed."

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v11    # "e1":Ljava/lang/Exception;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v13    # "randomAccess":Ljava/io/RandomAccessFile;
    .restart local v15    # "readSum":I
    :cond_1
    sub-int v2, p4, v15

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v14

    .line 201
    .local v14, "readSize":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_2

    .line 202
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 205
    :cond_2
    add-int/2addr v15, v14

    goto :goto_0

    .line 223
    .end local v14    # "readSize":I
    :cond_3
    const/4 v2, 0x4

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 224
    return-void

    .line 218
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .end local v13    # "randomAccess":Ljava/io/RandomAccessFile;
    .end local v15    # "readSum":I
    .restart local v11    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method private static recoverOnWriting(Ljava/io/File;Ljava/lang/String;[BII)V
    .locals 16
    .param p0, "target"    # Ljava/io/File;
    .param p1, "areaNumber"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "length"    # I

    .prologue
    .line 353
    const/4 v2, 0x4

    .line 354
    const-string v3, "%s : target = %s, areaNumber = %s, data = %s, position = %d, length = %d"

    const-string v4, "000"

    .line 355
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 353
    invoke-static/range {v2 .. v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    move-result v15

    .line 359
    .local v15, "result":Z
    if-nez v15, :cond_0

    .line 360
    const/4 v2, 0x1

    const-string v3, "%s createNewFile() failure"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v4, "writeToArea"

    const-string v5, "file creation failed."

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v15    # "result":Z
    :catch_0
    move-exception v10

    .line 364
    .local v10, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception:%s"

    const-string v4, "801"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v4, "writeToArea"

    const-string v5, "file creation failed."

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 370
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v15    # "result":Z
    :cond_0
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 374
    .local v13, "output":Ljava/io/FileOutputStream;
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->stmp:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v13, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 376
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 379
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .local v14, "randomAccess":Ljava/io/RandomAccessFile;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v14, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 381
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v14, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 382
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    .line 383
    .local v12, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V

    .line 384
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    const/4 v2, 0x4

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 396
    return-void

    .line 385
    .end local v12    # "fd":Ljava/io/FileDescriptor;
    .end local v13    # "output":Ljava/io/FileOutputStream;
    .end local v14    # "randomAccess":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v11

    .line 388
    .local v11, "e1":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_2
    const-string v3, "%s Exception:%s"

    const-string v4, "802"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 393
    :goto_0
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v4, "writeToArea"

    const-string v5, "file creation failed."

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 390
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public static writeToArea(Ljava/lang/String;I[BILcom/felicanetworks/mfw/i/cmn/ResUtilListener;)V
    .locals 20
    .param p0, "areaNumber"    # Ljava/lang/String;
    .param p1, "position"    # I
    .param p2, "data"    # [B
    .param p3, "length"    # I
    .param p4, "listener"    # Lcom/felicanetworks/mfw/i/cmn/ResUtilListener;

    .prologue
    .line 255
    const/4 v6, 0x4

    .line 256
    const-string v7, "%s : areaNumber = %s, position = %d, data = %s, length = %d, listener = %s"

    .line 257
    const-string v8, "000"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    .line 255
    invoke-static/range {v6 .. v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 259
    move-object/from16 v0, p2

    array-length v6, v0

    move/from16 v0, p3

    if-ne v6, v0, :cond_0

    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    if-nez v6, :cond_1

    .line 261
    :cond_0
    const/4 v6, 0x1

    .line 262
    const-string v7, "800 areaNumber = %s, position = %d, data = %s, length = %d, listener = %s, FILE_DIR = %s"

    .line 263
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v13, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    .line 260
    invoke-static/range {v6 .. v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v14, "buf":Ljava/lang/StringBuffer;
    const-string v6, "Illegal argument."

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " [areaNumber = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", position = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", data = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", listener = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", FILE_DIR = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    new-instance v6, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v7, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v8, "writeToArea"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 275
    .end local v14    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    add-int v6, p1, p3

    sget-object v7, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->AREA_SIZE:[I

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget v7, v7, v8

    if-le v6, v7, :cond_2

    .line 276
    const/4 v6, 0x1

    const-string v7, "801 areaNumber = %s, position = %d, length = %d"

    .line 277
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 276
    move-object/from16 v0, p0

    invoke-static {v6, v7, v0, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    new-instance v6, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v7, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v8, "writeToArea"

    const-string v9, "out of bound"

    invoke-direct {v6, v7, v8, v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 281
    :cond_2
    new-instance v18, Ljava/io/File;

    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .local v18, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 288
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :catch_0
    move-exception v15

    .line 305
    .local v15, "e":Ljava/lang/Exception;
    const/4 v6, 0x7

    const-string v7, "%s"

    const-string v8, "001"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 308
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    const/4 v6, 0x7

    const-string v7, "%s"

    const-string v8, "002"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 311
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 313
    const/4 v6, 0x7

    const-string v7, "%s"

    const-string v8, "003"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :catch_1
    move-exception v16

    .line 319
    .local v16, "e1":Ljava/lang/Exception;
    const/4 v6, 0x1

    const-string v7, "%s Exception:%s"

    const-string v8, "803"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    new-instance v6, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v7, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    const-string v8, "writeToArea"

    const-string v9, "file creation failed."

    invoke-direct {v6, v7, v8, v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 292
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "e1":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v19, "randomAccess":Ljava/io/RandomAccessFile;
    move/from16 v0, p1

    int-to-long v6, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 294
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 297
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    .line 298
    .local v17, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->sync()V

    .line 299
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    .end local v17    # "fd":Ljava/io/FileDescriptor;
    .end local v19    # "randomAccess":Ljava/io/RandomAccessFile;
    :goto_0
    invoke-interface/range {p4 .. p4}, Lcom/felicanetworks/mfw/i/cmn/ResUtilListener;->resUtilWriteArea()V

    .line 333
    const/4 v6, 0x4

    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 334
    return-void

    .line 329
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/ResUtil;->recoverOnWriting(Ljava/io/File;Ljava/lang/String;[BII)V

    goto :goto_0
.end method
