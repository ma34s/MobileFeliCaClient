.class public Lcom/felicanetworks/mfw/i/cmn/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static ALPHA:[C

.field public static DEC:[C

.field public static DEC_AND_ALPHA:[C

.field public static HEX:[C

.field private static final TopDomainChars:[C

.field private static final base64Chars:[C

.field private static final flagmentChars:[C

.field private static sbuff:Ljava/lang/StringBuffer;

.field private static slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field private static final urlChars:[C

.field private static final validChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC:[C

    .line 31
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->HEX:[C

    .line 35
    const/16 v0, 0x34

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->ALPHA:[C

    .line 41
    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    .line 49
    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->flagmentChars:[C

    .line 56
    const/16 v0, 0x14

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->urlChars:[C

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->base64Chars:[C

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->TopDomainChars:[C

    .line 75
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    .line 76
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_7

    .line 75
    invoke-static {v0, v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v0

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->validChars:[C

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->sbuff:Ljava/lang/StringBuffer;

    .line 88
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    return-void

    .line 28
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .line 31
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 35
    :array_2
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 41
    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 49
    :array_4
    .array-data 2
        0x21s
        0x24s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3ds
        0x3fs
        0x40s
        0x5fs
        0x7es
    .end array-data

    .line 56
    :array_5
    .array-data 2
        0x21s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3ds
        0x3fs
        0x40s
        0x5fs
        0x7es
    .end array-data

    .line 63
    :array_6
    .array-data 2
        0x2bs
        0x2fs
    .end array-data

    .line 76
    :array_7
    .array-data 2
        0x2es
        0x2ds
        0x3as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/BufferedReader;)V
    .locals 1
    .param p0, "br"    # Ljava/io/BufferedReader;

    .prologue
    .line 809
    if-eqz p0, :cond_0

    .line 810
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static concatChars([C[C)[C
    .locals 4
    .param p0, "first"    # [C
    .param p1, "second"    # [C

    .prologue
    const/4 v3, 0x0

    .line 103
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 104
    .local v0, "concated":[C
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v0
.end method

.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 869
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v1

    .line 872
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 873
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 874
    const/4 v1, 0x1

    goto :goto_0

    .line 872
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createLineList(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/ArrayList;
    .locals 10
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 773
    if-nez p0, :cond_0

    .line 774
    const/4 v4, 0x0

    .line 798
    :goto_0
    return-object v4

    .line 777
    :cond_0
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v4}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    .line 779
    .local v4, "rsltList":Lcom/felicanetworks/mfw/i/cmn/ArrayList;
    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 780
    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x0

    .line 786
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 787
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 786
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 796
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->closeQuietly(Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 790
    :cond_2
    :try_start_2
    invoke-virtual {v4, v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 792
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 793
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v5, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v6, Lcom/felicanetworks/mfw/i/cmn/StringUtil;

    const-string v7, "createLineList"

    .line 794
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not createLineList. [target = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 793
    invoke-direct {v5, v6, v7, v8}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 796
    :goto_3
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 797
    throw v5

    .line 795
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 792
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static createSeparated(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 712
    if-nez p0, :cond_1

    .line 713
    const/4 v3, 0x0

    .line 744
    :cond_0
    :goto_0
    return-object v3

    .line 716
    :cond_1
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez p1, :cond_3

    .line 717
    :cond_2
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 718
    .local v3, "rslt":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p0, v3, v5

    goto :goto_0

    .line 723
    .end local v3    # "rslt":[Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->clear()V

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "beginIndex":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 726
    .local v1, "endIndex":I
    if-gez v1, :cond_5

    .line 727
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5, p0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 740
    :goto_1
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 741
    .restart local v3    # "rslt":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 742
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5, v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 730
    .end local v2    # "i":I
    .end local v3    # "rslt":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "str":Ljava/lang/String;
    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->slist:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5, v4}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v1, v5

    .line 733
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 734
    if-gez v1, :cond_5

    .line 735
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 729
    .end local v4    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v0, v5, :cond_4

    goto :goto_1
.end method

.method public static createYamlItems(Ljava/lang/String;)[Lcom/felicanetworks/mfw/i/cmn/Item;
    .locals 13
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 830
    if-nez p0, :cond_1

    move-object v5, v8

    .line 854
    :cond_0
    :goto_0
    return-object v5

    .line 833
    :cond_1
    const-string v7, ": "

    .line 834
    .local v7, "yamlDelim":Ljava/lang/String;
    const-string v9, "\r\n"

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 835
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 837
    :cond_2
    const-string v9, "\r\n"

    invoke-static {p0, v9}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->createSeparated(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "lines":[Ljava/lang/String;
    array-length v9, v4

    new-array v5, v9, [Lcom/felicanetworks/mfw/i/cmn/Item;

    .line 839
    .local v5, "results":[Lcom/felicanetworks/mfw/i/cmn/Item;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v4

    if-ge v1, v9, :cond_0

    .line 840
    aget-object v3, v4, v1

    .line 841
    .local v3, "line":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_3

    move-object v5, v8

    .line 842
    goto :goto_0

    .line 844
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "value":Ljava/lang/String;
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    move-object v5, v8

    .line 849
    goto :goto_0

    .line 851
    :cond_5
    const-string v9, "\""

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "\""

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "deleteWQvalue":Ljava/lang/String;
    new-instance v9, Lcom/felicanetworks/mfw/i/cmn/Item;

    invoke-direct {v9, v2, v0}, Lcom/felicanetworks/mfw/i/cmn/Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v5, v1

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAllZero([B)Z
    .locals 4
    .param p0, "target"    # [B

    .prologue
    const/4 v2, 0x0

    .line 522
    if-nez p0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v2

    .line 525
    :cond_1
    array-length v3, p0

    if-eqz v3, :cond_0

    .line 528
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_2

    .line 534
    const/4 v2, 0x1

    goto :goto_0

    .line 529
    :cond_2
    aget-byte v0, p0, v1

    .line 530
    .local v0, "b":B
    if-nez v0, :cond_0

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAlpha(Ljava/lang/String;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->ALPHA:[C

    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method public static isDecOrAlpha(Ljava/lang/String;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method public static isDecString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC:[C

    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHexString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->HEX:[C

    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method private static isVaildHostAndPortCharacter(Ljava/lang/String;)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 408
    sget-object v0, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->validChars:[C

    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method public static isValidAttribute(Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 249
    const/16 v2, 0x1e

    new-array v1, v2, [C

    fill-array-data v1, :array_0

    .line 252
    .local v1, "validCodes":[C
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    invoke-static {v2, v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v0

    .line 253
    .local v0, "validChars":[C
    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v2

    return v2

    .line 249
    :array_0
    .array-data 2
        0x20s
        0x21s
        0x23s
        0x24s
        0x25s
        0x26s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public static isValidBase64(Ljava/lang/String;)Z
    .locals 5
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3d

    const/4 v2, 0x0

    .line 208
    if-nez p0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 219
    .local v0, "a":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 220
    .local v1, "b":C
    if-ne v0, v4, :cond_3

    .line 221
    if-ne v1, v4, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 232
    :cond_2
    :goto_1
    sget-object v3, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->base64Chars:[C

    invoke-static {v3, v4}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v3

    invoke-static {p0, v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const/4 v2, 0x1

    goto :goto_0

    .line 225
    :cond_3
    if-ne v1, v4, :cond_2

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static isValidBetweenLength(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 680
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidChar(C[C)Z
    .locals 3
    .param p0, "target"    # C
    .param p1, "validChars"    # [C

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 146
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 141
    :cond_0
    aget-char v1, p1, v0

    .line 142
    .local v1, "validChar":C
    if-ne p0, v1, :cond_1

    .line 143
    const/4 v2, 0x1

    goto :goto_1

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isValidDomainLabel(Ljava/lang/String;)Z
    .locals 6
    .param p0, "domainLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 479
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v3

    .line 483
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 484
    .local v0, "firstChar":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 485
    .local v1, "lastChar":C
    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    invoke-static {v0, v4}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidChar(C[C)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    invoke-static {v1, v4}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidChar(C[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->TopDomainChars:[C

    invoke-static {v4, v5}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v2

    .line 493
    .local v2, "validChars":[C
    invoke-static {p0, v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isValidFlagment(Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->flagmentChars:[C

    invoke-static {v1, v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v0

    .line 291
    .local v0, "validChars":[C
    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v1

    return v1
.end method

.method private static isValidHost(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 420
    const-string v5, "."

    invoke-static {p0, v5}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->createSeparated(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "labels":[Ljava/lang/String;
    array-length v5, v2

    if-eqz v5, :cond_1

    .line 422
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v2, v5

    .line 423
    .local v3, "topLabel":Ljava/lang/String;
    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidTopLabel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 434
    .end local v3    # "topLabel":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 428
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_2

    .line 434
    const/4 v4, 0x1

    goto :goto_0

    .line 429
    :cond_2
    aget-object v0, v2, v1

    .line 430
    .local v0, "domainLabel":Ljava/lang/String;
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidDomainLabel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isValidHostAndPort(Ljava/lang/String;)Z
    .locals 6
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3a

    const/4 v3, 0x0

    .line 373
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isVaildHostAndPortCharacter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v3

    .line 377
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 378
    .local v0, "colonPosition":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 379
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 383
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "host":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "port":Ljava/lang/String;
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidHost(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidPort(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isValidLength(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 663
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidPercent(Ljava/lang/String;)Z
    .locals 4
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 352
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 353
    .local v0, "percentPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isValidPort(Ljava/lang/String;)Z
    .locals 1
    .param p0, "port"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidString(Ljava/lang/String;[C)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "validChars"    # [C

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 126
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    .local v1, "targetChar":C
    invoke-static {v1, p1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidChar(C[C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isValidTopLabel(Ljava/lang/String;)Z
    .locals 6
    .param p0, "topLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 446
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v3

    .line 450
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 451
    .local v0, "firstChar":C
    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->ALPHA:[C

    invoke-static {v0, v4}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidChar(C[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 456
    .local v1, "lastChar":C
    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    invoke-static {v1, v4}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidChar(C[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    sget-object v4, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    sget-object v5, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->TopDomainChars:[C

    invoke-static {v4, v5}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v2

    .line 464
    .local v2, "validChars":[C
    invoke-static {p0, v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isValidURL(Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 265
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 266
    .local v0, "flagmentPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 268
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidFlagment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return v1

    .line 271
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 273
    :cond_1
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidURLIgnoreFlagment(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isValidURLIgnoreFlagment(Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 303
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    const-string v2, "://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidUrlCharacter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidPercent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 316
    .local v0, "slashPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 317
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 319
    :cond_2
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidHostAndPort(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidUrlCharacter(Ljava/lang/String;)Z
    .locals 3
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->DEC_AND_ALPHA:[C

    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->urlChars:[C

    invoke-static {v1, v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->concatChars([C[C)[C

    move-result-object v0

    .line 340
    .local v0, "validUrl":[C
    invoke-static {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidString(Ljava/lang/String;[C)Z

    move-result v1

    return v1
.end method

.method public static padding(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "adjuster"    # C
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 629
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->sbuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 630
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->sbuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->sbuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 634
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->sbuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 632
    :cond_0
    sget-object v1, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->sbuff:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 590
    if-nez p0, :cond_1

    .line 591
    const/4 v1, 0x0

    .line 611
    :cond_0
    :goto_0
    return-object v1

    .line 594
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    const/4 v3, 0x0

    new-array v1, v3, [B

    goto :goto_0

    .line 598
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 603
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 606
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 607
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "str":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 554
    const/4 v4, 0x0

    .line 576
    :goto_0
    return-object v4

    .line 556
    :cond_0
    array-length v4, p0

    if-nez v4, :cond_1

    .line 557
    const-string v4, ""

    goto :goto_0

    .line 561
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 563
    .local v1, "hex":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p0

    if-lt v2, v4, :cond_2

    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 565
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    .line 567
    .local v0, "bt":I
    const/16 v4, 0x10

    if-ge v0, v4, :cond_3

    .line 569
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static zeroPadding(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 649
    const/16 v0, 0x30

    invoke-static {p0, v0, p1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->padding(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
