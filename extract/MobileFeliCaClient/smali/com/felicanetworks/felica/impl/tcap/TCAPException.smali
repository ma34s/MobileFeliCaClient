.class public Lcom/felicanetworks/felica/impl/tcap/TCAPException;
.super Ljava/lang/Exception;
.source "TCAPException.java"


# static fields
.field private static final DESCRPTION_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final TYPE_PROTOCOL:B


# instance fields
.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    iput-byte p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPException;->type:B

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPException;->type:B

    .line 52
    return-void
.end method

.method static FormatErrorDescription(B[B)Ljava/lang/String;
    .locals 12
    .param p0, "type"    # B
    .param p1, "params"    # [B

    .prologue
    const/16 v11, 0xa

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "description":Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "buf":[B
    if-nez p1, :cond_1

    .line 98
    const/4 v4, 0x2

    .line 106
    .local v4, "length":I
    :goto_0
    new-array v0, v4, [B

    .line 108
    const/4 v7, 0x0

    .line 110
    .local v7, "pos":I
    and-int/lit16 v9, p0, 0xf0

    shr-int/lit8 v9, v9, 0x4

    int-to-byte v3, v9

    .line 112
    .local v3, "hi":B
    and-int/lit8 v9, p0, 0xf

    int-to-byte v5, v9

    .line 114
    .local v5, "lo":B
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    if-ge v3, v11, :cond_2

    add-int/lit8 v9, v3, 0x30

    :goto_1
    int-to-byte v9, v9

    aput-byte v9, v0, v7

    .line 116
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    if-ge v5, v11, :cond_3

    add-int/lit8 v9, v5, 0x30

    :goto_2
    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 118
    if-eqz p1, :cond_0

    .line 120
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_3
    array-length v9, p1

    if-lt v6, v9, :cond_4

    .line 136
    .end local v6    # "n":I
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v9, "ISO-8859-1"

    invoke-direct {v2, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "description":Ljava/lang/String;
    .local v2, "description":Ljava/lang/String;
    move-object v1, v2

    .line 143
    .end local v2    # "description":Ljava/lang/String;
    .restart local v1    # "description":Ljava/lang/String;
    :goto_4
    return-object v1

    .line 103
    .end local v3    # "hi":B
    .end local v4    # "length":I
    .end local v5    # "lo":B
    .end local v7    # "pos":I
    :cond_1
    array-length v9, p1

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x2

    array-length v10, p1

    add-int v4, v9, v10

    .restart local v4    # "length":I
    goto :goto_0

    .line 114
    .restart local v3    # "hi":B
    .restart local v5    # "lo":B
    .restart local v8    # "pos":I
    :cond_2
    add-int/lit8 v9, v3, 0x41

    add-int/lit8 v9, v9, -0xa

    goto :goto_1

    .line 116
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :cond_3
    add-int/lit8 v9, v5, 0x41

    add-int/lit8 v9, v9, -0xa

    goto :goto_2

    .line 122
    .restart local v6    # "n":I
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    const/16 v9, 0x20

    aput-byte v9, v0, v7

    .line 124
    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    int-to-byte v3, v9

    .line 126
    aget-byte v9, p1, v6

    and-int/lit8 v9, v9, 0xf

    int-to-byte v5, v9

    .line 128
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    if-ge v3, v11, :cond_5

    add-int/lit8 v9, v3, 0x30

    :goto_5
    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 130
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    if-ge v5, v11, :cond_6

    add-int/lit8 v9, v5, 0x30

    :goto_6
    int-to-byte v9, v9

    aput-byte v9, v0, v7

    .line 120
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_3

    .line 128
    :cond_5
    add-int/lit8 v9, v3, 0x41

    add-int/lit8 v9, v9, -0xa

    goto :goto_5

    .line 130
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_6
    add-int/lit8 v9, v5, 0x41

    add-int/lit8 v9, v9, -0xa

    goto :goto_6

    .line 138
    .end local v6    # "n":I
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :catch_0
    move-exception v9

    goto :goto_4
.end method


# virtual methods
.method public getType()B
    .locals 1

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPException;->type:B

    return v0
.end method
