.class public Lcom/felicanetworks/felica/util/LocalPowerManager;
.super Ljava/lang/Object;
.source "LocalPowerManager.java"


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backlightOn(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millisec"    # I

    .prologue
    .line 48
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 52
    .local v0, "pm":Landroid/os/PowerManager;
    const v2, 0x3000001a

    .line 54
    const-string v3, "My Tag"

    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 55
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 56
    return-void
.end method

.method public static keepCpuPowerOn(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millisec"    # I

    .prologue
    .line 31
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 32
    .local v0, "pm":Landroid/os/PowerManager;
    const v2, 0x30000001

    .line 33
    const-string v3, "My Tag"

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 34
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 35
    return-void
.end method


# virtual methods
.method public startTokeepCpuPowerOn(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "millisec"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/felicanetworks/felica/util/LocalPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 71
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x30000001

    .line 73
    const-string v2, "My Tag"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/felicanetworks/felica/util/LocalPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/util/LocalPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 76
    return-void
.end method

.method public stopToKeepCpuPowerOn()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/felica/util/LocalPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    return-void
.end method
