.class Lcom/felicanetworks/falp/Falp$1;
.super Ljava/lang/Object;
.source "Falp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/falp/Falp;->startInitiator(Lcom/felicanetworks/falp/FalpListener;IIIILandroid/content/Context;[B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/falp/Falp;

.field private final synthetic val$pid:I

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/felicanetworks/falp/Falp;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    iput p2, p0, Lcom/felicanetworks/falp/Falp$1;->val$pid:I

    iput p3, p0, Lcom/felicanetworks/falp/Falp$1;->val$uid:I

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 491
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/felicanetworks/falp/Falp;->mRunnable:Ljava/lang/Runnable;

    .line 495
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v3

    iget v4, p0, Lcom/felicanetworks/falp/Falp$1;->val$pid:I

    iget v5, p0, Lcom/felicanetworks/falp/Falp$1;->val$uid:I

    invoke-virtual {v3, v4, v5}, Lcom/felicanetworks/mfc/Felica;->startFalp(II)[I

    move-result-object v1

    .line 500
    .local v1, "ret":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge v3, v7, :cond_2

    .line 501
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/felicanetworks/falp/Falp;->useShutdownListener(I)V

    .line 545
    .end local v1    # "ret":[I
    :cond_1
    :goto_0
    return-void

    .line 504
    .restart local v1    # "ret":[I
    :cond_2
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-static {v3}, Lcom/felicanetworks/falp/Falp;->access$2(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Lcom/felicanetworks/falp/FalpProtocolParameter;->setSession_id(S)V

    .line 507
    const/4 v3, 0x1

    aget v3, v1, v3

    const/16 v4, 0x81

    if-ne v3, v4, :cond_3

    .line 508
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-static {v3}, Lcom/felicanetworks/falp/Falp;->access$2(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v3

    const-wide/32 v4, 0x33ba3

    invoke-virtual {v3, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_rs(J)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_1
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;
    invoke-static {v3}, Lcom/felicanetworks/falp/Falp;->access$3(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/state/FalpState;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    invoke-virtual {v3, v4}, Lcom/felicanetworks/falp/state/FalpState;->startInitiatorFalp(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v2

    .line 539
    .local v2, "startRet":I
    if-gez v2, :cond_1

    .line 541
    const-string v3, "\tstartInitiatorFalp failed."

    invoke-static {v6, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    invoke-virtual {v3, v2}, Lcom/felicanetworks/falp/Falp;->useShutdownListener(I)V

    goto :goto_0

    .line 510
    .end local v2    # "startRet":I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-static {v3}, Lcom/felicanetworks/falp/Falp;->access$2(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v3

    const-wide/32 v4, 0x67746

    invoke-virtual {v3, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_rs(J)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 513
    .end local v1    # "ret":[I
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v3, "\tstartFalp caused an exception."

    invoke-static {v6, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 517
    const/4 v1, -0x2

    .line 518
    .local v1, "ret":I
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 519
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Reader/Writer Function Stopped."

    if-ne v3, v4, :cond_5

    .line 520
    const/16 v1, -0xd

    .line 534
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp$1;->this$0:Lcom/felicanetworks/falp/Falp;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/falp/Falp;->useShutdownListener(I)V

    goto :goto_0

    .line 521
    :cond_5
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 522
    const/4 v1, -0x4

    .line 523
    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 524
    const/4 v1, -0x6

    .line 525
    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_8

    .line 526
    const/16 v1, -0xe

    .line 527
    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_9

    .line 528
    const/16 v1, -0xb

    .line 529
    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_a

    .line 530
    const/16 v1, -0xc

    .line 531
    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 532
    const/4 v1, -0x1

    goto :goto_2
.end method
