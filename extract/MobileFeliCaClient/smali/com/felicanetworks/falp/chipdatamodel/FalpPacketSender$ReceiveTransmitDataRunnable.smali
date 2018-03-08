.class Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;
.super Ljava/lang/Object;
.source "FalpPacketSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveTransmitDataRunnable"
.end annotation


# instance fields
.field mCommand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/felicanetworks/felica/offlineimpl/FalpCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCopyCommandCount:I

.field mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

.field mMyCommands:[Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

.field final synthetic this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 125
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCopyCommandCount:I

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCommand:Ljava/util/List;

    .line 123
    new-array v1, v2, [Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    iput-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mMyCommands:[Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mMyCommands:[Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mMyCommands:[Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    invoke-direct {v2}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;-><init>()V

    aput-object v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x7

    const-string v2, "ReceiveTransmitDataRunnable#run [in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCommand:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    .line 144
    .local v0, "transmit":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCommand:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->getSendData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->getmDataLen()I

    move-result v2

    .line 147
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .line 146
    invoke-static {v1, v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->recvTransmitDataRes([BILcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V

    .line 148
    return-void

    .line 142
    .end local v0    # "transmit":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setmCommand(Lcom/felicanetworks/felica/offlineimpl/FalpCommand;)V
    .locals 6
    .param p1, "mCommand"    # Lcom/felicanetworks/felica/offlineimpl/FalpCommand;

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mMyCommands:[Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    iget v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCopyCommandCount:I

    iget-object v5, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mMyCommands:[Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    .line 171
    .local v1, "c":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    iget v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCopyCommandCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCopyCommandCount:I

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    move-object v2, v0

    .line 173
    .local v2, "tmp":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->getSendData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->setSendData([B)V

    .line 174
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->getmDataLen()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->setmDataLen(I)V

    .line 180
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCommand:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit p0

    .line 182
    return-void

    .line 169
    .end local v1    # "c":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    .end local v2    # "tmp":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setmListener(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .line 159
    return-void
.end method
