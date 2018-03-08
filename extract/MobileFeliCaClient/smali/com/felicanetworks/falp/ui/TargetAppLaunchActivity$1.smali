.class Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;
.super Ljava/lang/Object;
.source "TargetAppLaunchActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;


# direct methods
.method constructor <init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 14
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 76
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-static/range {p2 .. p2}, Lcom/felicanetworks/falp/IFalpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/IFalpService;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$0(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Lcom/felicanetworks/falp/IFalpService;)V

    .line 83
    :try_start_0
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 86
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v6, "targetIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 93
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/high16 v9, 0x10000

    .line 92
    invoke-virtual {v4, v6, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 94
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_1

    .line 95
    const/4 v9, 0x1

    .line 96
    const-string v10, "TargetAppLaunchActivity#onServiceConnected() no Actiivity."

    .line 95
    invoke-static {v9, v10}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 97
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    iget-object v9, v9, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 128
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :cond_1
    const-string v9, "com.android.internal.app.ResolverActivity"

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    const-string v9, "android"

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # invokes: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogMultiAppMessage()Ljava/lang/String;
    invoke-static {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$1(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "message":Ljava/lang/String;
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # invokes: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogMultiAppTitle()Ljava/lang/String;
    invoke-static {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$2(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "title":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_0

    .line 113
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # invokes: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    invoke-static {v9, v8, v3}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$5(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$6(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Landroid/app/AlertDialog;)V

    .line 117
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;

    move-result-object v9

    iget-object v10, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    iget-object v10, v10, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 121
    const-string v9, "com.felicanetworks.falp.ui.TargetAppLaunchActivity.TIMEOUT_MILLI_SEC"

    .line 122
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhCommHsResSendAll()I

    move-result v10

    .line 121
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 123
    .local v7, "timeout":I
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$8(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mTimeoutHanlder:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$9(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/Runnable;

    move-result-object v10

    int-to-long v12, v7

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    .end local v7    # "timeout":I
    .end local v8    # "title":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogMessage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$3(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .restart local v3    # "message":Ljava/lang/String;
    iget-object v9, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # invokes: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogTitle()Ljava/lang/String;
    invoke-static {v9}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$4(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    .line 134
    return-void
.end method
