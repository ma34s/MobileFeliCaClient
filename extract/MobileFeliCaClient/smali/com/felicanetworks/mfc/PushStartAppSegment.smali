.class public Lcom/felicanetworks/mfc/PushStartAppSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushStartAppSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushStartAppSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIdentificationCode:Ljava/lang/String;

.field private appStartupParam:[Ljava/lang/String;

.field private appURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/felicanetworks/mfc/PushStartAppSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushStartAppSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushStartAppSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 243
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 245
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 249
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartAppSegment;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartAppSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "appURL"    # Ljava/lang/String;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .param p3, "appStartupParam"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 60
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 62
    const/4 v1, 0x1

    iput v1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->activateType:I

    .line 64
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    .line 68
    const-string v1, "%s appURL=%s"

    const-string v2, "001"

    iget-object v3, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    invoke-static {v6, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    const-string v1, "%s appIdentificationCode=%s"

    const-string v2, "001"

    iget-object v3, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-static {v6, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartAppSegment;->checkFormat()V

    .line 78
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void

    .line 71
    :cond_1
    aget-object v0, v2, v1

    .line 72
    .local v0, "param":Ljava/lang/String;
    const-string v4, "%s appStartupParam=%s"

    const-string v5, "001"

    invoke-static {v6, v4, v5, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 219
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    iput v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->activateType:I

    .line 223
    if-nez p1, :cond_0

    .line 224
    const-string v0, "%s"

    const-string v1, "700"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartAppSegment;->checkFormat()V

    .line 235
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 292
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "%s"

    const-string v1, "700"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 299
    :cond_1
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 260
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIdentificationCode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 101
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStartupParam()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 114
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 88
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIdentificationCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 153
    const-string v0, "%s appIdentificationCode=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 161
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public setAppStartupParam([Ljava/lang/String;)V
    .locals 3
    .param p1, "appStartupParam"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 178
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    .line 182
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setAppURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "appURL"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 132
    const-string v0, "%s appURL=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x6

    .line 273
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;->appStartupParam:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 280
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    return-void
.end method
