.class public Lcom/felicanetworks/felica/util/CommonSecurity;
.super Ljava/lang/Object;
.source "CommonSecurity.java"


# static fields
.field private static final FALP_PERMISSION:Ljava/lang/String; = "com.felicanetworks.mfc.permission.MFC_ACCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMfcCallerCandidate(Landroid/content/Context;II)[Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v8, 0x0

    .line 69
    :goto_0
    return-object v8

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 39
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x7

    const-string v9, "CommonSecurity#getMfcCallerCandidate"

    invoke-static {v8, v9}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 41
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "firstCandidate":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 44
    const/4 v8, 0x0

    goto :goto_0

    .line 48
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, "secondCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v10, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-lt v9, v10, :cond_2

    .line 69
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_2
    aget-object v5, v1, v9

    .line 51
    .local v5, "pkg":Ljava/lang/String;
    const/16 v8, 0x1000

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 52
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .line 53
    .local v3, "isValidPkg":Z
    iget-object v11, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v12, v11

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v12, :cond_4

    .line 61
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "isValidPkg":Z
    :cond_3
    :goto_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    .line 53
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "isValidPkg":Z
    :cond_4
    aget-object v4, v11, v8

    .line 54
    .local v4, "permissionInfo":Ljava/lang/String;
    const-string v13, "com.felicanetworks.mfc.permission.MFC_ACCESS"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 55
    const/4 v13, 0x6

    const-string v14, "\tvalid permission found."

    invoke-static {v13, v14}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v3, 0x1

    .line 53
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 64
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "isValidPkg":Z
    .end local v4    # "permissionInfo":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3
.end method
