.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;
.super Ljava/lang/Object;
.source "PermitOptr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnector"
.end annotation


# instance fields
.field private networkListener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

.field private situationCode:I

.field final synthetic this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V
    .locals 1

    .prologue
    .line 2343
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2348
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector$1;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;)V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->networkListener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;)V
    .locals 0

    .prologue
    .line 2343
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V

    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;I)V
    .locals 0

    .prologue
    .line 2345
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->situationCode:I

    return-void
.end method

.method private getSituationCode()I
    .locals 1

    .prologue
    .line 2387
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->situationCode:I

    return v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/RespData;
    .locals 4
    .param p1, "interfaceNumber"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 2372
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;-><init>()V

    .line 2373
    .local v0, "networkOperator":Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->networkListener:Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->setListener(Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;)V

    .line 2374
    invoke-virtual {v0, p1, p3, p2}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->setRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->startCommunication()V

    .line 2377
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->getSituationCode()I

    move-result v1

    .line 2378
    .local v1, "situationCode":I
    if-nez v1, :cond_0

    .line 2379
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/BizNwConOptr;->getRespData()Lcom/felicanetworks/mfw/i/cmn/RespData;

    move-result-object v2

    return-object v2

    .line 2381
    :cond_0
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {v2, v3, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2
.end method
