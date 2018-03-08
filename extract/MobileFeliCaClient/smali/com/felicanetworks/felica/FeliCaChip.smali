.class public interface abstract Lcom/felicanetworks/felica/FeliCaChip;
.super Ljava/lang/Object;
.source "FeliCaChip.java"

# interfaces
.implements Lcom/felicanetworks/felica/InternalDevice;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract closeNoReset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract execute([BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract executeThru([BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract receive(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract receiveBuf(I)Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract send([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract send([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation
.end method

.method public abstract setProtectCancel(Z)V
.end method

.method public abstract terminate()V
.end method
