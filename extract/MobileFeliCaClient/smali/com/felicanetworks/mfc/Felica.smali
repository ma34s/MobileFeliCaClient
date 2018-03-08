.class public Lcom/felicanetworks/mfc/Felica;
.super Ljava/lang/Object;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/Felica$ActivateThread;,
        Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
    }
.end annotation


# static fields
.field static final ADHOC_MODE_1:I = 0x1

.field static final BACKLIGHT_TIME:I = 0x2710

.field public static final DEFAULT_RETRY_COUNT:I = 0x0

.field public static final DEFAULT_TIMEOUT:I = 0x3e8

.field public static final DEFAULT_TIMEOUT_FALP:I = 0x1f4

.field private static final EXC_INVALID_BLOCK_DATA_LIST:Ljava/lang/String; = "The specified BlockDataList is null or empty."

.field private static final EXC_INVALID_BLOCK_LIST:Ljava/lang/String; = "The specified BlockList is null or empty."

.field private static final EXC_INVALID_COMMAND:Ljava/lang/String; = "The specified Command is null or invalid size."

.field private static final EXC_INVALID_LISTENER:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_NODECODESIZE:Ljava/lang/String; = "The specified NodeCodeSize is invalid value."

.field private static final EXC_INVALID_NODE_CODE_LIST:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_PRIVACY_SETTING_DATA_LIST:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_PUSH_SEGMENT_DATA_LIST:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_SET_PUSH_LISTENER_PRM:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_SYSTEM_CODE:Ljava/lang/String; = "The specified System Code is out of range."

.field private static final EXC_INVALID_TARGET:Ljava/lang/String; = "The specified Target is invalid value."

.field private static final EXC_MAX_SIZE_PERMIT_LIST:Ljava/lang/String; = "The size of permit list exceeds the maximum value."

.field public static final INITIATOR_FALP_TIMEOUT:I = 0x2710

.field public static final INTERFACE_WIRED:I = 0x0

.field public static final INTERFACE_WIRELESS:I = 0x1

.field private static final MAX_DATA_LENGTH:I = 0xc0

.field private static final MAX_PACKET_DATA_LENGTH:I = 0xfe

.field public static final MAX_PERMIT_LIST_SIZE:I = 0x32

.field public static final MAX_RETRY_COUNT:I = 0xa

.field private static final MAX_SYSTEM_CODE:I = 0xffff

.field public static final MAX_TIMEOUT:I = 0xea60

.field public static final MFC_STATE_CLOSE:I = 0x1

.field public static final MFC_STATE_FALP:I = 0x8

.field public static final MFC_STATE_NOT_ACTIVATE:I = 0x0

.field public static final MFC_STATE_ONLINE:I = 0x4

.field public static final MFC_STATE_OPEN:I = 0x2

.field public static final MIN_RETRY_COUNT:I = 0x0

.field private static final MIN_SYSTEM_CODE:I = 0x0

.field public static final MIN_TIMEOUT:I = 0x0

.field public static final NODECODESIZE_2:I = 0x2

.field public static final NODECODESIZE_4:I = 0x4

.field private static final NONEXISTENT_SERVICE:I = 0xffff

.field private static final OPTION_SYSTEM:B = 0x1t

.field private static final OPTION_WIRELESS:B = 0x2t

.field public static final PERMISSION_OFFLINE:I = 0x1

.field public static final PERMISSION_ONLINE:I = 0x2

.field public static final PERMISSION_SP_LEVEL1:I = 0x10

.field public static final PERMISSION_SP_LEVEL2:I = 0x20

.field public static final PERMISSION_THRU:I = 0x3

.field static final PMm_IC_CODE_LENGTH:I = 0x2

.field static final SYSTEM_FILE_CAREER_IDENTIFY_CODE_KEY:Ljava/lang/String; = "00000002"

.field static final SYSTEM_FILE_CAREER_IDENTIFY_CODE_LENGTH:I = 0x6

.field static final SYSTEM_FILE_CHIP_ISSUER_ID_KEY:Ljava/lang/String; = "00000001"

.field static final SYSTEM_FILE_CHIP_ISSUER_ID_LENGTH:I = 0x6

.field private static final TERMINATE_ADHOC_DATA:[B

.field public static final TIMEOUT_VALUE_1000:I = 0x3e8

.field private static final WILD_CARD_SYSTEM_CODE1:I = 0xffff

.field private static final WILD_CARD_SYSTEM_CODE2:I = 0xff

.field private static final WILD_CARD_SYSTEM_CODE3:I = 0xff00

.field private static instance:Lcom/felicanetworks/mfc/Felica;


# instance fields
.field private activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

.field private activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

.field private appIdentifyCode:Ljava/lang/String;

.field private chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

.field private context:Landroid/content/Context;

.field private felica_close_in_fsc_starting:Z

.field private fsc:Lcom/felicanetworks/mfc/FSC;

.field private fsc_starting:Z

.field private mAllowFalpWhileUsingMfc:Z

.field mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

.field private mIsFalp:Z

.field private mPollingLock:Ljava/lang/Object;

.field private nodeCodeSize:I

.field private opened:Z

.field private permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

.field private pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

.field private retryCount:I

.field private selectTimeout:I

.field private selected:Z

.field private systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

.field private target:I

.field private timeout:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 337
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    sput-object v0, Lcom/felicanetworks/mfc/Felica;->TERMINATE_ADHOC_DATA:[B

    .line 350
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput v4, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    .line 450
    iput-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    .line 455
    iput-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->mAllowFalpWhileUsingMfc:Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    .line 476
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mPollingLock:Ljava/lang/Object;

    .line 1186
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1188
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 1191
    iput v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 1192
    iput v2, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 1193
    iput v2, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    .line 1194
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    .line 1196
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1197
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$ActivateThread;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    return-void
.end method

.method static synthetic access$2(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    return-void
.end method

.method static synthetic access$3(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    return-void
.end method

.method private checkActivateWorker()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 3879
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3881
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    if-eqz v0, :cond_0

    .line 3882
    const/4 v0, 0x1

    const-string v1, "%s activateWorker != null"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3883
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    .line 3884
    const/4 v2, 0x5

    .line 3883
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3887
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3889
    return-void
.end method

.method private checkNotAdhocNosync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6434
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    if-eqz v0, :cond_0

    .line 6435
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    .line 6436
    const/16 v2, 0x3b

    .line 6435
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 6438
    :cond_0
    return-void
.end method

.method private checkNotOnline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 3851
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    if-eqz v0, :cond_0

    .line 3852
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v0, v1, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3855
    :cond_0
    return-void
.end method

.method private checkOpenedNosync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 3736
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v0, :cond_0

    .line 3737
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    .line 3738
    const/4 v2, 0x1

    .line 3737
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3740
    :cond_0
    return-void
.end method

.method private checkSelected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 4088
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    if-nez v0, :cond_0

    .line 4090
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    .line 4091
    const/4 v2, 0x3

    .line 4090
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 4093
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/felicanetworks/mfc/Felica;
    .locals 4

    .prologue
    .line 1209
    const-class v1, Lcom/felicanetworks/mfc/Felica;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1211
    sget-object v0, Lcom/felicanetworks/mfc/Felica;->instance:Lcom/felicanetworks/mfc/Felica;

    if-nez v0, :cond_0

    .line 1212
    const/4 v0, 0x7

    const-string v2, "%s instance == null"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1213
    new-instance v0, Lcom/felicanetworks/mfc/Felica;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/Felica;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/Felica;->instance:Lcom/felicanetworks/mfc/Felica;

    .line 1216
    :cond_0
    const/4 v0, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1217
    sget-object v0, Lcom/felicanetworks/mfc/Felica;->instance:Lcom/felicanetworks/mfc/Felica;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isFaver15(Lcom/felicanetworks/felica/offlineimpl/SystemInfo;)Z
    .locals 5
    .param p1, "sysInfo"    # Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6451
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getPMm()[B

    move-result-object v0

    .line 6453
    .local v0, "pmm":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 6463
    :cond_0
    :goto_0
    return v1

    .line 6459
    :cond_1
    aget-byte v3, v0, v2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    aget-byte v3, v0, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    .line 6460
    goto :goto_0
.end method

.method private makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x3

    .line 6478
    const/4 v0, 0x0

    .line 6479
    .local v0, "retException":Lcom/felicanetworks/mfc/FelicaException;
    if-eqz p1, :cond_0

    const-string v1, "FCC_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6480
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    .line 6481
    .end local v0    # "retException":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "Reader/Writer Function Stopped."

    .line 6480
    invoke-direct {v0, v2, v3, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IILjava/lang/String;)V

    .line 6487
    .restart local v0    # "retException":Lcom/felicanetworks/mfc/FelicaException;
    :goto_0
    return-object v0

    .line 6483
    :cond_0
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    .end local v0    # "retException":Lcom/felicanetworks/mfc/FelicaException;
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    .restart local v0    # "retException":Lcom/felicanetworks/mfc/FelicaException;
    goto :goto_0
.end method

.method private declared-synchronized open(Z)V
    .locals 15
    .param p1, "checkActivate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1621
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1629
    if-eqz p1, :cond_0

    .line 1630
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1634
    :cond_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 1635
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 1638
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v0, :cond_2

    .line 1639
    const/4 v0, 0x4

    const-string v2, "%s"

    const-string v3, "998"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1644
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->open()V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1664
    const/4 v14, 0x0

    .line 1667
    .local v14, "privilegedCheck":Z
    :try_start_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    if-eqz v0, :cond_3

    .line 1668
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1670
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1671
    const/4 v14, 0x1

    .line 1692
    :cond_3
    :goto_1
    if-nez v14, :cond_6

    .line 1693
    const/4 v0, 0x7

    :try_start_4
    const-string v2, "%s"

    const-string v3, "004"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1696
    :try_start_5
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v3, 0x0

    .line 1697
    const v4, 0xffff

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1696
    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :try_end_5
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    .line 1713
    .local v12, "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :try_start_6
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 1714
    const/4 v2, 0x0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    const/16 v4, 0x3e8

    .line 1715
    const/4 v5, 0x0

    .line 1713
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getContainerIssueInfo(I[BII)[B

    move-result-object v10

    .line 1717
    .local v10, "containerIssueInfo":[B
    invoke-static {}, Lcom/felicanetworks/felica/util/CommonConfig;->getInstance()Lcom/felicanetworks/felica/util/CommonConfig;

    move-result-object v0

    .line 1718
    const-string v2, "00000002"

    .line 1717
    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/util/CommonConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1719
    .local v8, "careerIdentifyCode":Ljava/lang/String;
    const/4 v0, 0x4

    const-string v2, "%s careerIdentifyCode=%s"

    const-string v3, "006"

    invoke-static {v0, v2, v3, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1720
    const/4 v0, 0x3

    new-array v9, v0, [B

    .line 1721
    .local v9, "code":[B
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    .line 1722
    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    .line 1723
    const/4 v0, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    .line 1725
    array-length v0, v10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    aget-byte v0, v9, v0

    const/4 v2, 0x2

    aget-byte v2, v10, v2

    if-ne v0, v2, :cond_4

    .line 1726
    const/4 v0, 0x1

    aget-byte v0, v9, v0

    const/4 v2, 0x3

    aget-byte v2, v10, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    aget-byte v0, v9, v0

    const/4 v2, 0x4

    aget-byte v2, v10, v2

    if-ne v0, v2, :cond_4

    .line 1728
    const/4 v0, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z
    :try_end_6
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1753
    :try_start_7
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v0, :cond_1

    .line 1754
    const/4 v0, 0x2

    const-string v2, "%s"

    const-string v3, "008"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1755
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1621
    .end local v8    # "careerIdentifyCode":Ljava/lang/String;
    .end local v9    # "code":[B
    .end local v10    # "containerIssueInfo":[B
    .end local v12    # "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    .end local v14    # "privilegedCheck":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1652
    :catch_0
    move-exception v1

    .line 1653
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_8
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1654
    const/4 v0, 0x1

    const-string v2, "%s FelicaException failed open == true"

    const-string v3, "800"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1655
    const/16 v2, 0x8

    const/16 v3, 0x8

    .line 1656
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1655
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 1657
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v1

    .line 1658
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1659
    const/4 v0, 0x1

    const-string v2, "%s Exception failed open == true"

    const-string v3, "801"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1660
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 1661
    const/16 v3, 0x8

    .line 1660
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 1673
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v14    # "privilegedCheck":Z
    :catch_2
    move-exception v1

    .line 1674
    .local v1, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1677
    const/4 v0, 0x5

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_9
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1678
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1679
    :catch_3
    move-exception v11

    .line 1680
    .local v11, "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x7

    :try_start_a
    const-string v2, "%s"

    const-string v3, "003"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1684
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .end local v11    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    :catch_4
    move-exception v13

    .line 1685
    .local v13, "ne":Ljava/lang/NumberFormatException;
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1686
    const/4 v0, 0x1

    const-string v2, "%s"

    const-string v3, "809"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1687
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 1688
    const/16 v3, 0x8

    .line 1687
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 1698
    .end local v13    # "ne":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v1

    .line 1700
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1701
    const/4 v0, 0x1

    const-string v2, "%s FelicaException failed polling == true"

    const-string v3, "802"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1702
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 1703
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_6
    move-exception v1

    .line 1705
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1706
    const/4 v0, 0x1

    const-string v2, "%s Exception failed polling == true"

    const-string v3, "803"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1707
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 1708
    const/16 v3, 0x8

    .line 1707
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1734
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "careerIdentifyCode":Ljava/lang/String;
    .restart local v9    # "code":[B
    .restart local v10    # "containerIssueInfo":[B
    .restart local v12    # "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :cond_4
    :try_start_b
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1735
    const/4 v0, 0x1

    const-string v2, "%s FelicaException failed not chip format== true"

    const-string v3, "804"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1737
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v2, 0x8

    .line 1738
    const/16 v3, 0x1f

    .line 1737
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_b
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1740
    .end local v8    # "careerIdentifyCode":Ljava/lang/String;
    .end local v9    # "code":[B
    .end local v10    # "containerIssueInfo":[B
    :catch_7
    move-exception v1

    .line 1741
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v0, 0x1

    .line 1742
    :try_start_c
    const-string v2, "%s FelicaException failed Container Issue Information == true"

    const-string v3, "805"

    .line 1741
    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1743
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1752
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_1
    move-exception v0

    .line 1753
    :try_start_d
    iget-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v2, :cond_5

    .line 1754
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "008"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1755
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1757
    :cond_5
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1744
    :catch_8
    move-exception v1

    .line 1745
    .local v1, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x1

    :try_start_e
    const-string v2, "%s FelicaException failed not chip format== true"

    const-string v3, "806"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1746
    throw v1

    .line 1747
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_9
    move-exception v1

    .line 1748
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v2, "%s Exception failed Container Issue Information == true"

    .line 1749
    const-string v3, "807"

    .line 1748
    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1750
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 1751
    const/16 v3, 0x8

    .line 1750
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1759
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v12    # "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :cond_6
    const/4 v0, 0x7

    :try_start_f
    const-string v2, "%s"

    const-string v3, "005"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)V
    .locals 6
    .param p1, "permitList"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1338
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "%s In permitList = %s, listener = %s"

    const-string v3, "000"

    invoke-static {v1, v2, v3, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1341
    if-nez p2, :cond_0

    .line 1342
    const/4 v1, 0x1

    const-string v2, "%s listener == null"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1346
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v1, p1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 1347
    const/4 v1, 0x1

    const-string v2, "%s permitList.length > MAX_PERMIT_LIST_SIZE"

    const-string v3, "801"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1348
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The size of permit list exceeds the maximum value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1353
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-eqz v1, :cond_5

    .line 1354
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1356
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    if-eqz v1, :cond_6

    .line 1357
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1359
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1360
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1361
    const/4 v1, 0x1

    .line 1362
    const-string v2, "%s activatedApp.getPID(UID) == Binder.getCallingPid(Uid)"

    const-string v3, "802"

    .line 1361
    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1364
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 1365
    const/16 v3, 0x31

    .line 1364
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1

    .line 1367
    :cond_2
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "003"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1369
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v1

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1370
    const/4 v1, 0x1

    .line 1371
    const-string v2, "%s activatedApp.getPID(UID) == Binder.getCallingPid(Uid)"

    const-string v3, "803"

    .line 1370
    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1373
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 1374
    const/16 v3, 0x30

    new-instance v4, Lcom/felicanetworks/mfc/AppInfo;

    .line 1375
    iget-object v5, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfc/AppInfo;-><init>(I)V

    .line 1373
    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IILcom/felicanetworks/mfc/AppInfo;)V

    throw v1

    .line 1377
    :cond_3
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "005"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1380
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    if-nez v1, :cond_5

    .line 1382
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v1, :cond_4

    .line 1383
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "006"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1384
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 1386
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V

    .line 1432
    :cond_5
    :goto_0
    new-instance v1, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-direct {v1, p0}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    .line 1433
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->setPID(I)V

    .line 1434
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->setUID(I)V

    .line 1437
    new-instance v0, Lcom/felicanetworks/mfc/Felica$ActivateThread;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    .line 1440
    .local v0, "activateThread":Lcom/felicanetworks/mfc/Felica$ActivateThread;
    iput-object p1, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitList:[Ljava/lang/String;

    .line 1441
    iput-object p2, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->felicaEventListner:Lcom/felicanetworks/mfc/IFelicaEventListener;

    .line 1444
    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    .line 1447
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->start()V

    .line 1449
    const/4 v1, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    monitor-exit p0

    return-void

    .line 1393
    .end local v0    # "activateThread":Lcom/felicanetworks/mfc/Felica$ActivateThread;
    :cond_6
    const/4 v1, 0x7

    :try_start_2
    const-string v2, "%s"

    const-string v3, "007"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1395
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1396
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1397
    const/4 v1, 0x1

    .line 1398
    const-string v2, "%s activatedApp.getPID(UID) == Binder.getCallingPid(Uid)"

    const-string v3, "804"

    .line 1397
    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1400
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 1401
    const/16 v3, 0x2a

    .line 1400
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1

    .line 1403
    :cond_7
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "008"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1405
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v1

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1406
    const/4 v1, 0x1

    .line 1407
    const-string v2, "%s activatedApp.getPID(UID) == Binder.getCallingPid(Uid)"

    const-string v3, "805"

    .line 1406
    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1409
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 1410
    const/16 v3, 0x27

    new-instance v4, Lcom/felicanetworks/mfc/AppInfo;

    .line 1411
    iget-object v5, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfc/AppInfo;-><init>(I)V

    .line 1409
    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IILcom/felicanetworks/mfc/AppInfo;)V

    throw v1

    .line 1415
    :cond_8
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    if-nez v1, :cond_5

    .line 1417
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "009"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1418
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v1, :cond_9

    .line 1419
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "010"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1420
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 1422
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public cancelOffline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6385
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 6389
    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpenedNosync()V

    .line 6390
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 6391
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhocNosync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6397
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    if-nez v1, :cond_0

    .line 6405
    :goto_0
    return-void

    .line 6392
    :catch_0
    move-exception v0

    .line 6394
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x4

    const-string v2, "cancelOffline is denied."

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 6401
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->cancelOffline()V

    .line 6402
    sget-object v2, Lcom/felicanetworks/mfc/Felica;->instance:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v2

    .line 6403
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->finishCancel()V

    .line 6402
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public changeFalpUser(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 6833
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-eqz v0, :cond_0

    .line 6834
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    iput p1, v0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    .line 6835
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    iput p2, v0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->uid:I

    .line 6837
    :cond_0
    return-void
.end method

.method checkAccessNodeCodeList(I[I)V
    .locals 4
    .param p1, "currentSystemCode"    # I
    .param p2, "nodeCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 4229
    const-string v0, "%s In currentSystemCode = %s : nodeCodeList = %s"

    const-string v1, "000"

    .line 4230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4229
    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "%s"
    const-string v1, "XXX checkAccessNodeCodeList dummy return"
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    return-void

    .line 4233
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    invoke-static {p1, p2, v0}, Lcom/felicanetworks/mfc/AccessRightChecker;->checkNodeCodeList(I[ILcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 4236
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4237
    return-void
.end method

.method public declared-synchronized checkAccessRight(I)V
    .locals 4
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const-string v1, "%s In category = %s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "%s"
    const-string v1, "XXX checkAccessRight dummy return"
    invoke-static {v0, v3, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    return-void

    .line 4154
    monitor-enter p0

    :try_start_0
    .line 4157
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    invoke-static {p1, v0}, Lcom/felicanetworks/mfc/AccessRightChecker;->check(ILcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 4160
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4161
    monitor-exit p0

    return-void

    .line 4154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method checkAccessSystemCode(I)V
    .locals 4
    .param p1, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 4188
    const-string v0, "%s In systemCode = %s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "%s"
    const-string v1, "XXX checkAccessSystemCode dummy return"
    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    return-void

    .line 4191
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    invoke-static {p1, v0}, Lcom/felicanetworks/mfc/AccessRightChecker;->checkSystemCode(ILcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 4194
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4195
    return-void
.end method

.method checkActivated()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 4011
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4013
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V

    .line 4014
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivateWorker()V

    .line 4016
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4018
    return-void
.end method

.method public declared-synchronized checkClosedinStarting()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 3767
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->felica_close_in_fsc_starting:Z

    if-eqz v0, :cond_0

    .line 3768
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    .line 3769
    const/4 v2, 0x1

    .line 3768
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3767
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3771
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkNotAdhoc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6428
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhocNosync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6429
    monitor-exit p0

    return-void

    .line 6428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkOnlineAccess()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 3803
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3806
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V

    .line 3809
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v1, :cond_0

    .line 3810
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 3811
    const/4 v3, 0x1

    .line 3810
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3803
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3814
    :cond_0
    :try_start_1
    new-instance v0, Lcom/felicanetworks/mfc/AccessRightChecker;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/AccessRightChecker;-><init>()V

    .line 3817
    .local v0, "accessRightChecker":Lcom/felicanetworks/mfc/AccessRightChecker;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/AccessRightChecker;->check(ILcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 3822
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->fsc_starting:Z

    .line 3823
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->felica_close_in_fsc_starting:Z

    .line 3825
    const/4 v1, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3827
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkOpened()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 3730
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpenedNosync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3731
    monitor-exit p0

    return-void

    .line 3730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method checkPidUid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 3969
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3971
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/Felica;->checkPidUid(II)V

    .line 3973
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3974
    return-void
.end method

.method checkPidUid(II)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3920
    const-string v1, "%s In pid = %d uid = %d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3922
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-nez v1, :cond_0

    .line 3923
    const-string v1, "%s activatedApp == null"

    const-string v2, "800"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3924
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v1, v7, v8}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1

    .line 3928
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 3929
    :cond_1
    const/4 v1, 0x1

    const-string v2, "%s activatedApp.getPID() = %d, activatedApp.getUID() = %d"

    .line 3930
    const-string v3, "801"

    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v4}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3929
    invoke-static {v1, v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3931
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 3932
    const/4 v3, 0x5

    .line 3931
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3934
    :catch_0
    move-exception v0

    .line 3935
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "%s NullPointerException"

    const-string v2, "802"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3936
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v1, v7, v8}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1

    .line 3940
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :cond_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3942
    return-void
.end method

.method checkSelectedInterfaceWired()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 4116
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4118
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-eqz v0, :cond_0

    .line 4119
    const/4 v0, 0x1

    const-string v1, "%s not interface wired"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4120
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    .line 4121
    const/16 v2, 0x36

    .line 4120
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 4124
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4125
    return-void
.end method

.method public declared-synchronized clearAllowFalpWhileUsingMfc(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6787
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 6788
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 6790
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->checkPidUid(II)V

    .line 6792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->mAllowFalpWhileUsingMfc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6796
    monitor-exit p0

    return-void

    .line 6787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1792
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1794
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 1795
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 1799
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc_starting:Z

    if-eqz v0, :cond_0

    .line 1800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->felica_close_in_fsc_starting:Z

    .line 1803
    :cond_0
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    monitor-exit p0

    return-void

    .line 1792
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized completeFalp()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6684
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "completeFalp called. %b %d %b"

    iget-boolean v4, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6687
    iget-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    if-nez v2, :cond_0

    .line 6688
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x2

    .line 6689
    const/4 v4, 0x3

    .line 6688
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6684
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 6694
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    .line 6695
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    .line 6699
    const/4 v1, 0x1

    .line 6700
    .local v1, "isResetSucceeded":Z
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-eqz v2, :cond_2

    .line 6701
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v2

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6702
    const/4 v2, 0x4

    const-string v3, "Target App alerady died."

    invoke-static {v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6703
    iget-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v2, :cond_1

    .line 6704
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "006"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6705
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 6707
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V

    .line 6712
    :cond_2
    iget-boolean v2, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v2, :cond_3

    .line 6713
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6723
    :goto_0
    monitor-exit p0

    return v1

    .line 6716
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->reset()V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6717
    :catch_0
    move-exception v0

    .line 6718
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v1, 0x0

    goto :goto_0

    .line 6719
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;
    .locals 6
    .param p1, "oe"    # Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x4

    .line 5962
    const-string v0, "%s In OfflineException = %s type = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5964
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5965
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    return-object v0
.end method

.method protected convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;
    .locals 10
    .param p1, "oe"    # Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "supportedCode"    # [I
    .param p5, "target"    # I

    .prologue
    .line 6017
    const/4 v0, 0x4

    .line 6018
    const-string v1, "%s In OfflineException = %s id = %d type = %d supportedCode = %s target = %d"

    .line 6019
    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v3, p1

    move-object v6, p4

    .line 6017
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6021
    const/4 v8, 0x0

    .line 6022
    .local v8, "fe":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6081
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "011"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6082
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x1

    invoke-direct {v8, v0, p3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    .line 6086
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    :cond_0
    :goto_0
    const/4 v0, 0x4

    const-string v1, "%s return fe= %s"

    const-string v2, "999"

    invoke-static {v0, v1, v2, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6087
    return-object v8

    .line 6025
    :pswitch_0
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6026
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x3

    .line 6027
    const/4 v1, 0x6

    .line 6026
    invoke-direct {v8, v0, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    .line 6028
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    goto :goto_0

    .line 6031
    :pswitch_1
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6035
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v8

    .line 6036
    goto :goto_0

    .line 6040
    :pswitch_2
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "003"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6042
    if-eqz p4, :cond_5

    .line 6043
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "004"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6045
    if-nez p5, :cond_4

    .line 6046
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "005"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6047
    array-length v0, p4

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    array-length v0, p4

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 6048
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "006"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6050
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, p4

    if-lt v9, v0, :cond_2

    .line 6060
    .end local v9    # "i":I
    :cond_1
    :goto_2
    if-nez v8, :cond_0

    .line 6061
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "008"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6062
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v0

    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v1

    invoke-direct {v8, p2, p3, v0, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    .line 6064
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    goto :goto_0

    .line 6051
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v0

    aget v1, p4, v9

    if-ne v0, v1, :cond_3

    .line 6052
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "007"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6053
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    add-int/lit8 v0, v9, 0x1

    aget v0, p4, v0

    .line 6054
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v1

    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v2

    .line 6053
    invoke-direct {v8, p2, v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    .line 6055
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    goto :goto_2

    .line 6050
    :cond_3
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 6065
    .end local v9    # "i":I
    :cond_4
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "009"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6067
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v0

    invoke-virtual {p1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v1

    invoke-direct {v8, p2, p3, v0, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    .line 6069
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    goto/16 :goto_0

    .line 6070
    :cond_5
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "010"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6072
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x1

    invoke-direct {v8, v0, p3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    .line 6074
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    goto/16 :goto_0

    .line 6076
    :pswitch_3
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "012"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6077
    new-instance v8, Lcom/felicanetworks/mfc/FelicaException;

    .end local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/16 v0, 0x37

    invoke-direct {v8, p2, v0}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    .line 6078
    .restart local v8    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    goto/16 :goto_0

    .line 6022
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized doClose(Z)V
    .locals 6
    .param p1, "isCheckProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1833
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In isCheckProcess = %s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1835
    const/4 v0, 0x2

    const-string v1, "%s, isCheckProcess = %s, callingPid=%d, callingUid=%d"

    const-string v2, "700"

    .line 1836
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1835
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1838
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1839
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1841
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1844
    :cond_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v0, :cond_1

    .line 1845
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    :goto_0
    monitor-exit p0

    return-void

    .line 1849
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    if-eqz v0, :cond_2

    .line 1850
    const/4 v0, 0x2

    const-string v1, "%s, force stop online"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1852
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FSC;->kill()V

    .line 1856
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->close()V

    .line 1859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    .line 1860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 1861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    .line 1862
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    .line 1863
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 1864
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 1866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    .line 1867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->appIdentifyCode:Ljava/lang/String;

    .line 1869
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    .line 1873
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    .line 1875
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doCloseNoReset(Z)V
    .locals 6
    .param p1, "isCheckProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 7022
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In isCheckProcess = %s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7024
    const/4 v0, 0x2

    const-string v1, "%s, isCheckProcess = %s, callingPid=%d, callingUid=%d"

    const-string v2, "700"

    .line 7025
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7024
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7027
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7028
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 7030
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 7033
    :cond_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v0, :cond_1

    .line 7034
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7062
    :goto_0
    monitor-exit p0

    return-void

    .line 7038
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    if-eqz v0, :cond_2

    .line 7039
    const/4 v0, 0x2

    const-string v1, "%s, force stop online"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 7041
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FSC;->kill()V

    .line 7044
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->closeNoReset()V

    .line 7047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    .line 7048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 7049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    .line 7050
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    .line 7051
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 7052
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 7054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    .line 7055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->appIdentifyCode:Ljava/lang/String;

    .line 7057
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    .line 7060
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    .line 7061
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doInactivateFelica(Z)V
    .locals 5
    .param p1, "isCheckProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1516
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "%s In isCheckProcess = %s"

    const-string v3, "000"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1518
    if-eqz p1, :cond_0

    .line 1519
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1522
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V

    .line 1525
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 1528
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v1, :cond_1

    .line 1529
    const/4 v1, 0x1

    const-string v2, "%s opened == true"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1530
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x2

    .line 1531
    const/16 v3, 0x25

    .line 1530
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1534
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    if-eqz v1, :cond_3

    .line 1535
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->interrupt()V

    .line 1539
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    iget-object v1, v1, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    if-eqz v1, :cond_2

    .line 1540
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    iget-object v1, v1, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->stopVerification()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1546
    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activateWorker:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    .line 1550
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    .line 1552
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    .line 1555
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    .line 1557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->mAllowFalpWhileUsingMfc:Z

    .line 1560
    const/4 v1, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1562
    monitor-exit p0

    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_4
    const-string v2, "%s %s"

    const-string v3, "801"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized doReset(Z)V
    .locals 8
    .param p1, "isCheckState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 3639
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s isCheckState=%b"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3641
    if-eqz p1, :cond_0

    .line 3643
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 3644
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3649
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->reset()V

    .line 3652
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    .line 3653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    .line 3654
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    .line 3655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    .line 3657
    const/4 v0, 0x7

    .line 3658
    const-string v1, "%s nodeCodeSize = %d, selected = %b, target = %d, systemInfo = %s"

    const-string v2, "001"

    .line 3659
    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    .line 3657
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3669
    const/4 v0, 0x4

    :try_start_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3671
    monitor-exit p0

    return-void

    .line 3660
    :catch_0
    move-exception v7

    .line 3661
    .local v7, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v0, 0x1

    :try_start_3
    const-string v1, "%s OfflineException"

    const-string v2, "801"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3662
    const/16 v0, 0x2c

    invoke-virtual {p0, v7, v0}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3639
    .end local v7    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3663
    :catch_1
    move-exception v7

    .line 3664
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    :try_start_4
    const-string v1, "%s Exception"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3665
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3666
    const/16 v2, 0x2c

    .line 3665
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized executeFelicaCommand([BII)[B
    .locals 7
    .param p1, "commandPacket"    # [B
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6931
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "%s"

    const-string v5, "START"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6934
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 6937
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    array-length v3, p1

    const/16 v4, 0xfe

    if-le v3, v4, :cond_1

    .line 6938
    :cond_0
    const/4 v3, 0x1

    const-string v4, "invalid Command"

    invoke-static {v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6939
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified Command is null or invalid size."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6931
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6941
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 6942
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 6945
    const/4 v3, 0x4

    const-string v4, "In felicaCommand = %s timeout = %d retryCount = %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, p1, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6948
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 6949
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 6950
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6954
    const/4 v3, 0x5

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6967
    const/4 v3, 0x7

    :try_start_3
    const-string v4, "%s"

    const-string v5, "call ChipController.executeFelicaCommand"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6968
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 6969
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v5

    .line 6968
    invoke-virtual {v3, p1, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->executeFelicaCommand([BII)[B

    move-result-object v2

    .line 6971
    .local v2, "responsePacket":[B
    const/4 v3, 0x4

    const-string v4, "%s return felicaResponse = %s"

    const-string v5, "END"

    invoke-static {v3, v4, v5, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6972
    monitor-exit p0

    return-object v2

    .line 6955
    .end local v2    # "responsePacket":[B
    :catch_0
    move-exception v1

    .line 6956
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    :try_start_4
    const-string v4, "%s"

    const-string v5, "NumberFormatException"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6957
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 6958
    const/16 v5, 0x3f

    .line 6957
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 6974
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 6975
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 6976
    const/4 v3, 0x2

    const-string v4, "%s"

    const-string v5, "OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6977
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x3

    .line 6978
    const/16 v5, 0x3a

    .line 6977
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 6981
    :cond_2
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "OfflineException"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6983
    const/16 v3, 0x3f

    invoke-virtual {p0, v0, v3}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v3

    throw v3

    .line 6984
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_2
    move-exception v0

    .line 6985
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "Exception"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6986
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 6987
    const/16 v5, 0x3f

    .line 6986
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getActivatedApp()Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3983
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3984
    const-string v0, "%s return activatedApp "

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3985
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    return-object v0
.end method

.method public declared-synchronized getAllowFalpWhileUsingMfc()Z
    .locals 1

    .prologue
    .line 6769
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->mAllowFalpWhileUsingMfc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppIdentificationCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5937
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5939
    const/4 v0, 0x4

    const-string v1, "%s return appIdentifyCode= %s"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->appIdentifyCode:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5940
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->appIdentifyCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockCountInformation([III)[Lcom/felicanetworks/mfc/BlockCountInformation;
    .locals 10
    .param p1, "nodeCodeList"    # [I
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 4831
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4834
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 4837
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v6, :cond_0

    array-length v0, p1

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    .line 4838
    :cond_0
    const/4 v0, 0x1

    const-string v2, "%s invalid NodeCodeList"

    const-string v3, "800"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4839
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4841
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_1
    array-length v0, p1

    if-lt v8, v0, :cond_2

    .line 4844
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 4845
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 4848
    const/4 v0, 0x4

    const-string v1, "%s In nodeCodeList = %s timeout = %d retryCount = %d"

    const-string v2, "001"

    .line 4849
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    .line 4848
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4852
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 4853
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 4854
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 4857
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4861
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4874
    :try_start_3
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v6, :cond_3

    .line 4875
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4876
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 4877
    const/4 v1, 0x1

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    .line 4878
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move-object v4, p1

    .line 4876
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestBlockInformationEx(II[B[III)[Lcom/felicanetworks/mfc/BlockCountInformation;

    move-result-object v7

    .line 4886
    .local v7, "blockInfo":[Lcom/felicanetworks/mfc/BlockCountInformation;
    :goto_1
    const/4 v0, 0x4

    const-string v2, "%s return blockInfo = %d"

    const-string v3, "999"

    invoke-static {v0, v2, v3, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4887
    monitor-exit p0

    return-object v7

    .line 4842
    .end local v7    # "blockInfo":[Lcom/felicanetworks/mfc/BlockCountInformation;
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    aget v2, p1, v8

    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkServiceCode(II)V

    .line 4841
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4862
    :catch_0
    move-exception v9

    .line 4863
    .local v9, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "803"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4864
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 4865
    const/16 v3, 0x2b

    .line 4864
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4880
    .end local v9    # "ne":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v0, 0x7

    :try_start_5
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4881
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 4882
    const/4 v1, 0x0

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    .line 4883
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move-object v4, p1

    .line 4881
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestBlockInformationEx(II[B[III)[Lcom/felicanetworks/mfc/BlockCountInformation;
    :try_end_5
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .restart local v7    # "blockInfo":[Lcom/felicanetworks/mfc/BlockCountInformation;
    goto :goto_1

    .line 4889
    .end local v7    # "blockInfo":[Lcom/felicanetworks/mfc/BlockCountInformation;
    :catch_1
    move-exception v1

    .line 4891
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_6
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 4892
    const/4 v0, 0x2

    const-string v2, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v3, "700"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4893
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x3

    .line 4894
    const/16 v3, 0x3a

    .line 4893
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 4898
    :cond_4
    const/4 v0, 0x0

    new-array v4, v0, [I

    .line 4899
    .local v4, "supportCodes":[I
    const/4 v0, 0x1

    const-string v2, "%s OfflineException"

    const-string v3, "801"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4903
    const/16 v2, 0xd

    .line 4904
    const/16 v3, 0x2b

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    move-object v0, p0

    .line 4903
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 4905
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .end local v4    # "supportCodes":[I
    :catch_2
    move-exception v1

    .line 4906
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "802"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4907
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 4908
    const/16 v3, 0x2b

    .line 4907
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized getContainerId(II)[B
    .locals 9
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 5326
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "%s In timeout = %d retryCount = %d"

    const-string v5, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5329
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 5332
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 5333
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 5336
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 5337
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 5338
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5342
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5355
    :try_start_2
    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v3, v8, :cond_0

    .line 5356
    const/4 v3, 0x7

    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5357
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v4, 0x1

    .line 5358
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    .line 5357
    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getContainerID(III)[B

    move-result-object v0

    .line 5365
    .local v0, "ContainerId":[B
    :goto_0
    const/4 v3, 0x4

    const-string v4, "%s return ContainerId = %d"

    const-string v5, "999"

    invoke-static {v3, v4, v5, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5366
    monitor-exit p0

    return-object v0

    .line 5343
    .end local v0    # "ContainerId":[B
    :catch_0
    move-exception v2

    .line 5344
    .local v2, "ne":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    :try_start_3
    const-string v4, "%s Exception"

    const-string v5, "802"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5345
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 5346
    const/16 v5, 0x2e

    .line 5345
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5326
    .end local v2    # "ne":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5360
    :cond_0
    const/4 v3, 0x7

    :try_start_4
    const-string v4, "%s"

    const-string v5, "002"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5361
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v4, 0x0

    .line 5362
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    .line 5361
    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getContainerID(III)[B
    :try_end_4
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .restart local v0    # "ContainerId":[B
    goto :goto_0

    .line 5368
    .end local v0    # "ContainerId":[B
    :catch_1
    move-exception v1

    .line 5369
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    :try_start_5
    const-string v4, "%s OfflineException"

    const-string v5, "800"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5371
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 5372
    const/4 v3, 0x2

    const-string v4, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5373
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x3

    .line 5374
    const/16 v5, 0x3a

    .line 5373
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 5380
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p0, v1, v3}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v3

    throw v3

    .line 5381
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_2
    move-exception v1

    .line 5382
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "%s Exception"

    const-string v5, "801"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5383
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 5384
    const/16 v5, 0x2e

    .line 5383
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getContainerIssueInformation(II)[B
    .locals 8
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2781
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "%s In timeout = %d retryCount = %d"

    const-string v4, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2784
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2787
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 2788
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 2791
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2792
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2793
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2796
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2803
    :try_start_1
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v2, v7, :cond_0

    .line 2804
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2805
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 2806
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 2807
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    .line 2805
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getContainerIssueInfo(I[BII)[B

    move-result-object v0

    .line 2815
    .local v0, "containerIssueInfo":[B
    :goto_0
    const/4 v2, 0x4

    const-string v3, "%s return containerIssueInfo = %s"

    const-string v4, "999"

    invoke-static {v2, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2816
    monitor-exit p0

    return-object v0

    .line 2809
    .end local v0    # "containerIssueInfo":[B
    :cond_0
    const/4 v2, 0x7

    :try_start_2
    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2810
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 2811
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 2812
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    .line 2810
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getContainerIssueInfo(I[BII)[B
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "containerIssueInfo":[B
    goto :goto_0

    .line 2819
    .end local v0    # "containerIssueInfo":[B
    :catch_0
    move-exception v1

    .line 2820
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_3
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2839
    :pswitch_0
    const/4 v2, 0x1

    const-string v3, "%s OfflineException"

    const-string v4, "802"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2840
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 2841
    const/16 v4, 0x1d

    .line 2840
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2781
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2822
    .restart local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :pswitch_1
    const/4 v2, 0x1

    :try_start_4
    const-string v3, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2823
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x3

    .line 2824
    const/4 v4, 0x6

    .line 2823
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 2826
    :pswitch_2
    const/4 v2, 0x1

    const-string v3, "%s OfflineException.TYPE_TIMEOUT_OCCURRED"

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2830
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v2

    throw v2

    .line 2834
    :pswitch_3
    const/4 v2, 0x2

    const-string v3, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v4, "700"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2835
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x3

    .line 2836
    const/16 v4, 0x3a

    .line 2835
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 2844
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v1

    .line 2845
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception"

    const-string v4, "803"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2846
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 2847
    const/16 v4, 0x1d

    .line 2846
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2820
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 6179
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6181
    const/4 v0, 0x4

    const-string v1, "%s return context = %s"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6182
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentState()I
    .locals 2

    .prologue
    .line 6803
    monitor-enter p0

    const/4 v0, 0x0

    .line 6806
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-nez v1, :cond_1

    .line 6807
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6808
    add-int/lit8 v0, v0, 0x8

    :cond_0
    move v1, v0

    .line 6826
    :goto_0
    monitor-exit p0

    return v1

    .line 6812
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 6815
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    if-eqz v1, :cond_2

    .line 6816
    const/4 v1, 0x4

    goto :goto_0

    .line 6818
    :cond_2
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    if-eqz v1, :cond_3

    .line 6819
    add-int/lit8 v0, v0, 0x8

    .line 6822
    :cond_3
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 6823
    add-int/lit8 v0, v0, 0x2

    :cond_4
    move v1, v0

    .line 6826
    goto :goto_0

    .line 6803
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getFeliCaChip()Lcom/felicanetworks/felica/FeliCaChip;
    .locals 1

    .prologue
    .line 3701
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3702
    const/4 v0, 0x0

    .line 3704
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getFeliCaChip()Lcom/felicanetworks/felica/FeliCaChip;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 3701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getICCode()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2494
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2497
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2500
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2501
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2502
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2505
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 2507
    const/4 v0, 0x4

    const-string v1, "%s return ICCode = %s"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getPMm()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2508
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getPMm()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getPMm()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIDm()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2438
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2441
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2444
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2445
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2446
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2449
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 2451
    const/4 v0, 0x4

    const-string v1, "%s return IDm = %s"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2452
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterface()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2386
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2389
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2392
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2393
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2394
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2397
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 2399
    const/4 v0, 0x4

    const-string v1, "%s return target = %s"

    const-string v2, "999"

    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2400
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyVersion(III)I
    .locals 12
    .param p1, "serviceCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 2600
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In serviceCode = %d timeout = %d retryCount = %d"

    const-string v2, "000"

    .line 2601
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2600
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2604
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2607
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    invoke-virtual {v0, p1, v1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkServiceCode(II)V

    .line 2608
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 2609
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 2612
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2613
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2614
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2617
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 2619
    const/4 v7, 0x1

    .line 2620
    .local v7, "checkFlag":Z
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2621
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2622
    const v0, 0xffff

    and-int/2addr v0, p1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 2623
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2624
    const/4 v7, 0x0

    .line 2635
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 2636
    const/4 v0, 0x7

    :try_start_1
    const-string v1, "%s"

    const-string v2, "005"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2637
    const/4 v0, 0x1

    new-array v10, v0, [I

    const/4 v0, 0x0

    aput p1, v10, v0

    .line 2638
    .local v10, "nodeCodeList":[I
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getSystemCode()I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/felicanetworks/mfc/Felica;->checkAccessNodeCodeList(I[I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2651
    .end local v10    # "nodeCodeList":[I
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v6, :cond_3

    .line 2652
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "006"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2653
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x1

    .line 2654
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 2655
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    .line 2653
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestService(II[B[III)[I

    move-result-object v0

    .line 2655
    const/4 v1, 0x0

    .line 2653
    aget v11, v0, v1

    .line 2663
    .local v11, "version":I
    :goto_1
    const v0, 0xffff

    if-ne v11, v0, :cond_4

    .line 2664
    const/4 v0, 0x1

    const-string v1, "%s FelicaException.TYPE_SERVICE_NOT_FOUND"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2666
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x4

    .line 2667
    const/16 v2, 0xb

    .line 2666
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_2
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2672
    .end local v11    # "version":I
    :catch_0
    move-exception v8

    .line 2673
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x1

    :try_start_3
    const-string v1, "%s FelicaException"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2674
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2600
    .end local v7    # "checkFlag":Z
    .end local v8    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2627
    .restart local v7    # "checkFlag":Z
    :cond_2
    const/4 v0, 0x7

    :try_start_4
    const-string v1, "%s"

    const-string v2, "003"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2628
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2629
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "004"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2630
    const/4 v7, 0x0

    goto :goto_0

    .line 2640
    :catch_1
    move-exception v9

    .line 2641
    .local v9, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "805"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2642
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2643
    const/16 v2, 0xa

    .line 2642
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2657
    .end local v9    # "ne":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v0, 0x7

    :try_start_5
    const-string v1, "%s"

    const-string v2, "007"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2658
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    .line 2659
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 2660
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    .line 2658
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestService(II[B[III)[I

    move-result-object v0

    .line 2660
    const/4 v1, 0x0

    .line 2658
    aget v11, v0, v1

    .restart local v11    # "version":I
    goto :goto_1

    .line 2670
    :cond_4
    const/4 v0, 0x4

    const-string v1, "%s return version = %s"

    const-string v2, "999"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2671
    monitor-exit p0

    return v11

    .line 2675
    .end local v11    # "version":I
    :catch_2
    move-exception v8

    .line 2676
    .local v8, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_6
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2695
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "803"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2696
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2697
    const/16 v2, 0xa

    .line 2696
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2678
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v2, "801"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2679
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2680
    const/4 v2, 0x6

    .line 2679
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2682
    :pswitch_2
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_TIMEOUT_OCCURRED"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2686
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 2690
    :pswitch_3
    const/4 v0, 0x2

    const-string v1, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2691
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2692
    const/16 v2, 0x3a

    .line 2691
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2699
    .end local v8    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_3
    move-exception v8

    .line 2700
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "804"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2701
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2702
    const/16 v2, 0xa

    .line 2701
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2676
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getNodeInformation(III)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 9
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 4481
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In parentAreaCode = %d timeout = %d retryCount = %d"

    const-string v2, "000"

    .line 4482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4481
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4485
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 4488
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 4489
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 4490
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 4493
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 4494
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 4495
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 4498
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4502
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4515
    :try_start_2
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v6, :cond_0

    .line 4516
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4517
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x1

    .line 4518
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 4519
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move v4, p1

    .line 4517
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestCodeList(II[BIII)Lcom/felicanetworks/mfc/NodeInformation;

    move-result-object v8

    .line 4526
    .local v8, "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    :goto_0
    const/4 v0, 0x4

    const-string v2, "%s return nodeInformation = %d"

    const-string v3, "999"

    invoke-static {v0, v2, v3, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4527
    monitor-exit p0

    return-object v8

    .line 4503
    .end local v8    # "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    :catch_0
    move-exception v7

    .line 4504
    .local v7, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    :try_start_3
    const-string v2, "%s Exception"

    const-string v3, "802"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4505
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 4506
    const/16 v3, 0x22

    .line 4505
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4481
    .end local v7    # "ne":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4521
    :cond_0
    const/4 v0, 0x7

    :try_start_4
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4522
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    .line 4523
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 4524
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move v4, p1

    .line 4522
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestCodeList(II[BIII)Lcom/felicanetworks/mfc/NodeInformation;
    :try_end_4
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .restart local v8    # "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    goto :goto_0

    .line 4528
    .end local v8    # "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    :catch_1
    move-exception v1

    .line 4530
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_5
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 4531
    const/4 v0, 0x2

    const-string v2, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v3, "700"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4532
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x3

    .line 4533
    const/16 v3, 0x3a

    .line 4532
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 4537
    :cond_1
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 4541
    .local v4, "supportCodes":[I
    const/4 v0, 0x1

    const-string v2, "%s OfflineException"

    const-string v3, "800"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4545
    const/16 v2, 0x9

    .line 4546
    const/16 v3, 0x22

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    move-object v0, p0

    .line 4545
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 4547
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .end local v4    # "supportCodes":[I
    :catch_2
    move-exception v1

    .line 4548
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "801"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4549
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 4550
    const/16 v3, 0x22

    .line 4549
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4537
    :array_0
    .array-data 4
        0xa6
        0xb
        0xd1
        0x21
    .end array-data
.end method

.method public getPollingLockObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6857
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mPollingLock:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 9
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 4664
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In parentAreaCode = %d timeout = %d retryCount = %d"

    const-string v2, "000"

    .line 4665
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4664
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4668
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 4671
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 4672
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 4673
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 4676
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 4677
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 4678
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 4681
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 4684
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelectedInterfaceWired()V

    .line 4686
    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput p1, v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4689
    .local v6, "areaCodeList":[I
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getSystemCode()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/felicanetworks/mfc/Felica;->checkAccessNodeCodeList(I[I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4701
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v2

    .line 4702
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v5

    .line 4701
    invoke-virtual {v0, v2, p1, v3, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestMaskedCodeList([BIII)Lcom/felicanetworks/mfc/NodeInformation;

    move-result-object v8

    .line 4704
    .local v8, "privacyNodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    const/4 v0, 0x4

    const-string v2, "%s return privacyNodeInformation = %d"

    const-string v3, "999"

    invoke-static {v0, v2, v3, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4706
    monitor-exit p0

    return-object v8

    .line 4690
    .end local v8    # "privacyNodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    :catch_0
    move-exception v7

    .line 4691
    .local v7, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    :try_start_3
    const-string v2, "%s Exception"

    const-string v3, "802"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4692
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 4693
    const/16 v3, 0x23

    .line 4692
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4664
    .end local v6    # "areaCodeList":[I
    .end local v7    # "ne":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4709
    .restart local v6    # "areaCodeList":[I
    :catch_1
    move-exception v1

    .line 4711
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_4
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 4712
    const/4 v0, 0x2

    const-string v2, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v3, "700"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4713
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x3

    .line 4714
    const/16 v3, 0x3a

    .line 4713
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 4717
    :cond_0
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 4721
    .local v4, "supportCodes":[I
    const/4 v0, 0x1

    const-string v2, "%s OfflineException"

    const-string v3, "800"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4722
    const/16 v2, 0xa

    .line 4723
    const/16 v3, 0x23

    .line 4724
    const/4 v5, 0x0

    move-object v0, p0

    .line 4722
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 4725
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .end local v4    # "supportCodes":[I
    :catch_2
    move-exception v1

    .line 4726
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "801"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4727
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 4728
    const/16 v3, 0x23

    .line 4727
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4717
    nop

    :array_0
    .array-data 4
        0xa6
        0xb
        0xd1
        0x21
    .end array-data
.end method

.method public declared-synchronized getPushNotificationListener()Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    .locals 4

    .prologue
    .line 5921
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5923
    const/4 v0, 0x4

    const-string v1, "%s return pushAppNotificationListener= %s"

    const-string v2, "999"

    .line 5924
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    .line 5923
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5925
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRFSState()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 4949
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4952
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 4955
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 4956
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4959
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getRFSState()Z

    move-result v1

    .line 4961
    .local v1, "rfsState":Z
    const/4 v2, 0x4

    const-string v3, "%s return rfsState = %s"

    const-string v4, "999"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4962
    monitor-exit p0

    return v1

    .line 4964
    .end local v1    # "rfsState":Z
    :catch_0
    move-exception v0

    .line 4965
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v2, 0x1

    :try_start_2
    const-string v3, "%s OfflineException"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4966
    const/16 v2, 0x33

    invoke-virtual {p0, v0, v2}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4949
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4967
    :catch_1
    move-exception v0

    .line 4968
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_3
    const-string v3, "%s Exception"

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4969
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 4970
    const/16 v4, 0x33

    .line 4969
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected getRetryCount()I
    .locals 1

    .prologue
    .line 1262
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    return v0
.end method

.method public declared-synchronized getSelectTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6358
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 6360
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 6358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2312
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2315
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2316
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2319
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2320
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2323
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 2325
    const/4 v0, 0x4

    const-string v1, "%s return systemCode = %s"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getSystemCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2326
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getSystemCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 2312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemCodeList(II)[I
    .locals 9
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 4318
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "%s In timeout = %d retryCount = %d"

    const-string v5, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4321
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 4324
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 4325
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 4328
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 4329
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 4330
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 4333
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4337
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4350
    :try_start_2
    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v3, v8, :cond_0

    .line 4351
    const/4 v3, 0x7

    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4352
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 4353
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v6

    .line 4354
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v7

    .line 4352
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestSystemCode(I[BII)[I

    move-result-object v2

    .line 4361
    .local v2, "systemCodeList":[I
    :goto_0
    const/4 v3, 0x4

    const-string v4, "%s return systemCodeList = %d"

    const-string v5, "999"

    invoke-static {v3, v4, v5, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4362
    monitor-exit p0

    return-object v2

    .line 4338
    .end local v2    # "systemCodeList":[I
    :catch_0
    move-exception v1

    .line 4339
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    :try_start_3
    const-string v4, "%s Exception"

    const-string v5, "802"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4340
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 4341
    const/16 v5, 0x2d

    .line 4340
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4318
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4356
    :cond_0
    const/4 v3, 0x7

    :try_start_4
    const-string v4, "%s"

    const-string v5, "002"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4357
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v4, 0x0

    .line 4358
    iget-object v5, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v6

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v7

    .line 4357
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->requestSystemCode(I[BII)[I
    :try_end_4
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .restart local v2    # "systemCodeList":[I
    goto :goto_0

    .line 4364
    .end local v2    # "systemCodeList":[I
    :catch_1
    move-exception v0

    .line 4366
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_5
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 4367
    const/4 v3, 0x2

    const-string v4, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4368
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x3

    .line 4369
    const/16 v5, 0x3a

    .line 4368
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 4372
    :cond_1
    const/4 v3, 0x1

    const-string v4, "%s OfflineException"

    const-string v5, "800"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4376
    const/16 v3, 0x2d

    invoke-virtual {p0, v0, v3}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v3

    throw v3

    .line 4377
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_2
    move-exception v0

    .line 4378
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "%s Exception"

    const-string v5, "801"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4379
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 4380
    const/16 v5, 0x2d

    .line 4379
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected getTimeout()I
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6192
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized inactivateFelica()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1480
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V

    .line 1484
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    monitor-exit p0

    return-void

    .line 1480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAliveProcess()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 4028
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4030
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-nez v0, :cond_0

    .line 4031
    const-string v0, "%s return false"

    const-string v1, "998"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4032
    const/4 v0, 0x0

    .line 4035
    :goto_0
    return v0

    .line 4034
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4035
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess(II)Z

    move-result v0

    goto :goto_0
.end method

.method isAliveProcess(II)Z
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x4

    .line 4051
    const-string v1, "%s In pid = %d, uid = %d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4053
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->isAppExisted(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4054
    const-string v1, "%s return true"

    const-string v2, "997"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4063
    :goto_0
    return v0

    .line 4057
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->isServiceExisted(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4058
    const-string v1, "%s return true"

    const-string v2, "998"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4062
    :cond_1
    const-string v0, "%s return false"

    const-string v1, "999"

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4063
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAppExisted(II)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 6260
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->isAppExisted(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public isAppExisted(Landroid/content/Context;II)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x4

    .line 6267
    const-string v5, "%s In pid = %d, uid = %d"

    const-string v6, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v5, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6272
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6274
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 6276
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 6277
    const-string v5, "%s return false"

    const-string v6, "997"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6290
    :goto_0
    return v4

    .line 6281
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 6289
    const-string v5, "%s return false"

    const-string v6, "999"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6282
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 6283
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_2

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p3, :cond_2

    .line 6284
    const-string v4, "%s return false"

    const-string v5, "998"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6285
    const/4 v4, 0x1

    goto :goto_0

    .line 6281
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public isSameFalpUser(II)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 6841
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-eqz v0, :cond_0

    .line 6842
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    iget v0, v0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    iget v0, v0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->uid:I

    if-ne v0, p2, :cond_0

    .line 6843
    const/4 v0, 0x1

    .line 6846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isServiceExisted(II)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 6211
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->isServiceExisted(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public isServiceExisted(Landroid/content/Context;II)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x4

    .line 6218
    const-string v5, "%s In pid = %d, uid = %d"

    const-string v6, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v5, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6223
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6225
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 6227
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 6228
    const-string v5, "%s return false"

    const-string v6, "997"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6241
    :goto_0
    return v4

    .line 6232
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 6240
    const-string v5, "%s return false"

    const-string v6, "999"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6233
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 6234
    .local v2, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v5, p2, :cond_2

    iget v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-ne v5, p3, :cond_2

    .line 6235
    const-string v4, "%s return true"

    const-string v5, "998"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6236
    const/4 v4, 0x1

    goto :goto_0

    .line 6232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1612
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->open(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    monitor-exit p0

    return-void

    .line 1612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized push(Lcom/felicanetworks/mfc/PushSegment;)V
    .locals 18
    .param p1, "pushSegment"    # Lcom/felicanetworks/mfc/PushSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 5449
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "%s In pushSegment = %s"

    const-string v4, "000"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5451
    const/4 v10, 0x1

    .line 5452
    .local v10, "checkPolling":Z
    const/4 v14, 0x0

    .line 5455
    .local v14, "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 5458
    if-nez p1, :cond_0

    .line 5459
    const/4 v2, 0x1

    const-string v3, "%s invalid pushSegment"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5460
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified parameter is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5449
    .end local v10    # "checkPolling":Z
    .end local v14    # "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5462
    .restart local v10    # "checkPolling":Z
    .restart local v14    # "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfc/PushSegment;->checkFormat()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5465
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getPushAnalyzer(Lcom/felicanetworks/mfc/PushSegment;)Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;

    move-result-object v15

    .line 5466
    .local v15, "pushAnalyserObj":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    const/4 v2, 0x1

    new-array v8, v2, [Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;

    const/4 v2, 0x0

    aput-object v15, v8, v2
    :try_end_2
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5470
    .local v8, "analyzer":[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    :try_start_3
    array-length v2, v8
    :try_end_3
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v13, v2, :cond_4

    .line 5485
    :try_start_4
    invoke-static {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getSerializeData([Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;)[B
    :try_end_4
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v17

    .line 5492
    .local v17, "serializeData":[B
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 5493
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 5494
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 5497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/felicanetworks/mfc/Felica;->target:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5499
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5501
    const/4 v10, 0x0

    .line 5502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    .line 5505
    :cond_1
    if-eqz v10, :cond_2

    .line 5506
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5509
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v3, 0x1

    .line 5510
    const v4, 0xffff

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5509
    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :try_end_6
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v14

    .line 5538
    :cond_2
    if-eqz v14, :cond_b

    .line 5541
    :try_start_7
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v3, 0xc0

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/felicanetworks/mfc/Felica;->isFaver15(Lcom/felicanetworks/felica/offlineimpl/SystemInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5542
    const/4 v2, 0x1

    const-string v3, "%s Exception"

    const-string v4, "811"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5543
    if-eqz v10, :cond_3

    .line 5545
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5548
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified parameter is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5472
    .end local v17    # "serializeData":[B
    :cond_4
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v4}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v4

    .line 5472
    invoke-static {v2, v3, v4}, Lcom/felicanetworks/felica/util/CommonSecurity;->getMfcCallerCandidate(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v9

    .line 5474
    .local v9, "candidate":[Ljava/lang/String;
    aget-object v2, v8, v13

    invoke-virtual {v2, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->checkSecurity([Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5470
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 5476
    .end local v9    # "candidate":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 5477
    .local v11, "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    :try_start_9
    invoke-virtual {v11}, Lcom/felicanetworks/felica/pushimpl/PushImplException;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 5478
    const/4 v2, 0x1

    const-string v3, "%s PushException"

    const-string v4, "811"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5479
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified parameter is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 5486
    .end local v8    # "analyzer":[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .end local v11    # "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    .end local v13    # "i":I
    .end local v15    # "pushAnalyserObj":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    :catch_1
    move-exception v11

    .line 5487
    .restart local v11    # "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    const/4 v2, 0x1

    :try_start_a
    const-string v3, "%s PushException"

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5488
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified parameter is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5481
    .restart local v8    # "analyzer":[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .restart local v13    # "i":I
    .restart local v15    # "pushAnalyserObj":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    :cond_5
    :try_start_b
    throw v11
    :try_end_b
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5511
    .end local v11    # "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    .restart local v17    # "serializeData":[B
    :catch_2
    move-exception v11

    .line 5513
    .local v11, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_c
    invoke-virtual {v11}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 5514
    const/4 v2, 0x2

    const-string v3, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    .line 5515
    const-string v4, "700"

    .line 5514
    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5517
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5518
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x3

    .line 5519
    const/16 v4, 0x3a

    .line 5518
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 5522
    :cond_6
    const/4 v2, 0x1

    const-string v3, "%s OfflineException"

    const-string v4, "803"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5524
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5528
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v2

    throw v2

    .line 5529
    .end local v11    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_3
    move-exception v11

    .line 5530
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception"

    const-string v4, "804"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5532
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5533
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 5534
    const/16 v4, 0x28

    .line 5533
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 5552
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "003"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 5555
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    const/16 v4, 0x7d0

    .line 5556
    const/4 v5, 0x0

    .line 5555
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->push([B[BII)I

    move-result v16

    .line 5559
    .local v16, "sendSize":I
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v16

    if-eq v0, v2, :cond_b

    .line 5560
    const/4 v2, 0x1

    const-string v3, "%s invalid send data size"

    const-string v4, "805"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5561
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 5562
    const/16 v4, 0x28

    .line 5561
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_d
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 5564
    .end local v16    # "sendSize":I
    :catch_4
    move-exception v11

    .line 5565
    .local v11, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v2, 0x1

    :try_start_e
    const-string v3, "%s OfflineException"

    const-string v4, "806"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5567
    if-eqz v10, :cond_8

    .line 5568
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "004"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5569
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5572
    :cond_8
    invoke-virtual {v11}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 5573
    const/4 v2, 0x2

    const-string v3, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    .line 5574
    const-string v4, "701"

    .line 5573
    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5575
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x3

    .line 5576
    const/16 v4, 0x3a

    .line 5575
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 5582
    :cond_9
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v2

    throw v2

    .line 5583
    .end local v11    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_5
    move-exception v11

    .line 5584
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception"

    const-string v4, "807"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5586
    if-eqz v10, :cond_a

    .line 5587
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "005"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5588
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5590
    :cond_a
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 5591
    const/16 v4, 0x28

    .line 5590
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 5598
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_b
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/felicanetworks/mfc/Felica;->isFaver15(Lcom/felicanetworks/felica/offlineimpl/SystemInfo;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v2

    if-eqz v2, :cond_c

    .line 5601
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    const/16 v4, 0x3e8

    .line 5602
    const/4 v5, 0x0

    .line 5601
    invoke-virtual {v2, v3, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->changeActiveInterface([BII)V
    :try_end_f
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 5635
    const-wide/16 v2, 0x7d0

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 5649
    :cond_c
    if-eqz v10, :cond_d

    .line 5650
    const/4 v2, 0x7

    :try_start_11
    const-string v3, "%s"

    const-string v4, "009"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5651
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5654
    :cond_d
    const/4 v2, 0x4

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 5655
    monitor-exit p0

    return-void

    .line 5603
    :catch_6
    move-exception v11

    .line 5604
    .local v11, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v2, 0x1

    :try_start_12
    const-string v3, "%s OfflineException"

    const-string v4, "808"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5606
    if-eqz v10, :cond_e

    .line 5607
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "006"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5608
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5611
    :cond_e
    invoke-virtual {v11}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_f

    .line 5612
    const/4 v2, 0x2

    const-string v3, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    .line 5613
    const-string v4, "702"

    .line 5612
    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5614
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x3

    .line 5615
    const/16 v4, 0x3a

    .line 5614
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 5621
    :cond_f
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v2

    throw v2

    .line 5622
    .end local v11    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_7
    move-exception v11

    .line 5623
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception"

    const-string v4, "809"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5625
    if-eqz v10, :cond_10

    .line 5626
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "007"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5627
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5629
    :cond_10
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 5630
    const/16 v4, 0x28

    .line 5629
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 5636
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v12

    .line 5637
    .local v12, "e1":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    const-string v3, "%s Exception"

    const-string v4, "810"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5639
    if-eqz v10, :cond_11

    .line 5640
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "008"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5641
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->turnOffRFPower()V

    .line 5643
    :cond_11
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 5644
    const/16 v4, 0x28

    .line 5643
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
.end method

.method public declared-synchronized read(Lcom/felicanetworks/mfc/BlockList;II)[Lcom/felicanetworks/mfc/Data;
    .locals 12
    .param p1, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3127
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In blockList = %s timeout = %d retryCount = %d"

    const-string v2, "000"

    .line 3128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    .line 3127
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3131
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 3134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3135
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s invalid blockList"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified BlockList is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3138
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockList;->checkFormat()V

    .line 3139
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 3140
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 3143
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 3144
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 3145
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 3148
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 3150
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockList;->size()I

    move-result v0

    new-array v11, v0, [I

    .line 3151
    .local v11, "nodeList":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lt v9, v0, :cond_2

    .line 3156
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getSystemCode()I

    move-result v0

    invoke-virtual {p0, v0, v11}, Lcom/felicanetworks/mfc/Felica;->checkAccessNodeCodeList(I[I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3168
    :try_start_3
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v6, :cond_3

    .line 3169
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3170
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x1

    .line 3171
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move-object v4, p1

    .line 3170
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->readWithoutEncryption(II[BLcom/felicanetworks/mfc/BlockList;II)[Lcom/felicanetworks/mfc/Data;

    move-result-object v7

    .line 3178
    .local v7, "dataList":[Lcom/felicanetworks/mfc/Data;
    :goto_1
    const/4 v0, 0x4

    const-string v1, "%s return dataList = %s"

    const-string v2, "999"

    invoke-static {v0, v1, v2, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3179
    monitor-exit p0

    return-object v7

    .line 3152
    .end local v7    # "dataList":[Lcom/felicanetworks/mfc/Data;
    :cond_2
    :try_start_4
    invoke-virtual {p1, v9}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v0

    aput v0, v11, v9

    .line 3151
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3157
    :catch_0
    move-exception v10

    .line 3158
    .local v10, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "810"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3159
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3160
    const/16 v2, 0xe

    .line 3159
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3173
    .end local v10    # "ne":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v0, 0x7

    :try_start_5
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3174
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    .line 3175
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move-object v4, p1

    .line 3174
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->readWithoutEncryption(II[BLcom/felicanetworks/mfc/BlockList;II)[Lcom/felicanetworks/mfc/Data;
    :try_end_5
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .restart local v7    # "dataList":[Lcom/felicanetworks/mfc/Data;
    goto :goto_1

    .line 3181
    .end local v7    # "dataList":[Lcom/felicanetworks/mfc/Data;
    :catch_1
    move-exception v8

    .line 3182
    .local v8, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_6
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3241
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "808"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3242
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3243
    const/16 v2, 0xe

    .line 3242
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3184
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v2, "801"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3185
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 3186
    const/4 v2, 0x6

    .line 3185
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3188
    :pswitch_2
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_TIMEOUT_OCCURRED"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3192
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 3195
    :pswitch_3
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-nez v0, :cond_4

    .line 3196
    const/4 v0, 0x7

    const-string v1, "%s OfflineException.TYPE_INVALID_STATUS_FLAG(%d)"

    .line 3197
    const-string v2, "001"

    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3196
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3198
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3221
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : default"

    const-string v2, "806"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3222
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x5

    .line 3223
    const/16 v2, 0xe

    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3224
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3222
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3200
    :sswitch_0
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x53"

    const-string v2, "803"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3201
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x5

    .line 3202
    const/16 v2, 0xd

    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3203
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3201
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3205
    :sswitch_1
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0xA6"

    const-string v2, "804"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3206
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x5

    .line 3207
    const/16 v2, 0xb

    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3208
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3206
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3210
    :sswitch_2
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0xA8"

    const-string v2, "805"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3211
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x5

    .line 3212
    const/16 v2, 0xc

    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3213
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3211
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3227
    :cond_4
    const/4 v0, 0x1

    .line 3228
    const-string v1, "%s OfflineException.TYPE_INVALID_STATUS_FLAG(INTERFACE_WIRELESS)"

    .line 3229
    const-string v2, "807"

    .line 3227
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3230
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x5

    .line 3231
    const/16 v2, 0xe

    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3232
    invoke-virtual {v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3230
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3236
    :pswitch_4
    const/4 v0, 0x2

    const-string v1, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3237
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 3238
    const/16 v2, 0x3a

    .line 3237
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3246
    .end local v8    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_2
    move-exception v8

    .line 3247
    .local v8, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "809"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3248
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3249
    const/16 v2, 0xe

    .line 3248
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3182
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 3198
    :sswitch_data_0
    .sparse-switch
        0x53 -> :sswitch_0
        0xa6 -> :sswitch_1
        0xa8 -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 3607
    monitor-enter p0

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3610
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 3613
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 3614
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 3615
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3620
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3631
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfc/Felica;->doReset(Z)V

    .line 3633
    const/4 v2, 0x4

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3635
    monitor-exit p0

    return-void

    .line 3621
    :catch_0
    move-exception v0

    .line 3622
    .local v0, "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v2, 0x2

    :try_start_3
    const-string v3, "%s"

    const-string v4, "700"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3623
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3625
    .end local v0    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v1

    .line 3626
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    :try_start_4
    const-string v3, "%s Exception"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3627
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    .line 3628
    const/16 v4, 0x2c

    .line 3627
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3607
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized select(I)V
    .locals 10
    .param p1, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1949
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In systemCode = %d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1952
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1953
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 1956
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 1957
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s systemCode = %d"

    const-string v2, "800"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified System Code is out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1962
    :cond_1
    const v0, 0xffff

    if-eq p1, v0, :cond_2

    .line 1963
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    .line 1964
    const v0, 0xff00

    and-int/2addr v0, p1

    const v1, 0xff00

    if-ne v0, v1, :cond_3

    .line 1965
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "%s systemCode = %d"

    const-string v2, "805"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1966
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified System Code is out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1970
    :cond_3
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 1971
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1975
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V

    .line 1977
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Felica;->checkAccessSystemCode(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1987
    :try_start_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    .line 1989
    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p1

    .line 1987
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    move-result-object v6

    .line 1992
    .local v6, "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v9, :cond_4

    .line 1993
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1996
    :try_start_4
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->turnOffRFPower(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2003
    :cond_4
    :goto_0
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    .line 2004
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    .line 2005
    iput-object v6, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :try_end_5
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2033
    const/4 v0, 0x4

    :try_start_6
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2035
    monitor-exit p0

    return-void

    .line 1978
    .end local v6    # "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :catch_0
    move-exception v8

    .line 1979
    .local v8, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    :try_start_7
    const-string v1, "%s Exception"

    const-string v2, "806"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1980
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 1981
    const/16 v2, 0x9

    .line 1980
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1997
    .end local v8    # "ne":Ljava/lang/NumberFormatException;
    .restart local v6    # "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :catch_1
    move-exception v7

    .line 1998
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x7

    :try_start_8
    const-string v1, "%s Exception(Turn OFF RF Power)"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 2006
    .end local v6    # "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 2007
    .local v7, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_9
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2023
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "803"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2024
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2025
    const/16 v2, 0x9

    .line 2024
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2009
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v2, "801"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2010
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2011
    const/4 v2, 0x6

    .line 2010
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2013
    :pswitch_2
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_TIMEOUT_OCCURRED"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2014
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2015
    const/4 v2, 0x7

    .line 2014
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2018
    :pswitch_3
    const/4 v0, 0x2

    const-string v1, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2019
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2020
    const/16 v2, 0x3a

    .line 2019
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2027
    .end local v7    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_3
    move-exception v7

    .line 2028
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "804"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2029
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2030
    const/16 v2, 0x9

    .line 2029
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2007
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized select(II)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 2142
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In target = %d systemCode = %d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2145
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2146
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2149
    if-eqz p1, :cond_0

    if-eq p1, v10, :cond_0

    .line 2150
    const/4 v0, 0x1

    const-string v1, "%s target = %d"

    const-string v2, "800"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Target is invalid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2153
    :cond_0
    if-ltz p2, :cond_1

    const v0, 0xffff

    if-le p2, v0, :cond_2

    .line 2154
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "%s systemCode = %d"

    const-string v2, "801"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified System Code is out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2159
    :cond_2
    const v0, 0xffff

    if-eq p2, v0, :cond_3

    .line 2160
    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    .line 2161
    const v0, 0xff00

    and-int/2addr v0, p2

    const v1, 0xff00

    if-ne v0, v1, :cond_4

    .line 2162
    :cond_3
    const/4 v0, 0x1

    const-string v1, "%s systemCode = %d"

    const-string v2, "805"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified System Code is out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2167
    :cond_4
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2168
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2172
    if-ne p1, v10, :cond_6

    .line 2173
    const/4 v0, 0x3

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V

    .line 2178
    :goto_0
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->checkAccessSystemCode(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2190
    if-ne p1, v10, :cond_7

    .line 2191
    const/4 v0, 0x7

    :try_start_3
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2192
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x1

    .line 2194
    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p2

    .line 2192
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    move-result-object v6

    .line 2204
    .local v6, "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :goto_1
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v10, :cond_5

    if-nez p1, :cond_5

    .line 2205
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "003"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2207
    :try_start_4
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->turnOffRFPower(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2213
    :cond_5
    :goto_2
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    .line 2214
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    .line 2215
    iput-object v6, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :try_end_5
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2269
    const/4 v0, 0x4

    :try_start_6
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2271
    monitor-exit p0

    return-void

    .line 2175
    .end local v6    # "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :cond_6
    const/4 v0, 0x1

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 2179
    :catch_0
    move-exception v9

    .line 2180
    .local v9, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    :try_start_8
    const-string v1, "%s Exception"

    const-string v2, "806"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2181
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2182
    const/16 v2, 0x9

    .line 2181
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2196
    .end local v9    # "ne":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v0, 0x7

    :try_start_9
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2197
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    .line 2199
    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p2

    .line 2197
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    move-result-object v6

    .restart local v6    # "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    goto :goto_1

    .line 2208
    :catch_1
    move-exception v7

    .line 2209
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x7

    const-string v1, "%s Exception(Turn OFF RF Power)"

    const-string v2, "004"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 2216
    .end local v6    # "Info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 2220
    .local v7, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_a
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-nez v0, :cond_9

    :cond_8
    if-ne p1, v10, :cond_9

    .line 2221
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "005"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2223
    :try_start_b
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->turnOffRFPower(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2229
    :cond_9
    :goto_3
    :try_start_c
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2248
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "804"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2249
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2250
    const/16 v2, 0x9

    .line 2249
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2224
    :catch_3
    move-exception v8

    .line 2225
    .local v8, "exc":Ljava/lang/Exception;
    const/4 v0, 0x7

    const-string v1, "%s Exception(Turn OFF RF Power)"

    const-string v2, "006"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 2231
    .end local v8    # "exc":Ljava/lang/Exception;
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2232
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2233
    const/4 v2, 0x6

    .line 2232
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2235
    :pswitch_2
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_fTIMEOUT_OCCURRED"

    const-string v2, "803"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2239
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 2243
    :pswitch_3
    const/4 v0, 0x2

    const-string v1, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2244
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2245
    const/16 v2, 0x3a

    .line 2244
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2252
    .end local v7    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_4
    move-exception v7

    .line 2255
    .local v7, "e":Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->selected:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-nez v0, :cond_b

    :cond_a
    if-ne p1, v10, :cond_b

    .line 2256
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "007"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2258
    :try_start_d
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->turnOffRFPower(II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2264
    :cond_b
    :goto_4
    const/4 v0, 0x1

    :try_start_e
    const-string v1, "%s Exception"

    const-string v2, "805"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2265
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 2266
    const/16 v2, 0x9

    .line 2265
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2259
    :catch_5
    move-exception v8

    .line 2260
    .restart local v8    # "exc":Ljava/lang/Exception;
    const/4 v0, 0x7

    const-string v1, "%s Exception(Turn OFF RF Power)"

    const-string v2, "008"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 2229
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setAllowFalpWhileUsingMfc(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6744
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 6745
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 6749
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->checkPidUid(II)V

    .line 6752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->mAllowFalpWhileUsingMfc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6758
    monitor-exit p0

    return-void

    .line 6744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x1e

    .line 6105
    monitor-enter p0

    const/4 v9, 0x4

    :try_start_0
    const-string v10, "%s In context = %s"

    const-string v11, "000"

    invoke-static {v9, v10, v11, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6107
    if-eqz p1, :cond_3

    .line 6108
    const/4 v9, 0x7

    const-string v10, "%s"

    const-string v11, "001"

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6111
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6114
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 6115
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 6119
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v9, Lcom/felicanetworks/mfw/i/fbl/Property;->APPLICATION_VERSION:Ljava/lang/String;

    .line 6122
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    sput-object v9, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    .line 6125
    invoke-static {}, Lcom/felicanetworks/felica/util/CommonConfig;->getInstance()Lcom/felicanetworks/felica/util/CommonConfig;

    move-result-object v9

    .line 6126
    const-string v10, "00000001"

    .line 6125
    invoke-virtual {v9, v10}, Lcom/felicanetworks/felica/util/CommonConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/felicanetworks/mfw/i/fbl/Property;->CHIP_ISSUER_ID:Ljava/lang/String;

    .line 6132
    const/16 v2, 0x1e

    .line 6133
    .local v2, "VERSION_LENGTH_MAX":I
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 6134
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_0

    .line 6135
    const/4 v9, 0x2

    const-string v10, "%s The length of Android OS version is too long \'%s\'"

    .line 6136
    const-string v11, "002"

    .line 6135
    invoke-static {v9, v10, v11, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6137
    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6139
    :cond_0
    const/4 v0, 0x6

    .line 6140
    .local v0, "CHIP_ISSUER_ID_LENGTH_MAX":I
    invoke-static {}, Lcom/felicanetworks/felica/util/CommonConfig;->getInstance()Lcom/felicanetworks/felica/util/CommonConfig;

    move-result-object v9

    .line 6141
    const-string v10, "00000001"

    .line 6140
    invoke-virtual {v9, v10}, Lcom/felicanetworks/felica/util/CommonConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6142
    .local v3, "chipIssuerId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x6

    if-le v9, v10, :cond_1

    .line 6143
    const/4 v9, 0x2

    const-string v10, "%s The length of chip issuer id is too long \'%s\'"

    .line 6144
    const-string v11, "003"

    .line 6143
    invoke-static {v9, v10, v11, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6145
    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6147
    :cond_1
    const/16 v1, 0x1e

    .line 6148
    .local v1, "MODEL_LENGTH_MAX":I
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6149
    .local v6, "model":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_2

    .line 6150
    const/4 v9, 0x2

    const-string v10, "%s The length of model name is too long \'%s\'"

    const-string v11, "004"

    invoke-static {v9, v10, v11, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6152
    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6155
    :cond_2
    const-string v9, "MobileFeliCaClient/%s (Android %s; %s; %s)"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 6156
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v11, 0x3

    aput-object v6, v10, v11

    .line 6155
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/felicanetworks/mfc/Felica;->userAgent:Ljava/lang/String;

    .line 6159
    iget-object v9, p0, Lcom/felicanetworks/mfc/Felica;->userAgent:Ljava/lang/String;

    sput-object v9, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    .line 6162
    const/4 v9, 0x4

    const-string v10, "%s userAgent=%s"

    const-string v11, "005"

    iget-object v12, p0, Lcom/felicanetworks/mfc/Felica;->userAgent:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6168
    .end local v0    # "CHIP_ISSUER_ID_LENGTH_MAX":I
    .end local v1    # "MODEL_LENGTH_MAX":I
    .end local v2    # "VERSION_LENGTH_MAX":I
    .end local v3    # "chipIssuerId":Ljava/lang/String;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "model":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "version":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v9, 0x4

    :try_start_2
    const-string v10, "%s"

    const-string v11, "999"

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6170
    monitor-exit p0

    return-void

    .line 6163
    :catch_0
    move-exception v4

    .line 6164
    .local v4, "e":Ljava/lang/Exception;
    const/4 v9, 0x1

    :try_start_3
    const-string v10, "%s  ERROR:There was an unnecessary token."

    const-string v11, "801"

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6105
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method declared-synchronized setFSC(Lcom/felicanetworks/mfc/FSC;)V
    .locals 1
    .param p1, "fsc"    # Lcom/felicanetworks/mfc/FSC;

    .prologue
    .line 3684
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 3687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->fsc_starting:Z

    .line 3688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->felica_close_in_fsc_starting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3689
    monitor-exit p0

    return-void

    .line 3684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNodeCodeSize(III)V
    .locals 9
    .param p1, "nodeCodeSize"    # I
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2949
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In nodeCodeSize = %d timeout = %d retryCount = %d"

    const-string v2, "000"

    .line 2950
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2949
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2953
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2956
    if-eq p1, v8, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2957
    const/4 v0, 0x1

    const-string v1, "%s invalid nodeCodeSize"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified NodeCodeSize is invalid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2960
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 2961
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 2964
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 2965
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 2966
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 2969
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2973
    :try_start_2
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v7, :cond_1

    .line 2974
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2975
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v2

    .line 2976
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v5

    move v3, p1

    .line 2975
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->setParameter(I[BIII)V

    .line 2984
    :goto_0
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3020
    monitor-exit p0

    return-void

    .line 2978
    :cond_1
    const/4 v0, 0x7

    :try_start_3
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2979
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v2

    .line 2980
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v4

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v5

    move v3, p1

    .line 2979
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->setParameter(I[BIII)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2985
    :catch_0
    move-exception v6

    .line 2986
    .local v6, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_4
    invoke-virtual {v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3009
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "804"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3010
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3011
    const/16 v2, 0x1c

    .line 3010
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2988
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v2, "801"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2989
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 2990
    const/4 v2, 0x6

    .line 2989
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2992
    :pswitch_2
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_TIMEOUT_OCCURRED"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2996
    invoke-virtual {v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 2999
    :pswitch_3
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_STATUS_FLAG"

    const-string v2, "803"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3000
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x7

    .line 3001
    const/16 v2, 0x1c

    .line 3000
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3004
    :pswitch_4
    const/4 v0, 0x2

    const-string v1, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3005
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 3006
    const/16 v2, 0x3a

    .line 3005
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3014
    .end local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v6

    .line 3015
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "805"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3016
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3017
    const/16 v2, 0x1c

    .line 3016
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2986
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)V
    .locals 8
    .param p1, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 5181
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5184
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 5187
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v5, :cond_0

    .line 5188
    array-length v0, p1

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 5189
    :cond_0
    const/4 v0, 0x1

    const-string v2, "%s invalid privacySettingData"

    const-string v3, "800"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5192
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_1
    array-length v0, p1

    if-lt v6, v0, :cond_2

    .line 5197
    const/4 v0, 0x4

    const-string v1, "%s In privacySettingData = %s timeout = %d retryCount = %d"

    const-string v2, "001"

    .line 5198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    .line 5197
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5200
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 5201
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 5204
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 5205
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 5206
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 5209
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 5212
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelectedInterfaceWired()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5216
    const/4 v0, 0x5

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5227
    :try_start_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v3

    .line 5228
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v5

    .line 5227
    invoke-virtual {v0, v2, p1, v3, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->setPrivacyFlag([B[Lcom/felicanetworks/mfc/PrivacySettingData;II)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5250
    const/4 v0, 0x4

    :try_start_4
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5252
    monitor-exit p0

    return-void

    .line 5193
    :cond_2
    :try_start_5
    aget-object v0, p1, v6

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/PrivacySettingData;->checkFormat()V

    .line 5192
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5217
    :catch_0
    move-exception v7

    .line 5218
    .local v7, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "803"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5219
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 5220
    const/16 v3, 0x24

    .line 5219
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 5229
    .end local v7    # "ne":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 5231
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 5232
    const/4 v0, 0x2

    const-string v2, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v3, "700"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5233
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x3

    .line 5234
    const/16 v3, 0x3a

    .line 5233
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 5237
    :cond_3
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 5240
    .local v4, "supportCodes":[I
    const/4 v0, 0x1

    const-string v2, "%s OfflineException"

    const-string v3, "801"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5241
    const/16 v2, 0xb

    .line 5242
    const/16 v3, 0x24

    .line 5243
    const/4 v5, 0x0

    move-object v0, p0

    .line 5241
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 5244
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .end local v4    # "supportCodes":[I
    :catch_2
    move-exception v1

    .line 5245
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "802"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5246
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 5247
    const/16 v3, 0x24

    .line 5246
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5237
    :array_0
    .array-data 4
        0xa6
        0xb
    .end array-data
.end method

.method public declared-synchronized setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 5701
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "%s In Listener = %s appIdentificationCode = %s"

    const-string v3, "000"

    invoke-static {v1, v2, v3, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5705
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 5708
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 5709
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 5712
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 5713
    const/4 v1, 0x1

    const-string v2, "%s invalid parameter"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5714
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5701
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 5718
    :cond_0
    if-eqz p2, :cond_2

    .line 5719
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5721
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5722
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 5723
    const/4 v1, 0x1

    const-string v2, "%s invalid parameter"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5724
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5727
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 5736
    .end local v0    # "i":I
    :cond_2
    if-nez p1, :cond_6

    .line 5737
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5738
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    .line 5739
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->appIdentifyCode:Ljava/lang/String;

    .line 5746
    :goto_1
    const/4 v1, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5747
    monitor-exit p0

    return-void

    .line 5728
    .restart local v0    # "i":I
    :cond_3
    :try_start_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_4

    .line 5729
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7e

    if-le v1, v2, :cond_5

    .line 5730
    :cond_4
    const/4 v1, 0x1

    const-string v2, "%s not ASCII code"

    const-string v3, "802"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5731
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5727
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5741
    .end local v0    # "i":I
    :cond_6
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "003"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5742
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationListener:Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    .line 5743
    iput-object p2, p0, Lcom/felicanetworks/mfc/Felica;->appIdentifyCode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized setRetryCount(I)V
    .locals 1
    .param p1, "retryCount"    # I

    .prologue
    const/16 v0, 0xa

    .line 1278
    monitor-enter p0

    if-gez p1, :cond_0

    .line 1279
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :goto_0
    monitor-exit p0

    return-void

    .line 1280
    :cond_0
    if-le p1, v0, :cond_1

    .line 1281
    const/16 v0, 0xa

    :try_start_1
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1283
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setSelectTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const v0, 0xea60

    .line 6321
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 6323
    if-gez p1, :cond_0

    .line 6324
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6330
    :goto_0
    monitor-exit p0

    return-void

    .line 6325
    :cond_0
    if-le p1, v0, :cond_1

    .line 6326
    const v0, 0xea60

    :try_start_1
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6328
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->selectTimeout:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    const v0, 0xea60

    .line 1243
    monitor-enter p0

    if-gez p1, :cond_0

    .line 1244
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :goto_0
    monitor-exit p0

    return-void

    .line 1245
    :cond_0
    if-le p1, v0, :cond_1

    .line 1246
    const v0, 0xea60

    :try_start_1
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1248
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startAdhoc(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 5771
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v2, "%s In context = %s"

    const-string v3, "000"

    invoke-static {v0, v2, v3, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5774
    const/4 v9, 0x0

    .line 5776
    .local v9, "openFlag":Z
    new-instance v6, Lcom/felicanetworks/mfc/AdhocInformation;

    invoke-direct {v6}, Lcom/felicanetworks/mfc/AdhocInformation;-><init>()V

    .line 5779
    .local v6, "adhocInfo":Lcom/felicanetworks/mfc/AdhocInformation;
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivateWorker()V

    .line 5782
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 5785
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 5788
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v0, :cond_0

    .line 5789
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5791
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->openAdhoc()V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5793
    const/4 v9, 0x1

    .line 5807
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->startAdhocMode(II)Lcom/felicanetworks/mfc/AdhocInformation;
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 5819
    if-eqz v9, :cond_1

    .line 5822
    :try_start_3
    invoke-virtual {v6}, Lcom/felicanetworks/mfc/AdhocInformation;->getAdhocMode()I

    move-result v0

    if-eq v0, v11, :cond_1

    .line 5823
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5824
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->closeAdhoc()V

    .line 5830
    :cond_1
    const/16 v0, 0x2710

    invoke-static {p1, v0}, Lcom/felicanetworks/felica/util/LocalPowerManager;->backlightOn(Landroid/content/Context;I)V

    .line 5833
    invoke-virtual {v6}, Lcom/felicanetworks/mfc/AdhocInformation;->getAdhocMode()I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 5835
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "804"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5857
    new-instance v7, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 5858
    .local v7, "b":Lcom/felicanetworks/felica/util/ByteBuffer;
    invoke-virtual {v6}, Lcom/felicanetworks/mfc/AdhocInformation;->getSessionID()I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x2

    invoke-virtual {v7, v2, v3, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5860
    :try_start_4
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/mfc/Felica;->TERMINATE_ADHOC_DATA:[B

    .line 5861
    sget-object v5, Lcom/felicanetworks/mfc/Felica;->TERMINATE_ADHOC_DATA:[B

    array-length v5, v5

    .line 5860
    invoke-virtual {v0, v2, v3, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->sendTerminateAdhoc([B[BI)V
    :try_end_4
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5865
    :goto_0
    if-eqz v9, :cond_2

    .line 5866
    :try_start_5
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->closeAdhoc()V

    .line 5871
    :cond_2
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 5872
    const/16 v3, 0x35

    .line 5871
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5771
    .end local v6    # "adhocInfo":Lcom/felicanetworks/mfc/AdhocInformation;
    .end local v7    # "b":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v9    # "openFlag":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5794
    .restart local v6    # "adhocInfo":Lcom/felicanetworks/mfc/AdhocInformation;
    .restart local v9    # "openFlag":Z
    :catch_0
    move-exception v1

    .line 5795
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v0, 0x1

    :try_start_6
    const-string v2, "%s OfflineException"

    const-string v3, "800"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5796
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->closeAdhoc()V

    .line 5797
    const/16 v0, 0x35

    invoke-virtual {p0, v1, v0}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;I)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 5798
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v1

    .line 5799
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v2, "%s Exception"

    const-string v3, "801"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5800
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->closeAdhoc()V

    .line 5801
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 5802
    const/16 v3, 0x35

    .line 5801
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5808
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 5809
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v0, 0x1

    :try_start_7
    const-string v2, "%s OfflineException"

    const-string v3, "802"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5810
    const/4 v0, 0x0

    new-array v4, v0, [I

    .line 5811
    .local v4, "supportCodes":[I
    const/16 v2, 0x17

    .line 5812
    const/16 v3, 0x35

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    move-object v0, p0

    .line 5811
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfc/Felica;->convException(Lcom/felicanetworks/felica/offlineimpl/OfflineException;II[II)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5817
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .end local v4    # "supportCodes":[I
    :catchall_1
    move-exception v0

    .line 5819
    if-eqz v9, :cond_3

    .line 5822
    :try_start_8
    invoke-virtual {v6}, Lcom/felicanetworks/mfc/AdhocInformation;->getAdhocMode()I

    move-result v2

    if-eq v2, v11, :cond_3

    .line 5823
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v5, "002"

    invoke-static {v2, v3, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5824
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->closeAdhoc()V

    .line 5828
    :cond_3
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5813
    :catch_3
    move-exception v1

    .line 5814
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    :try_start_9
    const-string v2, "%s Exception"

    const-string v3, "803"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 5815
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    .line 5816
    const/16 v3, 0x35

    .line 5815
    invoke-direct {v0, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5903
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_a
    invoke-virtual {v6}, Lcom/felicanetworks/mfc/AdhocInformation;->getReceiveData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getPushAnalyzer([B)[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;

    move-result-object v10

    .line 5905
    .local v10, "pushAnalyzer":[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v10

    if-lt v8, v0, :cond_5

    .line 5909
    const/4 v0, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5911
    monitor-exit p0

    return-void

    .line 5906
    :cond_5
    :try_start_b
    aget-object v0, v10, v8

    sget-object v2, Lcom/felicanetworks/mfc/Felica;->instance:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v0, v2, p1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5905
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5862
    .end local v8    # "i":I
    .end local v10    # "pushAnalyzer":[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .restart local v7    # "b":Lcom/felicanetworks/felica/util/ByteBuffer;
    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method public startFalp(II)[I
    .locals 21
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 6519
    const/4 v2, 0x4

    const-string v3, "startFalp called. %d %d"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6522
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 6523
    .local v16, "ret":[I
    const/16 v17, 0x0

    .line 6525
    .local v17, "sessionID":S
    const/4 v11, 0x0

    .line 6527
    .local v11, "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    monitor-enter p0

    .line 6529
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 6530
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 6533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-eqz v2, :cond_2

    .line 6535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6536
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-eqz v2, :cond_0

    .line 6537
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "006"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6538
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 6540
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V

    .line 6542
    :cond_1
    const/4 v2, 0x4

    const-string v3, "MFC is already activated. check pid/uid."

    invoke-static {v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6543
    invoke-virtual/range {p0 .. p2}, Lcom/felicanetworks/mfc/Felica;->checkPidUid(II)V

    .line 6546
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/felicanetworks/mfc/Felica;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6550
    .local v14, "isOpened":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/felicanetworks/mfc/Felica;->opened:Z

    if-nez v2, :cond_3

    .line 6551
    const/4 v2, 0x4

    const-string v3, "MFC didn\'t open the chip. open it."

    invoke-static {v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6552
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/felicanetworks/mfc/Felica;->open(Z)V

    .line 6553
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/felicanetworks/mfc/Felica;->opened:Z
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6567
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/felicanetworks/mfc/Felica;->mIsFalp:Z

    .line 6568
    new-instance v2, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    .line 6569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    move/from16 v0, p1

    iput v0, v2, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    .line 6570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    move/from16 v0, p2

    iput v0, v2, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->uid:I

    .line 6527
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 6573
    .local v18, "startTime":J
    const/4 v10, 0x0

    .line 6574
    .local v10, "exceptionFlag":Z
    const/4 v13, 0x0

    .line 6575
    .local v13, "isIlligalStateExceptionOccurred":Z
    const/4 v12, 0x0

    .line 6577
    .local v12, "isCanceled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfc/Felica;->mPollingLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 6578
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v4, v4, v18

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 6577
    :goto_1
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6660
    if-eqz v10, :cond_c

    .line 6661
    const/4 v2, 0x4

    const-string v3, "exception occurred."

    invoke-static {v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6663
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6664
    const/4 v4, 0x7

    .line 6663
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 6555
    .end local v10    # "exceptionFlag":Z
    .end local v12    # "isCanceled":Z
    .end local v13    # "isIlligalStateExceptionOccurred":Z
    .end local v18    # "startTime":J
    :catch_0
    move-exception v9

    .line 6556
    .local v9, "e":Lcom/felicanetworks/mfc/FelicaException;
    :try_start_4
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_4

    .line 6557
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6558
    const/16 v4, 0x1f

    .line 6557
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 6527
    .end local v9    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .end local v14    # "isOpened":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 6559
    .restart local v9    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .restart local v14    # "isOpened":Z
    :cond_4
    :try_start_5
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v2

    const/16 v3, 0x37

    if-ne v2, v3, :cond_5

    .line 6560
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6561
    const/16 v4, 0x37

    .line 6560
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 6563
    :cond_5
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6564
    const/16 v4, 0x3d

    .line 6563
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6582
    .end local v9    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .restart local v10    # "exceptionFlag":Z
    .restart local v12    # "isCanceled":Z
    .restart local v13    # "isIlligalStateExceptionOccurred":Z
    .restart local v18    # "startTime":J
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v3, 0x1

    .line 6583
    const v4, 0xffff

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    .line 6584
    const/4 v7, 0x2

    .line 6582
    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    :try_end_6
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v11

    .line 6587
    const/16 v8, 0x81

    .line 6589
    .local v8, "baudrate":I
    :try_start_7
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    move-result-object v15

    .line 6590
    .local v15, "response":Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
    invoke-virtual {v15}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->getSystemCode()I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v8

    .line 6596
    .end local v15    # "response":Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
    :goto_2
    const/16 v2, 0x81

    if-eq v8, v2, :cond_7

    .line 6597
    const/4 v2, 0x4

    :try_start_8
    const-string v3, "target device\'s baudrate is 424."

    invoke-static {v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6599
    const/16 v2, -0x7e

    invoke-static {v2}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->setBaudRate(B)V

    .line 6600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->setBaudRate(II)V

    .line 6603
    :cond_7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J
    :try_end_8
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v0, v2

    move/from16 v17, v0

    .line 6606
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-virtual {v11}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    const/16 v4, 0x3e8

    .line 6607
    const/4 v5, 0x0

    .line 6606
    move/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->proposeAdhoc([BSII)I
    :try_end_9
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 6617
    const/4 v10, 0x0

    .line 6619
    const/4 v2, 0x0

    :try_start_a
    aput v17, v16, v2

    .line 6620
    const/4 v2, 0x1

    aput v8, v16, v2
    :try_end_a
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 6623
    .end local v8    # "baudrate":I
    :catch_1
    move-exception v9

    .line 6625
    .local v9, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_b
    invoke-virtual {v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 6626
    invoke-virtual {v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FCC_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6628
    invoke-virtual {v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v2

    throw v2

    .line 6577
    .end local v9    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_1
    move-exception v2

    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v2

    .line 6591
    .restart local v8    # "baudrate":I
    :catch_2
    move-exception v9

    .line 6592
    .local v9, "e":Ljava/lang/NullPointerException;
    const/4 v2, 0x4

    :try_start_c
    const-string v3, "target device\'s baudrate can\'t get."

    invoke-static {v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 6593
    const/16 v8, 0x82

    goto :goto_2

    .line 6608
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v9

    .line 6610
    .local v9, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    invoke-virtual {v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v2

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_8

    .line 6611
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6612
    const/16 v4, 0x3e

    .line 6611
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 6614
    :cond_8
    throw v9
    :try_end_c
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 6629
    .end local v8    # "baudrate":I
    :cond_9
    :try_start_d
    invoke-virtual {v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 6632
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 6634
    const-wide/16 v2, 0x1f4

    :try_start_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 6632
    :goto_3
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 6638
    :try_start_10
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6639
    const/16 v4, 0x3a

    .line 6638
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 6632
    :catchall_2
    move-exception v2

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v2

    .line 6651
    :cond_a
    invoke-virtual {v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v2

    if-nez v2, :cond_b

    .line 6652
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x1b

    .line 6653
    const/16 v4, 0x3a

    .line 6652
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 6655
    :cond_b
    const/4 v10, 0x1

    .line 6656
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_0

    .line 6635
    :catch_4
    move-exception v2

    goto :goto_3

    .line 6670
    .end local v9    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_c
    return-object v16
.end method

.method declared-synchronized turnOffRFPower()V
    .locals 4

    .prologue
    .line 5975
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5979
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->turnOffRFPower(II)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5988
    :goto_0
    const/4 v1, 0x4

    :try_start_2
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5989
    monitor-exit p0

    return-void

    .line 5980
    :catch_0
    move-exception v0

    .line 5981
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s OfflineException"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5975
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 5983
    :catch_1
    move-exception v0

    .line 5984
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s Exception"

    const-string v3, "801"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized write(Lcom/felicanetworks/mfc/BlockDataList;II)V
    .locals 11
    .param p1, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3383
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s In blockDataList = %s timeout = %d retryCount = %d"

    const-string v2, "000"

    .line 3384
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    .line 3383
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3387
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 3390
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockDataList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3391
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s invalid blockDataList"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified BlockDataList is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3394
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockDataList;->checkFormat()V

    .line 3395
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 3396
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V

    .line 3399
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 3400
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotOnline()V

    .line 3401
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 3404
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica;->checkSelected()V

    .line 3406
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockDataList;->size()I

    move-result v0

    new-array v10, v0, [I

    .line 3407
    .local v10, "nodeList":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockDataList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lt v8, v0, :cond_2

    .line 3412
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getSystemCode()I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/felicanetworks/mfc/Felica;->checkAccessNodeCodeList(I[I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3421
    :try_start_3
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-ne v0, v6, :cond_3

    .line 3422
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3423
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x1

    .line 3424
    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    .line 3425
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move-object v4, p1

    .line 3423
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->writeWithoutEncryption(II[BLcom/felicanetworks/mfc/BlockDataList;II)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3537
    :goto_1
    const/4 v0, 0x4

    :try_start_4
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3538
    :goto_2
    monitor-exit p0

    return-void

    .line 3408
    :cond_2
    :try_start_5
    invoke-virtual {p1, v8}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v0

    aput v0, v10, v8

    .line 3407
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3413
    :catch_0
    move-exception v9

    .line 3414
    .local v9, "ne":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "816"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3415
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3416
    const/16 v2, 0x14

    .line 3415
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3427
    .end local v9    # "ne":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v0, 0x7

    :try_start_6
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3428
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->chipController:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    const/4 v1, 0x0

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->nodeCodeSize:I

    .line 3429
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->systemInfo:Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->getIDm()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getTimeout()I

    move-result v5

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getRetryCount()I

    move-result v6

    move-object v4, p1

    .line 3428
    invoke-virtual/range {v0 .. v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->writeWithoutEncryption(II[BLcom/felicanetworks/mfc/BlockDataList;II)V
    :try_end_6
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 3432
    :catch_1
    move-exception v7

    .line 3433
    .local v7, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_7
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3527
    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "%s OfflineException"

    const-string v2, "814"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3528
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3529
    const/16 v2, 0x14

    .line 3528
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3435
    :pswitch_1
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_INVALID_RESPONSE"

    const-string v2, "801"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3436
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 3437
    const/4 v2, 0x6

    .line 3436
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3439
    :pswitch_2
    const/4 v0, 0x1

    const-string v1, "%s OfflineException.TYPE_TIMEOUT_OCCURRED"

    const-string v2, "802"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3443
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Felica;->makeFccMsgFelicaException(Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaException;

    move-result-object v0

    throw v0

    .line 3446
    :pswitch_3
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->target:I

    if-nez v0, :cond_4

    .line 3447
    const/4 v0, 0x7

    const-string v1, "%s OfflineException.TYPE_INVALID_STATUS_FLAG(%d)"

    .line 3448
    const-string v2, "003"

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3447
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3449
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3502
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : default"

    const-string v2, "812"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3503
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3504
    const/16 v2, 0x14

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3505
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3503
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3451
    :sswitch_0
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x01"

    const-string v2, "803"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3452
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3453
    const/16 v2, 0xf

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3454
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3452
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3456
    :sswitch_1
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x02"

    const-string v2, "804"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3457
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3458
    const/16 v2, 0x10

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3459
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3457
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3461
    :sswitch_2
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x50"

    const-string v2, "805"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3462
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3463
    const/16 v2, 0x11

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3464
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3462
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3466
    :sswitch_3
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x51"

    const-string v2, "806"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3467
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3468
    const/16 v2, 0x12

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3469
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3467
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3471
    :sswitch_4
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x53"

    const-string v2, "807"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3472
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3473
    const/16 v2, 0x13

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3474
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3472
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3476
    :sswitch_5
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0x53"

    const-string v2, "808"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3477
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3478
    const/16 v2, 0xd

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3479
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3477
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3481
    :sswitch_6
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0xA5"

    const-string v2, "809"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3482
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3483
    const/16 v2, 0x15

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3484
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3482
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3486
    :sswitch_7
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0xA6"

    const-string v2, "810"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3487
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3488
    const/16 v2, 0xb

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3489
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3487
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3491
    :sswitch_8
    const/4 v0, 0x1

    const-string v1, "%s StatusFlag2 : 0xA8"

    const-string v2, "811"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3492
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3493
    const/16 v2, 0xc

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3494
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3492
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3508
    :cond_4
    const/4 v0, 0x1

    .line 3509
    const-string v1, "%s OfflineException.TYPE_INVALID_STATUS_FLAG(INTERFACE_WIRELESS)"

    .line 3510
    const-string v2, "813"

    .line 3508
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3511
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_5

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v0

    const/16 v1, 0x71

    if-ne v0, v1, :cond_5

    .line 3513
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3516
    :cond_5
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x6

    .line 3517
    const/16 v2, 0x14

    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag1()I

    move-result v3

    .line 3518
    invoke-virtual {v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getStatusFlag2()I

    move-result v4

    .line 3516
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(IIII)V

    throw v0

    .line 3522
    :pswitch_4
    const/4 v0, 0x2

    const-string v1, "%s OfflineException.TYPE_OFFLINE_CANCELED_OCCURRED"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3523
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x3

    .line 3524
    const/16 v2, 0x3a

    .line 3523
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 3531
    .end local v7    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_2
    move-exception v7

    .line 3532
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const-string v1, "%s Exception"

    const-string v2, "815"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 3533
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x1

    .line 3534
    const/16 v2, 0x14

    .line 3533
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3433
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 3449
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x50 -> :sswitch_2
        0x51 -> :sswitch_3
        0x52 -> :sswitch_4
        0x53 -> :sswitch_5
        0xa5 -> :sswitch_6
        0xa6 -> :sswitch_7
        0xa8 -> :sswitch_8
    .end sparse-switch
.end method
