.class Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;
.super Landroid/os/HandlerThread;
.source "FalpPacketSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncExecuterInAnotherThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    .line 89
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->mHandler:Landroid/os/Handler;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
