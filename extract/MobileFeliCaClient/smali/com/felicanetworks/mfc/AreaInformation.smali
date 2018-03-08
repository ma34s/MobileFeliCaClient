.class public Lcom/felicanetworks/mfc/AreaInformation;
.super Ljava/lang/Object;
.source "AreaInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/AreaInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected areaCode:I

.field protected endServiceCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/felicanetworks/mfc/AreaInformation$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/AreaInformation$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/AreaInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "areaCode"    # I
    .param p2, "endServiceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v1, "%s areaCode = %s : endServiceCode = %s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 45
    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 50
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkEndServiceCode(I)V

    .line 52
    iput p1, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    .line 53
    iput p2, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s %s"

    const-string v3, "800"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/AreaInformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 195
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/AreaInformation;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/AreaInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaCode()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 72
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v0, "%s return areaCode = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    return v0
.end method

.method public getEndServiceCode()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 112
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v0, "%s return endServiceCode = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x6

    .line 176
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    .line 181
    const-string v0, "001 areaCode=%d  endServiceCode=%d"

    iget v1, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 183
    return-void
.end method

.method public setAreaCode(I)V
    .locals 5
    .param p1, "areaCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 88
    const-string v1, "%s areaCode = %s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 93
    iput p1, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s %s"

    const-string v3, "800"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setEndServiceCode(I)V
    .locals 5
    .param p1, "endServiceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 128
    const-string v1, "%s endServiceCode = %s"

    const-string v2, "001"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkEndServiceCode(I)V

    .line 133
    iput p1, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s %s"

    const-string v3, "800"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x4

    .line 218
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    const/4 v0, 0x6

    const-string v1, "001 areaCode=%d  endServiceCode=%d"

    iget v2, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->areaCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/felicanetworks/mfc/AreaInformation;->endServiceCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const-string v0, "999"

    invoke-static {v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 225
    return-void
.end method
