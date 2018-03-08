.class public Lcom/felicanetworks/mfc/PushNotifyAppSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushNotifyAppSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushNotifyAppSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIdentificationCode:Ljava/lang/String;

.field private appNotificationParam:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/felicanetworks/mfc/PushNotifyAppSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 185
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 187
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 191
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "appIdentificationCode"    # Ljava/lang/String;
    .param p2, "appNotificationParam"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x6

    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 45
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 47
    iput v3, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->activateType:I

    .line 49
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    .line 52
    const-string v0, "%s appIdentificationCode=%s"

    const-string v1, "001"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    const-string v0, "%s appNotificationParam=%s"

    const-string v1, "001"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->checkFormat()V

    .line 57
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 162
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_0
    iput v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->activateType:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->checkFormat()V

    .line 177
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 234
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 237
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 241
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 202
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIdentificationCode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 67
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppNotificationParam()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 80
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    return-object v0
.end method

.method public setAppIdentificationCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "appIdentificationCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 101
    const-string v0, "%s appIdentificationCode=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setAppNotificationParam([Ljava/lang/String;)V
    .locals 3
    .param p1, "appNotificationParam"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 122
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 125
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x6

    .line 216
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appIdentificationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->appNotificationParam:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 222
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method
