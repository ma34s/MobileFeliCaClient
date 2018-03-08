.class public Lcom/felicanetworks/mfw/i/cmn/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final calendar:Ljava/util/Calendar;

.field private static final monthTable:[I

.field private static sbuf:Ljava/lang/StringBuffer;

.field private static stimeBuff:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->sbuf:Ljava/lang/StringBuffer;

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    .line 37
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->monthTable:[I

    .line 38
    return-void

    .line 37
    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized convertToMillis(IIIIII)J
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 374
    const-class v1, Lcom/felicanetworks/mfw/i/cmn/DateUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 375
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 376
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 377
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 378
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 379
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 380
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static convertToMillis(Ljava/lang/String;)J
    .locals 11
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/16 v7, 0xc

    .line 345
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, "year":I
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 347
    .local v1, "month":I
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 348
    .local v2, "date":I
    const/16 v6, 0xa

    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 349
    .local v3, "hour":I
    const/16 v6, 0xa

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 350
    .local v4, "minute":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 351
    .local v5, "second":I
    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->convertToMillis(IIIIII)J

    move-result-wide v6

    return-wide v6

    .line 350
    .end local v5    # "second":I
    :cond_0
    const/16 v6, 0xe

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public static getCurrentJSTString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->toJST(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMaxDate(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 310
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 311
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->monthTable:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_0
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const/16 v0, 0x1d

    goto :goto_0

    .line 315
    :cond_1
    const/16 v0, 0x1c

    goto :goto_0
.end method

.method private static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 333
    rem-int/lit16 v0, p0, 0x190

    if-eqz v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isValidDate(III)Z
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I

    .prologue
    const/4 v0, 0x1

    .line 257
    if-gt v0, p2, :cond_0

    invoke-static {p0, p1}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->getMaxDate(II)I

    move-result v1

    if-gt p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDateFormat(Ljava/lang/String;)Z
    .locals 14
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xe

    if-eq v10, v11, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_1

    .line 155
    :cond_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v9, "buf":Ljava/lang/StringBuffer;
    const-string v10, "Illegal argument."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " [targetTime = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    new-instance v10, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v11, Lcom/felicanetworks/mfw/i/cmn/DateUtil;

    const-string v12, "isValidDateFormat"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    .line 161
    .end local v9    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "year":Ljava/lang/String;
    const/4 v10, 0x4

    const/4 v11, 0x6

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "month":Ljava/lang/String;
    const/4 v10, 0x6

    const/16 v11, 0x8

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "date":Ljava/lang/String;
    const/16 v10, 0x8

    const/16 v11, 0xa

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "hour":Ljava/lang/String;
    const/16 v10, 0xa

    const/16 v11, 0xc

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "minite":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc

    if-le v10, v11, :cond_2

    const/16 v10, 0xc

    const/16 v11, 0xe

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "second":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xe

    if-le v10, v11, :cond_3

    const/16 v10, 0xe

    const/16 v11, 0xf

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "operant":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xe

    if-le v10, v11, :cond_4

    const/16 v10, 0xf

    const/16 v11, 0x11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "hourDiff":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xe

    if-le v10, v11, :cond_5

    const/16 v10, 0x11

    const/16 v11, 0x13

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "miniteDiff":Ljava/lang/String;
    :goto_3
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    return v10

    .line 166
    .end local v5    # "second":Ljava/lang/String;
    .end local v6    # "operant":Ljava/lang/String;
    .end local v7    # "hourDiff":Ljava/lang/String;
    .end local v8    # "miniteDiff":Ljava/lang/String;
    :cond_2
    const-string v5, "00"

    goto :goto_0

    .line 167
    .restart local v5    # "second":Ljava/lang/String;
    :cond_3
    const-string v6, "+"

    goto :goto_1

    .line 168
    .restart local v6    # "operant":Ljava/lang/String;
    :cond_4
    const-string v7, "00"

    goto :goto_2

    .line 169
    .restart local v7    # "hourDiff":Ljava/lang/String;
    :cond_5
    const-string v8, "00"

    goto :goto_3
.end method

.method private static isValidDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "year"    # Ljava/lang/String;
    .param p1, "month"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "hour"    # Ljava/lang/String;
    .param p4, "minite"    # Ljava/lang/String;
    .param p5, "second"    # Ljava/lang/String;
    .param p6, "operant"    # Ljava/lang/String;
    .param p7, "hourDiff"    # Ljava/lang/String;
    .param p8, "miniteDiff"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    invoke-static {p2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    invoke-static {p4}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p5}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-static {p7}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    const-string v6, "+"

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-"

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 201
    :cond_0
    const/4 v6, 0x0

    .line 217
    :goto_0
    return v6

    .line 205
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 206
    .local v5, "yearValue":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 207
    .local v3, "monthValue":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "dateValue":I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "hourValue":I
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, "miniteValue":I
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, "secondValue":I
    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidYear(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidMonth(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    invoke-static {v5, v3, v0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDate(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidHour(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidMinite(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    invoke-static {v4}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidSecond(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 215
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 217
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static isValidHour(I)Z
    .locals 1
    .param p0, "hour"    # I

    .prologue
    .line 269
    if-ltz p0, :cond_0

    const/16 v0, 0x17

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMinite(I)Z
    .locals 1
    .param p0, "minite"    # I

    .prologue
    .line 281
    if-ltz p0, :cond_0

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 2
    .param p0, "month"    # I

    .prologue
    const/4 v0, 0x1

    .line 241
    if-gt v0, p0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidSecond(I)Z
    .locals 1
    .param p0, "second"    # I

    .prologue
    .line 293
    if-ltz p0, :cond_0

    const/16 v0, 0x3b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 229
    if-ltz p0, :cond_0

    const/16 v0, 0x270f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized toJST(J)Ljava/lang/String;
    .locals 10
    .param p0, "millis"    # J

    .prologue
    .line 64
    const-class v6, Lcom/felicanetworks/mfw/i/cmn/DateUtil;

    monitor-enter v6

    const-wide/16 v8, 0x0

    cmp-long v5, p0, v8

    if-gez v5, :cond_0

    .line 66
    :try_start_0
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->sbuf:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 67
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->sbuf:Ljava/lang/StringBuffer;

    const-string v7, "Illegal argument."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->sbuf:Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " [targetTime = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    new-instance v5, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v7, Lcom/felicanetworks/mfw/i/cmn/DateUtil;

    const-string v8, "convertMillisToJST"

    sget-object v9, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->sbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 72
    :cond_0
    :try_start_1
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    new-instance v7, Ljava/util/Date;

    const-wide/32 v8, 0x1ee6280

    add-long/2addr v8, p0

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 74
    .local v4, "year":I
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 75
    .local v3, "month":I
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 76
    .local v0, "date":I
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 77
    .local v1, "hour":I
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 81
    .local v2, "minite":I
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 83
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->zeroPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->zeroPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->zeroPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->zeroPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->zeroPadding(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->stimeBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5
.end method

.method public static toMillis(Ljava/lang/String;)J
    .locals 6
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Illegal argument."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [targetTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/cmn/DateUtil;

    const-string v3, "convertJSTtoMillis"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->convertToMillis(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x1ee6280

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public static toMillisWithTZD(Ljava/lang/String;)J
    .locals 14
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x13

    if-ne v9, v10, :cond_0

    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v9, "Illegal argument."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " [targetTime = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    new-instance v9, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v10, Lcom/felicanetworks/mfw/i/cmn/DateUtil;

    const-string v11, "convertToMillisWithTZD"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 127
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v9, 0xf

    const/16 v10, 0x11

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "hourDiff":Ljava/lang/String;
    const/16 v9, 0x11

    const/16 v10, 0x13

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "miniteDiff":Ljava/lang/String;
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->convertToMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 132
    .local v4, "millis":J
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long v2, v10, v12

    .line 133
    .local v2, "hour":J
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long v6, v10, v12

    .line 135
    .local v6, "minite":J
    const/16 v9, 0x2b

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 137
    sub-long v10, v4, v2

    sub-long/2addr v10, v6

    .line 140
    :goto_0
    return-wide v10

    :cond_2
    add-long v10, v4, v2

    add-long/2addr v10, v6

    goto :goto_0
.end method
