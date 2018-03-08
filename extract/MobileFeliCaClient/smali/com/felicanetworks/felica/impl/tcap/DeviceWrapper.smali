.class public Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
.super Ljava/lang/Object;
.source "DeviceWrapper.java"


# instance fields
.field private device:Lcom/felicanetworks/felica/InternalDevice;

.field private id:I


# direct methods
.method constructor <init>(ILcom/felicanetworks/felica/InternalDevice;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "device"    # Lcom/felicanetworks/felica/InternalDevice;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->id:I

    .line 40
    iput-object p2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    .line 41
    return-void
.end method


# virtual methods
.method final compare(Lcom/felicanetworks/felica/InternalDevice;)Z
    .locals 2
    .param p1, "target"    # Lcom/felicanetworks/felica/InternalDevice;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/felica/InternalDevice;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/felicanetworks/felica/InternalDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method final compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    invoke-interface {v0}, Lcom/felicanetworks/felica/InternalDevice;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    invoke-interface {v0}, Lcom/felicanetworks/felica/InternalDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDevice()Lcom/felicanetworks/felica/InternalDevice;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    return-object v0
.end method

.method public final getID()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    invoke-interface {v0}, Lcom/felicanetworks/felica/InternalDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    invoke-interface {v0}, Lcom/felicanetworks/felica/InternalDevice;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBuiltin()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    invoke-interface {v0}, Lcom/felicanetworks/felica/InternalDevice;->isBuiltin()Z

    move-result v0

    return v0
.end method

.method public final operate(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->device:Lcom/felicanetworks/felica/InternalDevice;

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;

    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->id:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;->operate(ILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
