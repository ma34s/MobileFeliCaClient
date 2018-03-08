.class abstract Lcom/felicanetworks/felica/offlineimpl/Command;
.super Ljava/lang/Object;
.source "Command.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation
.end method

.method abstract get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation
.end method

.method final set(Lcom/felicanetworks/felica/util/ByteBuffer;)I
    .locals 2
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v0

    .line 33
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/offlineimpl/Command;->doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 34
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method
