.class Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;
.super Ljava/lang/Thread;
.source "Felica.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica$ActivateThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermitOptrThread"
.end annotation


# static fields
.field private static final ERROR_MSG_HTTP_COMMUNICATION_ERROR:Ljava/lang/String; = "HTTP communication error."

.field private static final ERROR_MSG_INTERRUPTED:Ljava/lang/String; = "Interrupted."

.field private static final MAX_SIGNER_SIZE:I = 0x64

.field private static final MFC_UTILITY_CLASS_NAME:Ljava/lang/String; = "com.felicanetworks.mfc.Felica"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private errorType:I

.field private optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

.field private permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

.field private permitList:[Ljava/lang/String;

.field private succeeded:Z

.field final synthetic this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/Felica$ActivateThread;[Ljava/lang/String;)V
    .locals 4
    .param p2, "permitList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 758
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 760
    const-string v0, "%s In permitList = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 762
    iput v2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 763
    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 764
    iput-object p2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permitList:[Ljava/lang/String;

    .line 765
    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    .line 766
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 767
    return-void
.end method

.method private getCallerSignerHash()Ljava/util/Vector;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1095
    const/16 v17, 0x4

    const-string v18, "%s"

    const-string v19, "000"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1099
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 1102
    .local v16, "signatureHashes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    move-object/from16 v17, v0

    # getter for: Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;
    invoke-static/range {v17 .. v17}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->access$0(Lcom/felicanetworks/mfc/Felica$ActivateThread;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/Felica;->getContext()Landroid/content/Context;

    move-result-object v17

    if-nez v17, :cond_0

    .line 1103
    const/16 v17, 0x1

    const-string v18, "%s"

    const-string v19, "800"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1104
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17

    .line 1107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    move-object/from16 v17, v0

    # getter for: Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;
    invoke-static/range {v17 .. v17}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->access$0(Lcom/felicanetworks/mfc/Felica$ActivateThread;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/Felica;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 1108
    const-string v18, "activity"

    .line 1107
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1110
    .local v3, "am":Landroid/app/ActivityManager;
    const v17, 0x7fffffff

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v12

    .line 1112
    .local v12, "serviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 1113
    .local v13, "serviceInfoVector":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1122
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v17

    if-nez v17, :cond_3

    .line 1123
    const/16 v17, 0x1

    const-string v18, "%s"

    const-string v19, "801"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1124
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17

    .line 1113
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1114
    .local v11, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    move-object/from16 v18, v0

    # getter for: Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;
    invoke-static/range {v18 .. v18}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->access$0(Lcom/felicanetworks/mfc/Felica$ActivateThread;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v18

    # getter for: Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
    invoke-static/range {v18 .. v18}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getPID()I

    move-result v18

    iget v0, v11, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    move-object/from16 v18, v0

    # getter for: Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;
    invoke-static/range {v18 .. v18}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->access$0(Lcom/felicanetworks/mfc/Felica$ActivateThread;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v18

    # getter for: Lcom/felicanetworks/mfc/Felica;->activatedApp:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
    invoke-static/range {v18 .. v18}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v18

    iget v0, v11, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1116
    iget-object v0, v11, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.felicanetworks.mfc.Felica"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1117
    const/16 v18, 0x7

    const-string v19, "%s"

    const-string v20, "001"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1118
    invoke-virtual {v13, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1127
    .end local v11    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->this$1:Lcom/felicanetworks/mfc/Felica$ActivateThread;

    move-object/from16 v17, v0

    # getter for: Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;
    invoke-static/range {v17 .. v17}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->access$0(Lcom/felicanetworks/mfc/Felica$ActivateThread;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/Felica;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1129
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 1130
    .local v4, "cert_count":I
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1167
    const/16 v17, 0x4

    const-string v18, "%s (count=%d) return "

    const-string v19, "999"

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1169
    return-object v16

    .line 1130
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1132
    .local v7, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :try_start_0
    iget-object v0, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 1133
    const/16 v19, 0x40

    .line 1132
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1134
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    iget-object v15, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1137
    .local v15, "sigList":[Landroid/content/pm/Signature;
    array-length v0, v15

    move/from16 v17, v0

    add-int v4, v4, v17

    .line 1138
    const/16 v17, 0x64

    move/from16 v0, v17

    if-le v4, v0, :cond_5

    .line 1139
    const/16 v17, 0x1

    const-string v19, "%s"

    const-string v20, "802"

    move/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1140
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .end local v15    # "sigList":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v5

    .line 1159
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x2

    const-string v19, "%s"

    const-string v20, "802"

    move/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1143
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v15    # "sigList":[Landroid/content/pm/Signature;
    :cond_5
    :try_start_1
    const-string v17, "SHA256"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 1148
    .local v8, "md":Ljava/security/MessageDigest;
    monitor-enter v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1149
    :try_start_2
    array-length v0, v15

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 1148
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v17

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v17
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1149
    :cond_6
    :try_start_4
    aget-object v14, v15, v17

    .line 1150
    .local v14, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1151
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 1152
    .local v6, "hash":[B
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 1154
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1149
    add-int/lit8 v17, v17, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1071
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    const-string v0, "%s return errorMsg = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1075
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    return-object v0

    .line 1077
    :cond_0
    const/4 v0, 0x2

    const-string v1, "%s isScceeded() is false"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1078
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaException;-><init>()V

    throw v0
.end method

.method public getErrorType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1047
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1049
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    const-string v0, "%s return errorType = %s"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1051
    iget v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    return v0

    .line 1053
    :cond_0
    const/4 v0, 0x2

    const-string v1, "%s isScceeded() is false"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1054
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaException;-><init>()V

    throw v0
.end method

.method public getPermit()Lcom/felicanetworks/mfw/i/fbl/Permit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1022
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1024
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->isSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    const-string v0, "%s return permit = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1026
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    return-object v0

    .line 1028
    :cond_0
    const/4 v0, 0x2

    const-string v1, "%s isScceeded() is false"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1029
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaException;-><init>()V

    throw v0
.end method

.method public isSucceeded()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1004
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1006
    const-string v0, "%s return scceeded = %s"

    const-string v1, "999"

    iget-boolean v2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1007
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    return v0
.end method

.method public ntfyVerificationResult(ILjava/lang/String;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 943
    const-string v0, "%s In result = %s : message = %s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 945
    sparse-switch p1, :sswitch_data_0

    .line 965
    const-string v0, "%s, result=%d, message=%s"

    const-string v1, "702"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 968
    :goto_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 970
    return-void

    .line 947
    :sswitch_0
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    goto :goto_0

    .line 952
    :sswitch_1
    const-string v0, "%s, result=%d, message=%s"

    const-string v1, "700"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 953
    iput v3, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 954
    const-string v0, "Interrupted."

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 959
    :sswitch_2
    const-string v0, "%s, result=%d, message=%s"

    const-string v1, "701"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 960
    const/4 v0, 0x3

    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 961
    const-string v0, "HTTP communication error."

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 945
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x384 -> :sswitch_1
        0x1f41 -> :sswitch_2
        0x1f4b -> :sswitch_2
        0x1f55 -> :sswitch_2
    .end sparse-switch
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x7

    const/4 v6, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x1

    .line 792
    const/4 v1, 0x4

    const-string v2, "%s %s"

    const-string v3, "000"

    const-string v4, "PermitOptrThread"

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permitList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 797
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v14, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 798
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 799
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 800
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 803
    :cond_0
    const/4 v8, 0x0

    .line 806
    .local v8, "careerIdentifyCode":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/util/CommonConfig;->getInstance()Lcom/felicanetworks/felica/util/CommonConfig;

    move-result-object v1

    .line 807
    const-string v2, "00000002"

    .line 806
    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/CommonConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 822
    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->APPLICATION_VERSION:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 823
    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->CHIP_ISSUER_ID:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v8, :cond_1

    .line 824
    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 828
    :cond_1
    const-string v1, "%s, APPLICATION_VERSION:%s, FILE_DIR:%s, CHIP_ISSUER_ID:%s, USER_AGENT:%s"

    .line 829
    const-string v2, "800"

    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->APPLICATION_VERSION:Ljava/lang/String;

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    .line 830
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->CHIP_ISSUER_ID:Ljava/lang/String;

    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    .line 826
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 832
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 833
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 920
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v9

    .line 812
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "%s, getValue(SYSTEM_FILE_CAREER_IDENTIFY_CODE_KEY) failed, Exception(%s)"

    .line 813
    const-string v2, "802"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 814
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 815
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 816
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 838
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getInstance()Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    move-result-object v10

    .line 839
    .local v10, "optr":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    monitor-enter v10
    :try_end_1
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 840
    :try_start_2
    invoke-virtual {v10}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->init()V

    .line 839
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    .end local v10    # "optr":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->getCallerSignerHash()Ljava/util/Vector;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 881
    .local v7, "callerSigInfo":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    if-nez v7, :cond_6

    .line 882
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 883
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 884
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 885
    const-string v0, "%s"

    const-string v1, "997"

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 839
    .end local v7    # "callerSigInfo":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    .restart local v10    # "optr":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 842
    .end local v10    # "optr":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    :catch_1
    move-exception v9

    .line 848
    .local v9, "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    if-ne v1, v2, :cond_5

    .line 849
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "readArea"

    if-eq v1, v2, :cond_4

    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeToArea"

    if-ne v1, v2, :cond_5

    .line 850
    :cond_4
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file creation failed."

    if-eq v1, v2, :cond_3

    .line 851
    :cond_5
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 852
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 853
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 854
    const-string v1, "%s, BizResOptr.init() failed, Exception(%s)"

    .line 855
    const-string v2, "801"

    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/SysException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 854
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 858
    .end local v9    # "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    :catch_2
    move-exception v9

    .line 859
    .local v9, "e":Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 860
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 861
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 862
    const-string v1, "%s, BizResOptr.init() failed, Exception(%s)"

    const-string v2, "802"

    .line 863
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 862
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 873
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 874
    .restart local v9    # "e":Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->succeeded:Z

    .line 875
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 876
    iput-object v13, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 877
    const-string v0, "%s"

    const-string v1, "996"

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 891
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "callerSigInfo":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_6
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;-><init>()V

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    .line 894
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-virtual {v1, p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->setListener(Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;)V

    .line 896
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permitList:[Ljava/lang/String;

    array-length v3, v2

    move v1, v12

    :goto_1
    if-lt v1, v3, :cond_8

    .line 914
    :goto_2
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->isSucceeded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 915
    const-string v0, "%s"

    const-string v1, "003"

    invoke-static {v14, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 916
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->getPermit()Lcom/felicanetworks/mfw/i/fbl/Permit;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    .line 919
    :cond_7
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 896
    :cond_8
    aget-object v11, v2, v1

    .line 898
    .local v11, "permitData":Ljava/lang/String;
    :try_start_6
    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-virtual {v4, v11, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->startVerification(Ljava/lang/String;Ljava/util/Vector;)V

    .line 899
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->isSucceeded()Z

    move-result v4

    if-nez v4, :cond_9

    .line 900
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->getErrorType()I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 901
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->getErrorType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 902
    :cond_9
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 906
    :catch_4
    move-exception v9

    .line 907
    .restart local v9    # "e":Ljava/lang/Exception;
    iput v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorType:I

    .line 908
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->errorMessage:Ljava/lang/String;

    .line 909
    const-string v0, "%s"

    const-string v1, "998"

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 896
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public stopVerification()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 982
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 985
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->interrupt()V

    .line 987
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    if-eqz v0, :cond_0

    .line 988
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->optr:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->stopVerification()V

    .line 992
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 993
    return-void
.end method
