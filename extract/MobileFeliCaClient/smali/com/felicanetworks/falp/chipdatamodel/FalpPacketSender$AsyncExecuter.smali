.class Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;
.super Ljava/lang/Object;
.source "FalpPacketSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncExecuter"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->mHandler:Landroid/os/Handler;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->mHandler:Landroid/os/Handler;

    .line 72
    :cond_0
    return-void
.end method
