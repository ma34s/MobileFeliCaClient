.class public Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;
.super Landroid/app/Activity;
.source "TargetAppLaunchActivity.java"


# static fields
.field private static final NL:Ljava/lang/String; = "\n"

.field private static final TARGET_COMPONENT_INFO:Ljava/lang/String; = "com.android.internal.app.ResolverActivity"

.field public static final TIMEOUT_MILLI_SEC:Ljava/lang/String; = "com.felicanetworks.falp.ui.TargetAppLaunchActivity.TIMEOUT_MILLI_SEC"


# instance fields
.field dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/felicanetworks/falp/IFalpService;

.field private mTimeoutHanlder:Ljava/lang/Runnable;

.field noButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field yesButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$1;-><init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 140
    new-instance v0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;-><init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 154
    new-instance v0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$3;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$3;-><init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->yesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    new-instance v0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;-><init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    new-instance v0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;-><init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mTimeoutHanlder:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Lcom/felicanetworks/falp/IFalpService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mService:Lcom/felicanetworks/falp/IFalpService;

    return-void
.end method

.method static synthetic access$1(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogMultiAppMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Lcom/felicanetworks/falp/IFalpService;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mService:Lcom/felicanetworks/falp/IFalpService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogMultiAppTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mTimeoutHanlder:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "Message"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 295
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->yesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    new-instance v3, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$6;

    invoke-direct {v3, p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$6;-><init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 311
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .restart local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v0

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .restart local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    goto :goto_1
.end method

.method private createDialogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 323
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    return-object v0
.end method

.method private createDialogMultiAppMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    return-object v0
.end method

.method private createDialogMultiAppTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private createDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/felicanetworks/falp/FalpService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mTimeoutHanlder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 267
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 243
    const v0, 0x7f030010

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 246
    :cond_0
    return-void
.end method
