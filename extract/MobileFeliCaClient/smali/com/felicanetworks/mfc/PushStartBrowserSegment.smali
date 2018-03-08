.class public Lcom/felicanetworks/mfc/PushStartBrowserSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushStartBrowserSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushStartBrowserSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private browserStartupParam:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 189
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 191
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 195
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "browserStartupParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 47
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 50
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->activateType:I

    .line 59
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    .line 62
    const-string v0, "%s url=%s"

    const-string v1, "001"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    const-string v0, "%s browserStartupParam=%s"

    const-string v1, "001"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 166
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->activateType:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->checkFormat()V

    .line 181
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 182
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

    .line 238
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 240
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 245
    :cond_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 206
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getBrowserStartupParam()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 87
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 75
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBrowserStartupParam(Ljava/lang/String;)V
    .locals 3
    .param p1, "browserStartupParam"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 127
    const-string v0, "%s browserStartupParam=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    .line 129
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 105
    const-string v0, "%s url=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    .line 114
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x6

    .line 220
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->browserStartupParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method
