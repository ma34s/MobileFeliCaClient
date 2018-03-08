.class public interface abstract Lcom/felicanetworks/felica/FeliCaClient;
.super Ljava/lang/Object;
.source "FeliCaClient.java"


# virtual methods
.method public abstract addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
.end method

.method public abstract getEventListener()Lcom/felicanetworks/felica/FeliCaClientEventListener;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract isStarted()Z
.end method

.method public abstract removeAllDevices()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation
.end method

.method public abstract removeDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation
.end method

.method public abstract setEventListener(Lcom/felicanetworks/felica/FeliCaClientEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation
.end method

.method public abstract setURL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract start(Z[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation
.end method

.method public abstract stop(Z)V
.end method
