.class public Lcom/felicanetworks/mfc/DeviceList;
.super Ljava/lang/Object;
.source "DeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/DeviceList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_DISPLAY:Lcom/felicanetworks/mfc/Device;

.field private static final DEVICE_FELICA:Lcom/felicanetworks/mfc/Device;

.field private static final EXC_ID_GEN_FAILED:Ljava/lang/String; = "Failed to generate a new id."

.field private static final EXC_MAX_SIZE:Ljava/lang/String; = "The size of this list exceeds the maximum value."

.field public static final ID_DISPLAY:I = 0x2

.field public static final ID_FELICA:I = 0x1

.field private static final ID_OFFSET:I = 0x1000

.field private static final MAX_ID:I = 0xfffe

.field public static final MAX_SIZE:I = 0x40

.field private static final MIN_ID:I = 0x1


# instance fields
.field private deviceList:Ljava/util/Hashtable;

.field private nextID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/felicanetworks/mfc/Device;

    const-string v1, "FeliCa"

    const-string v2, "R/W"

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_FELICA:Lcom/felicanetworks/mfc/Device;

    .line 64
    new-instance v0, Lcom/felicanetworks/mfc/Device;

    const-string v1, "Generic"

    const-string v2, "Display"

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_DISPLAY:Lcom/felicanetworks/mfc/Device;

    .line 274
    new-instance v0, Lcom/felicanetworks/mfc/DeviceList$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/DeviceList$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/DeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    .line 98
    invoke-direct {p0}, Lcom/felicanetworks/mfc/DeviceList;->reset()V

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/DeviceList;->readFromParcel(Landroid/os/Parcel;)V

    .line 327
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/DeviceList;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/DeviceList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "id":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 256
    .local v0, "device":Lcom/felicanetworks/mfc/Device;
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    .end local v0    # "device":Lcom/felicanetworks/mfc/Device;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 257
    .restart local v0    # "device":Lcom/felicanetworks/mfc/Device;
    .restart local v1    # "e":Ljava/util/Enumeration;
    .restart local v2    # "id":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "id":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 258
    .restart local v2    # "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "device":Lcom/felicanetworks/mfc/Device;
    check-cast v0, Lcom/felicanetworks/mfc/Device;

    .line 259
    .restart local v0    # "device":Lcom/felicanetworks/mfc/Device;
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x6

    .line 299
    const-string v4, "%s : in = %s"

    const-string v5, "000"

    invoke-static {v6, v4, v5, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "id":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 305
    .local v0, "device":Lcom/felicanetworks/mfc/Device;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 306
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I

    .line 313
    const-string v4, "001 deviceList len=%d"

    iget-object v5, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string v4, "999"

    invoke-static {v6, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 315
    return-void

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 308
    const-class v4, Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "device":Lcom/felicanetworks/mfc/Device;
    check-cast v0, Lcom/felicanetworks/mfc/Device;

    .line 309
    .restart local v0    # "device":Lcom/felicanetworks/mfc/Device;
    iget-object v4, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 232
    iget-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_FELICA:Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_DISPLAY:Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const/16 v0, 0x1000

    iput v0, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I

    .line 235
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/felicanetworks/mfc/Device;

    invoke-direct {v1, p1, p2}, Lcom/felicanetworks/mfc/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v1, "newDevice":Lcom/felicanetworks/mfc/Device;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/DeviceList;->getID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 129
    iget-object v2, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    .line 130
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The size of this list exceeds the maximum value."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "newDevice":Lcom/felicanetworks/mfc/Device;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 132
    .restart local v0    # "id":Ljava/lang/Integer;
    .restart local v1    # "newDevice":Lcom/felicanetworks/mfc/Device;
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I

    const v3, 0xfffe

    if-le v2, v3, :cond_1

    .line 133
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to generate a new id."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v2, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public checkFormat()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 377
    const-string v9, "%s"

    const-string v10, "000"

    invoke-static {v13, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 382
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-lt v9, v12, :cond_0

    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    const/16 v10, 0x40

    if-le v9, v10, :cond_1

    .line 383
    :cond_0
    const-string v9, "%s DeviceList is invalid data"

    const-string v10, "800"

    invoke-static {v11, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 384
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 388
    :cond_1
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    const v10, 0xffff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 389
    :cond_2
    const-string v9, "%s DeviceID is invalid data"

    const-string v10, "801"

    invoke-static {v11, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 390
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 392
    :cond_3
    const/4 v5, 0x3

    .local v5, "i":I
    :goto_0
    const/16 v9, 0x1000

    if-lt v5, v9, :cond_5

    .line 400
    invoke-virtual {p0, v11}, Lcom/felicanetworks/mfc/DeviceList;->get(I)Lcom/felicanetworks/mfc/Device;

    move-result-object v3

    .line 401
    .local v3, "deviceFeliCa":Lcom/felicanetworks/mfc/Device;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Device;->getType()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_FELICA:Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v10}, Lcom/felicanetworks/mfc/Device;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 402
    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_FELICA:Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v10}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 403
    :cond_4
    const-string v9, "%s Device_FeliCa is invalid data"

    const-string v10, "803"

    invoke-static {v11, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 404
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 393
    .end local v3    # "deviceFeliCa":Lcom/felicanetworks/mfc/Device;
    :cond_5
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 394
    const-string v9, "%s DeviceID is invalid data"

    const-string v10, "802"

    invoke-static {v11, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 395
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 392
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 408
    .restart local v3    # "deviceFeliCa":Lcom/felicanetworks/mfc/Device;
    :cond_7
    invoke-virtual {p0, v12}, Lcom/felicanetworks/mfc/DeviceList;->get(I)Lcom/felicanetworks/mfc/Device;

    move-result-object v2

    .line 409
    .local v2, "deviceDisplay":Lcom/felicanetworks/mfc/Device;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Device;->getType()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_DISPLAY:Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v10}, Lcom/felicanetworks/mfc/Device;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 410
    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/felicanetworks/mfc/DeviceList;->DEVICE_DISPLAY:Lcom/felicanetworks/mfc/Device;

    invoke-virtual {v10}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 411
    :cond_8
    const-string v9, "%s Device_Display is invalid data"

    const-string v10, "804"

    invoke-static {v11, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 412
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 415
    :cond_9
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    new-array v6, v9, [I

    .line 416
    .local v6, "idList":[I
    const/4 v8, 0x0

    .line 418
    .local v8, "listCnt":I
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_a

    .line 423
    const/4 v5, 0x0

    :goto_2
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    if-lt v5, v9, :cond_b

    .line 434
    const-string v9, "%s"

    const-string v10, "999"

    invoke-static {v13, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 435
    return-void

    .line 419
    :cond_a
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v8

    .line 418
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 424
    :cond_b
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    aget v10, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Device;

    .line 425
    .local v0, "device1":Lcom/felicanetworks/mfc/Device;
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Device;->checkFormat()V

    .line 426
    add-int/lit8 v7, v5, 0x1

    .local v7, "j":I
    :goto_3
    array-length v9, v6

    if-lt v7, v9, :cond_c

    .line 423
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 427
    :cond_c
    iget-object v9, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    aget v10, v6, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/mfc/Device;

    .line 428
    .local v1, "device2":Lcom/felicanetworks/mfc/Device;
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 429
    const-string v9, "%s There are plural same devices"

    const-string v10, "805"

    invoke-static {v11, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 430
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 426
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/mfc/DeviceList;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/felicanetworks/mfc/Device;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Device;

    return-object v0
.end method

.method declared-synchronized getDevices()Ljava/util/Hashtable;
    .locals 4

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 217
    .local v0, "devices":Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 221
    monitor-exit p0

    return-object v0

    .line 218
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 219
    .local v2, "id":Ljava/lang/Object;
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "devices":Ljava/util/Hashtable;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "id":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized remove(I)Lcom/felicanetworks/mfc/Device;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 174
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 178
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x6

    .line 338
    const/4 v3, 0x4

    const-string v4, "%s : out = %s, flag = %d"

    const-string v5, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, p1, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    const-string v3, "001 deviceList len=%d"

    iget-object v4, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 342
    const/4 v2, 0x0

    .line 343
    .local v2, "id":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 344
    .local v0, "device":Lcom/felicanetworks/mfc/Device;
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    iget v3, p0, Lcom/felicanetworks/mfc/DeviceList;->nextID:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const-string v3, "999"

    invoke-static {v7, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 354
    return-void

    .line 346
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "id":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 347
    .restart local v2    # "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/felicanetworks/mfc/DeviceList;->deviceList:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "device":Lcom/felicanetworks/mfc/Device;
    check-cast v0, Lcom/felicanetworks/mfc/Device;

    .line 348
    .restart local v0    # "device":Lcom/felicanetworks/mfc/Device;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
