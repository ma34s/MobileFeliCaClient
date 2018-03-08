.class public Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;
.super Ljava/lang/Object;
.source "TCAPDevice.java"

# interfaces
.implements Lcom/felicanetworks/felica/InternalDevice;


# instance fields
.field private isbuiltin:Z

.field private listener:Lcom/felicanetworks/mfc/FSCEventListener;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfc/FSCEventListener;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/felicanetworks/mfc/FSCEventListener;
    .param p4, "isbuiltin"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->type:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->name:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->listener:Lcom/felicanetworks/mfc/FSCEventListener;

    .line 58
    iput-boolean p4, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->isbuiltin:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isBuiltin()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->isbuiltin:Z

    return v0
.end method

.method public operate(ILjava/lang/String;[B)[B
    .locals 3
    .param p1, "deviceID"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 120
    .local v1, "response":[B
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->listener:Lcom/felicanetworks/mfc/FSCEventListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/felicanetworks/mfc/FSCEventListener;->operationRequested(ILjava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 127
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
