.class public Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
.super Ljava/lang/Object;
.source "TCAPContext.java"


# instance fields
.field private cookie:Ljava/lang/String;

.field private deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

.field private request:Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

.field private response:Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

.field private returnCode:I

.field private session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

.field private state:Lcom/felicanetworks/felica/impl/tcap/TCAPState;

.field private stopped:Z

.field private url:Ljava/lang/String;

.field private version:I


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/TCAPSession;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;)V
    .locals 0
    .param p1, "session"    # Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    .param p2, "request"    # Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    .param p3, "response"    # Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 82
    iput-object p2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->request:Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    .line 84
    iput-object p3, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->response:Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    .line 85
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->request:Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    return-object v0
.end method

.method public getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->response:Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    return-object v0
.end method

.method public getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->returnCode:I

    return v0
.end method

.method public getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    return-object v0
.end method

.method public getState()Lcom/felicanetworks/felica/impl/tcap/TCAPState;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->state:Lcom/felicanetworks/felica/impl/tcap/TCAPState;

    return-object v0
.end method

.method public getStopFlag()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->stopped:Z

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->version:I

    return v0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->cookie:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setDeviceList(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    .locals 0
    .param p1, "deviceList"    # Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    .line 200
    return-void
.end method

.method public setReturnCode(I)V
    .locals 0
    .param p1, "returnCode"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->returnCode:I

    .line 177
    return-void
.end method

.method public setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V
    .locals 0
    .param p1, "state"    # Lcom/felicanetworks/felica/impl/tcap/TCAPState;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->state:Lcom/felicanetworks/felica/impl/tcap/TCAPState;

    .line 131
    return-void
.end method

.method public setStopFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->stopped:Z

    .line 246
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->url:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->version:I

    .line 108
    return-void
.end method
