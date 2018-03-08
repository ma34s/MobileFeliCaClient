.class public Lcom/felicanetworks/falp/util/FalpLog;
.super Ljava/lang/Object;
.source "FalpLog.java"


# static fields
.field public static final API:I = 0x3

.field public static final CLS:I = 0x5

.field public static final DBG:I = 0x6

.field public static final ERR:I = 0x1

.field public static final OFF:I = -0x1

.field public static final PFM:I = 0x0

.field public static final PKG:I = 0x4

.field private static final S_LVL:[Ljava/lang/String;

.field public static final TRC:I = 0x7

.field public static final WAR:I = 0x2

.field private static level:I

.field private static mDump:Ljava/lang/StringBuffer;

.field private static mIsFileLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "[PFM]"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 45
    const-string v2, "[ERR]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 46
    const-string v2, "[WAR]"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 47
    const-string v2, "[API]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 48
    const-string v2, "[PKG]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 49
    const-string v2, "[CLS]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    const-string v2, "[DBG]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 51
    const-string v2, "[TRC]"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/felicanetworks/falp/util/FalpLog;->S_LVL:[Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/felicanetworks/falp/util/FalpLog;->level:I

    .line 61
    sput-boolean v3, Lcom/felicanetworks/falp/util/FalpLog;->mIsFileLog:Z

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitLog()V
    .locals 4

    .prologue
    .line 161
    sget-boolean v0, Lcom/felicanetworks/falp/util/FalpLog;->mIsFileLog:Z

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->writeSdFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static print(ILjava/lang/String;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 77
    if-ltz p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    sget v1, Lcom/felicanetworks/falp/util/FalpLog;->level:I

    if-le p0, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-boolean v1, Lcom/felicanetworks/falp/util/FalpLog;->mIsFileLog:Z

    if-eqz v1, :cond_2

    .line 83
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 84
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 93
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 101
    :try_start_0
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->S_LVL:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->S_LVL:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "FalpLog print error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->S_LVL:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object v1, Lcom/felicanetworks/falp/util/FalpLog;->S_LVL:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static print(ILjava/lang/String;I)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "param1"    # I

    .prologue
    .line 120
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    sget v0, Lcom/felicanetworks/falp/util/FalpLog;->level:I

    if-le p0, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static print(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;

    .prologue
    .line 138
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    sget v0, Lcom/felicanetworks/falp/util/FalpLog;->level:I

    if-le p0, v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static startLog()V
    .locals 3

    .prologue
    .line 151
    sget-boolean v0, Lcom/felicanetworks/falp/util/FalpLog;->mIsFileLog:Z

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Lcom/felicanetworks/falp/util/FalpLog;->mDump:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 154
    :cond_0
    return-void
.end method

.method private static writeSdFile(Ljava/lang/String;[B)V
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/falp/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "dirname":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 189
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 194
    .local v5, "file":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v8, v5, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, p1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 197
    .local v7, "writeStr":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 198
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 199
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    if-eqz v1, :cond_0

    .line 205
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v8

    goto :goto_0

    .line 200
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/FileOutputStream;
    .end local v7    # "writeStr":Ljava/lang/String;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    .line 201
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 203
    :goto_2
    if-eqz v0, :cond_3

    .line 205
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 210
    :cond_3
    :goto_3
    throw v8

    .line 206
    :catch_2
    move-exception v9

    goto :goto_3

    .line 202
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 200
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method
