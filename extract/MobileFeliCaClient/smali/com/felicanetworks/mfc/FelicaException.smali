.class public Lcom/felicanetworks/mfc/FelicaException;
.super Ljava/lang/Exception;
.source "FelicaException.java"


# static fields
.field public static final ID_GET_APP_IDENTIFICATION_CODE_ERROR:I = 0x19

.field public static final ID_GET_BLOCK_COUNT_INFORMATION_ERROR:I = 0xd

.field public static final ID_GET_CONTAINER_ID_ERROR:I = 0x14

.field public static final ID_GET_KEY_VERSION_ERROR:I = 0x4

.field public static final ID_GET_NODE_INFORMATION_ERROR:I = 0x9

.field public static final ID_GET_PRIVACY_NODE_INFORMATION_ERROR:I = 0xa

.field public static final ID_GET_PUSH_NOTIFICATION_LISTENER_ERROR:I = 0x18

.field public static final ID_GET_RFS_STATE_ERROR:I = 0x11

.field public static final ID_GET_SYSTEM_CODE_LIST_ERROR:I = 0x1a

.field public static final ID_ILLEGAL_STATE_ERROR:I = 0x2

.field public static final ID_IO_ERROR:I = 0x3

.field public static final ID_OPEN_ERROR:I = 0x8

.field public static final ID_PERMISSION_ERROR:I = 0xc

.field public static final ID_PUSH_ERROR:I = 0x15

.field public static final ID_READ_ERROR:I = 0x5

.field public static final ID_SET_NODECODESIZE_ERROR:I = 0x7

.field public static final ID_SET_PRIVACY_ERROR:I = 0xb

.field public static final ID_SET_PUSH_NOTIFICATION_LISTENER_ERROR:I = 0x16

.field public static final ID_STARTFALP_ERROR:I = 0x1b

.field public static final ID_START_ADHOC_ERROR:I = 0x17

.field public static final ID_UNKNOWN_ERROR:I = 0x1

.field public static final ID_WRITE_ERROR:I = 0x6

.field public static final RW_STOP_MESSAGE:Ljava/lang/String; = "Reader/Writer Function Stopped."

.field public static final TYPE_ACTIVATE_FAILED:I = 0x38

.field public static final TYPE_ACTIVATING_BY_OTHER_APP:I = 0x30

.field public static final TYPE_ALREADY_ACTIVATED:I = 0x2a

.field public static final TYPE_AUTHENTICATE_FAILED:I = 0x1e

.field public static final TYPE_BLOCK_NOT_FOUND:I = 0xc

.field public static final TYPE_CASH_BACK_FAILED:I = 0x10

.field public static final TYPE_CHECK_PIN_LIMIT:I = 0x12

.field public static final TYPE_CHECK_PIN_OVERRUN:I = 0x13

.field public static final TYPE_COMMUNICATION_START_FAILED:I = 0x1b

.field public static final TYPE_CURRENTLY_ACTIVATING:I = 0x31

.field public static final TYPE_CURRENTLY_ONLINE:I = 0x2

.field public static final TYPE_DEVICELIST_NOT_SET:I = 0x19

.field public static final TYPE_ENABLE_PIN_FAILED:I = 0x15

.field public static final TYPE_EXECUTE_FELICA_COMMAND_FAILED:I = 0x3f

.field public static final TYPE_FELICA_NOT_AVAILABLE:I = 0x37

.field public static final TYPE_FELICA_NOT_SET:I = 0x18

.field public static final TYPE_GET_BLOCK_COUNT_INFORMATION_FAILED:I = 0x2b

.field public static final TYPE_GET_CONTAINER_ID_FAILED:I = 0x2e

.field public static final TYPE_GET_CONTAINER_ISSUE_INFORMATION_FAILED:I = 0x1d

.field public static final TYPE_GET_KEY_VERSION_FAILED:I = 0xa

.field public static final TYPE_GET_NODE_INFORMATION_FAILED:I = 0x22

.field public static final TYPE_GET_PRIVACY_NODE_INFORMATION_FAILED:I = 0x23

.field public static final TYPE_GET_RFS_STATE_FAILED:I = 0x33

.field public static final TYPE_GET_SYSTEM_CODE_LIST_FAILED:I = 0x2d

.field public static final TYPE_ILLEGAL_METHOD_CALL:I = 0x26

.field public static final TYPE_ILLEGAL_NODECODE:I = 0x20

.field public static final TYPE_ILLEGAL_PACKET_INDEX:I = 0x21

.field public static final TYPE_ILLEGAL_STEP_ERROR:I = 0x3e

.field public static final TYPE_ILLEGAL_SYSTEMCODE:I = 0x32

.field public static final TYPE_INITIATE_ADHOC_ERROR:I = 0x3d

.field public static final TYPE_INVALID_PIN:I = 0x11

.field public static final TYPE_INVALID_RESPONSE:I = 0x6

.field public static final TYPE_INVALID_SELECTED_INTERFACE:I = 0x36

.field public static final TYPE_LISTENER_NOT_SET:I = 0x1a

.field public static final TYPE_MFC_NOT_FOUND:I = 0x3c

.field public static final TYPE_NOT_ACTIVATED:I = 0x5

.field public static final TYPE_NOT_CLOSED:I = 0x25

.field public static final TYPE_NOT_IC_CHIP_FORMATTING:I = 0x1f

.field public static final TYPE_NOT_OPENED:I = 0x1

.field public static final TYPE_NOT_SELECTED:I = 0x3

.field public static final TYPE_NOW_EXECUTING_FALP:I = 0x3b

.field public static final TYPE_OFFLINE_CANCELED:I = 0x3a

.field public static final TYPE_OPEN_FAILED:I = 0x8

.field public static final TYPE_PIN_NOT_CHECKED:I = 0xd

.field public static final TYPE_PURSE_FAILED:I = 0xf

.field public static final TYPE_PUSH_FAILED:I = 0x28

.field public static final TYPE_READ_FAILED:I = 0xe

.field public static final TYPE_REMOTE_ACCESS_FAILED:I = 0x2f

.field public static final TYPE_RESET_FAILED:I = 0x2c

.field public static final TYPE_SELECT_FAILED:I = 0x9

.field public static final TYPE_SERVICE_NOT_FOUND:I = 0xb

.field public static final TYPE_SET_NODECODESIZE_FAILED:I = 0x1c

.field public static final TYPE_SET_PRIVACY_FAILED:I = 0x24

.field public static final TYPE_START_ADHOC_FAILED:I = 0x35

.field public static final TYPE_TIMEOUT_OCCURRED:I = 0x7

.field public static final TYPE_USED_BY_OTHER_APP:I = 0x27

.field public static final TYPE_WRITE_FAILED:I = 0x14


# instance fields
.field private id:I

.field protected otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

.field private statusFlag1:I

.field private statusFlag2:I

.field private type:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 513
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 515
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 516
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method constructor <init>(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x5

    .line 528
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 530
    const-string v0, "%s id=%d type=%d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 533
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 535
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "statusFlag1"    # I
    .param p4, "statusFlag2"    # I

    .prologue
    const/4 v0, 0x5

    .line 551
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 553
    const-string v1, "%s id=%d type=%d statusFlag1=%d statusFlag2=%d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 554
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 553
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 557
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 558
    iput p3, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    .line 559
    iput p4, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    .line 561
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method constructor <init>(IILcom/felicanetworks/mfc/AppInfo;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    const/4 v0, 0x5

    .line 575
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 577
    const-string v1, "%s id=%d type=%d otherAppPID=%d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 580
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 581
    iput-object p3, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 583
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method constructor <init>(IILcom/felicanetworks/mfc/AppInfo;II)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;
    .param p4, "statusFlag1"    # I
    .param p5, "statusFlag2"    # I

    .prologue
    const/4 v0, 0x5

    .line 627
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 629
    const-string v1, "%s id=%d type=%d otherAppPID=%d statusFlag1=%d statusFlag2=%d"

    .line 630
    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, p3

    .line 629
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 633
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 634
    iput-object p3, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 635
    iput p4, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    .line 636
    iput p5, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    .line 638
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 639
    return-void
.end method

.method constructor <init>(IILcom/felicanetworks/mfc/AppInfo;IILjava/lang/String;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;
    .param p4, "statusFlag1"    # I
    .param p5, "statusFlag2"    # I
    .param p6, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 662
    invoke-direct {p0, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 664
    const-string v1, "%s id=%d type=%d otherAppPID=%d statusFlag1=%d statusFlag2=%d msg=%s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 665
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, p3

    move-object v8, p6

    .line 663
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 668
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 669
    iput-object p3, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 670
    iput p4, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    .line 671
    iput p5, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    .line 673
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 674
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 600
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 602
    const-string v1, "%s id=%d type=%d message=%s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 604
    iput p1, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    .line 605
    iput p2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    .line 607
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 608
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 686
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 687
    const-string v0, "%s id=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->id:I

    return v0
.end method

.method public getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 744
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 745
    const-string v0, "%s otherAppInfo=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaException;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    return-object v0
.end method

.method public getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 714
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 715
    const-string v0, "%s statusFlag1=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag1:I

    return v0
.end method

.method public getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 728
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 729
    const-string v0, "%s statusFlag2=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 731
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->statusFlag2:I

    return v0
.end method

.method public getType()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 700
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 701
    const-string v0, "%s type=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 703
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaException;->type:I

    return v0
.end method
