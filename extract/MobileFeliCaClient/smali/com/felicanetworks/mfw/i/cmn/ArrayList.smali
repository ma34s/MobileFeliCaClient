.class public Lcom/felicanetworks/mfw/i/cmn/ArrayList;
.super Ljava/lang/Object;
.source "ArrayList.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0xa


# instance fields
.field private elementData:[Ljava/lang/Object;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "initialCapacity"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-gez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Illegal argument."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [initialCapacity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v3, "ArrayList"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "Illegal argument."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [element = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v4, "add"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 116
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    .line 117
    .local v1, "oldData":[Ljava/lang/Object;
    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .end local v1    # "oldData":[Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    aput-object p1, v2, v3

    .line 121
    return-void
.end method

.method public addAllArray([Ljava/lang/Object;)V
    .locals 6
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "Illegal argument."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [array = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v4, "addAllArray"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 162
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 165
    return-void

    .line 163
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addAllList(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)V
    .locals 6
    .param p1, "list"    # Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "Illegal argument."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [list = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v4, "addAllList"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    if-lt v1, v2, :cond_1

    .line 143
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    if-lt v0, v1, :cond_0

    .line 227
    const/4 v1, 0x0

    iput v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    .line 228
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 181
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    if-gt v1, p1, :cond_1

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Illegal argument."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v3, "get"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, p1

    return-object v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "Illegal argument."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [element = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v4, "indexOf"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    if-lt v1, v2, :cond_2

    .line 94
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_1
    return v1

    .line 90
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 205
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    if-gt v2, p1, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v2, "Illegal argument."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const-string v4, "remove"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, -0x1

    .line 214
    .local v1, "moveSize":I
    if-lez v1, :cond_2

    .line 215
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 218
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 239
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    return-object v0
.end method
