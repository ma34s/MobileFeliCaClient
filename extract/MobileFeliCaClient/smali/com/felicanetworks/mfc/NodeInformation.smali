.class public Lcom/felicanetworks/mfc/NodeInformation;
.super Ljava/lang/Object;
.source "NodeInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/NodeInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

.field protected serviceCodeList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/felicanetworks/mfc/NodeInformation$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/NodeInformation$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/NodeInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 203
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/NodeInformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 247
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/NodeInformation;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/NodeInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V
    .locals 6
    .param p1, "areaCodeList"    # [Lcom/felicanetworks/mfc/AreaInformation;
    .param p2, "serviceCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v2, "%s In areaCodeList = %s : serviceCodeList = %s"

    const-string v3, "000"

    invoke-static {v4, v2, v3, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 54
    :cond_0
    const-string v2, "%s areaCodeList == %s : serviceCodeList == %s"

    const-string v3, "800"

    invoke-static {v5, v2, v3, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 58
    :cond_1
    array-length v2, p1

    if-gez v2, :cond_2

    .line 59
    const-string v2, "%s areaCodeList.length == %d"

    const-string v3, "801"

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 63
    :cond_2
    array-length v2, p2

    if-gez v2, :cond_3

    .line 64
    const-string v2, "%s serviceCodeList.length == %d"

    const-string v3, "802"

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 69
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p2

    if-lt v1, v2, :cond_4

    .line 73
    iput-object p1, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    .line 74
    iput-object p2, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void

    .line 70
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkServiceCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    const-string v3, "803"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 94
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "%s return areaCode = %d"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    return-object v0
.end method

.method public getServiceCodeList()[I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 140
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "%s return serviceCodeList = %d"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x6

    .line 213
    const-string v3, "%s : in = %s"

    const-string v4, "000"

    invoke-static {v5, v3, v4, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    const-class v3, Lcom/felicanetworks/mfc/AreaInformation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 217
    .local v1, "parcels":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 218
    array-length v3, v1

    new-array v3, v3, [Lcom/felicanetworks/mfc/AreaInformation;

    iput-object v3, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 224
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, "size":I
    if-ltz v2, :cond_1

    .line 226
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    .line 227
    iget-object v3, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 234
    :cond_1
    const-string v3, "999"

    invoke-static {v5, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 235
    return-void

    .line 220
    .end local v2    # "size":I
    .restart local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    aget-object v3, v1, v0

    check-cast v3, Lcom/felicanetworks/mfc/AreaInformation;

    aput-object v3, v4, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAreaInformationList([Lcom/felicanetworks/mfc/AreaInformation;)V
    .locals 4
    .param p1, "areaCodeList"    # [Lcom/felicanetworks/mfc/AreaInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 111
    const-string v0, "%s In areaCode = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v0, "%s areaCodeList == %s : serviceCodeList == %s"

    const-string v1, "800"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 119
    :cond_0
    array-length v0, p1

    if-gez v0, :cond_1

    .line 120
    const-string v0, "%s areaCodeList.length == %d"

    const-string v1, "801"

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    .line 126
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public setServiceCodeList([I)V
    .locals 6
    .param p1, "serviceCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 156
    const-string v2, "%s In serviceCodeList = %s"

    const-string v3, "000"

    invoke-static {v4, v2, v3, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    if-nez p1, :cond_0

    .line 159
    const-string v2, "%s areaCodeList == %s : serviceCodeList == %s"

    const-string v3, "800"

    invoke-static {v5, v2, v3, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 163
    :cond_0
    array-length v2, p1

    if-gez v2, :cond_1

    .line 164
    const-string v2, "%s serviceCodeList.length == %d"

    const-string v3, "801"

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 169
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 173
    iput-object p1, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-void

    .line 170
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkServiceCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    const-string v3, "802"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 270
    const/4 v0, 0x4

    const-string v1, "%s : out = %s, flag = %d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->areaCodeList:[Lcom/felicanetworks/mfc/AreaInformation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 279
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, Lcom/felicanetworks/mfc/NodeInformation;->serviceCodeList:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 282
    const/4 v0, 0x7

    const-string v1, "999"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 283
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
