.class public Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
.super Lcom/felicanetworks/mfc/FelicaResultInfoType;
.source "FelicaResultInfoByteArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/felicanetworks/mfc/FelicaResultInfoType",
        "<[B>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;)V

    .line 44
    const-string v0, "%s : exceptionType = %d, message = %s"

    const-string v1, "001"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I

    .prologue
    const/4 v0, 0x4

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;II)V

    .line 65
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d"

    const-string v2, "001"

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 9
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I
    .param p5, "statusFlag1"    # I
    .param p6, "statusFlag2"    # I

    .prologue
    const/4 v0, 0x4

    .line 90
    invoke-direct/range {p0 .. p6}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;IIII)V

    .line 93
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d, statusFlag1 = %d, statusFlag2 = %d"

    .line 94
    const-string v2, "001"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, p2

    .line 91
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 153
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x4

    .line 27
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 28
    const-string v0, "%s : value = %s"

    const-string v1, "001"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    .line 132
    invoke-super {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    const-string v1, "%s : in = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, "arraySize":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 137
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->value:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 141
    :cond_0
    const-string v1, "%s : value = %s"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->value:Ljava/lang/Object;

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 178
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 183
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    :goto_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-void

    .line 185
    :cond_0
    const-string v0, "%s"

    const-string v1, "002"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->value:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
