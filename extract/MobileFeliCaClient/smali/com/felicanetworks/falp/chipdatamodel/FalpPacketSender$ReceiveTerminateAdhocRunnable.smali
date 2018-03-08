.class Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;
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
    name = "ReceiveTerminateAdhocRunnable"
.end annotation


# instance fields
.field mCommand:Lcom/felicanetworks/felica/offlineimpl/FalpCommand;

.field mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

.field final synthetic this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 206
    const/4 v1, 0x7

    const-string v2, "ReceiveTerminateAdhocRunnable#run [in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->mCommand:Lcom/felicanetworks/felica/offlineimpl/FalpCommand;

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;

    .line 208
    .local v0, "transmit":Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->getSendData()[B

    move-result-object v1

    .line 209
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->getmDataLen()I

    move-result v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .line 208
    invoke-static {v1, v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->recvTerminateAdhocDataRes([BILcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V

    .line 210
    return-void
.end method

.method public setmCommand(Lcom/felicanetworks/felica/offlineimpl/FalpCommand;)V
    .locals 0
    .param p1, "mCommand"    # Lcom/felicanetworks/felica/offlineimpl/FalpCommand;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->mCommand:Lcom/felicanetworks/felica/offlineimpl/FalpCommand;

    .line 232
    return-void
.end method

.method public setmListener(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .line 221
    return-void
.end method
