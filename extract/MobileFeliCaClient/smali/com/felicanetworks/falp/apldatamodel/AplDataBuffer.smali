.class public abstract Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
.super Ljava/lang/Object;
.source "AplDataBuffer.java"


# static fields
.field public static final EDIT_MODE_READ:I = 0x0

.field public static final EDIT_MODE_WRITE:I = 0x1

.field public static final ERROR_BUSY:I = -0x6

.field public static final ERROR_FULL:I = -0x5

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x2

.field private static final STATE_AVAIRABLE:I = 0x0

.field protected static final STATE_READ:I = 0x1

.field protected static final STATE_WRITE:I = 0x2


# instance fields
.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReadPtr:I

.field private mState:I

.field private mWrtPtr:I

.field private sData:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    .line 74
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    .line 79
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    .line 88
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    .line 74
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    .line 79
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mListeners:Ljava/util/List;

    .line 98
    iput-object p1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    .line 99
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;)V
    .locals 1
    .param p1, "l"    # Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final clearListener(Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;)V
    .locals 3
    .param p1, "l"    # Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;

    .line 152
    .local v0, "myLisnter":Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public commit()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 329
    iget v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    if-nez v1, :cond_0

    .line 330
    const/4 v0, -0x6

    .line 342
    :goto_0
    return v0

    .line 333
    :cond_0
    iget v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 334
    iget-object v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    iget-object v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    iget v4, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    iget v5, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iget v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    .line 336
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    .line 340
    :cond_1
    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    goto :goto_0
.end method

.method public final getBufferMaxSize()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    array-length v0, v0

    return v0
.end method

.method public final getReadBufferSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    return v0
.end method

.method protected final getState()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    return v0
.end method

.method public final getWriteBufferSize()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iput v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    .line 117
    iput v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .param p1, "dst"    # [B

    .prologue
    const/4 v2, -0x2

    .line 293
    iget-object v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    if-nez v3, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v2

    .line 295
    :cond_1
    if-eqz p1, :cond_0

    .line 299
    iget v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 300
    const/4 v2, -0x6

    goto :goto_0

    .line 303
    :cond_2
    iget v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    iget v4, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    sub-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 307
    iget v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    .line 308
    .local v1, "wrtPtr":I
    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    sub-int v0, v1, v2

    .line 309
    .local v0, "readLen":I
    array-length v2, p1

    if-le v0, v2, :cond_3

    .line 310
    array-length v0, p1

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    iget v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    .line 320
    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mReadPtr:I

    sub-int v2, v1, v2

    goto :goto_0
.end method

.method public startEdit(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, -0x2

    .line 210
    iget-object v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    if-nez v1, :cond_0

    .line 229
    :goto_0
    return v0

    .line 214
    :cond_0
    iget v1, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    if-eqz v1, :cond_1

    .line 215
    const/4 v0, -0x6

    goto :goto_0

    .line 218
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    .line 229
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public write([B)I
    .locals 1
    .param p1, "src"    # [B

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const/4 v0, -0x2

    .line 242
    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->write([BI)I

    move-result v0

    goto :goto_0
.end method

.method public write([BI)I
    .locals 5
    .param p1, "src"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, -0x2

    .line 254
    iget-object v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    if-eqz p1, :cond_0

    .line 260
    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 261
    const/4 v1, -0x6

    goto :goto_0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    array-length v2, v2

    iget v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    array-length v2, v2

    iget v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    sub-int v0, v2, v3

    .line 269
    .local v0, "empty":I
    move v1, p2

    .line 270
    .local v1, "writeLen":I
    if-ge v0, v1, :cond_3

    .line 271
    move v1, v0

    .line 275
    :cond_3
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->sData:[B

    iget v4, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->mWrtPtr:I

    goto :goto_0
.end method
