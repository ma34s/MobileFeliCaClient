.class public abstract Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
.super Ljava/lang/Object;
.source "FalpCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation
.end method

.method public final set(Lcom/felicanetworks/felica/util/ByteBuffer;)I
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x7

    const-string v2, "FalpCommand#set[in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v0

    .line 35
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/offlineimpl/FalpCommand;->doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 36
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method
