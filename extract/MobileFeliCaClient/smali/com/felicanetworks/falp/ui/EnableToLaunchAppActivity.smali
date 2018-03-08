.class public Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;
.super Landroid/app/Activity;
.source "EnableToLaunchAppActivity.java"


# static fields
.field public static final INTENT_KEY:Ljava/lang/String; = "com.felicanetworks.falp.ui.IntentData"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final TARGET_COMPONENT_INFO:Ljava/lang/String; = "com.android.internal.app.ResolverActivity"


# instance fields
.field dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mSendIntent:Landroid/content/Intent;

.field noButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field yesButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mSendIntent:Landroid/content/Intent;

    .line 64
    new-instance v0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;-><init>(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 80
    new-instance v0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;-><init>(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->yesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    new-instance v0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$3;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$3;-><init>(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mSendIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "Message"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 264
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 266
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->yesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    new-instance v3, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$4;

    invoke-direct {v3, p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$4;-><init>(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 282
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .restart local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 279
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
    .line 192
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
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

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method private createDialogMultiAppMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
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

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method private createDialogMultiAppTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private createDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private init(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x7

    .line 145
    :try_start_0
    const-string v6, "com.felicanetworks.falp.ui.IntentData"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mSendIntent:Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 149
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mSendIntent:Landroid/content/Intent;

    .line 150
    const/high16 v7, 0x10000

    .line 149
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 151
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_1

    .line 152
    const/4 v6, 0x7

    const-string v7, "    no activity matched."

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 153
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 154
    const v6, 0x7f030011

    invoke-virtual {p0, v6}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v6, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 183
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v6, "com.android.internal.app.ResolverActivity"

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    const-string v6, "android"

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->createDialogMultiAppMessage()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->createDialogMultiAppTitle()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "title":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 171
    invoke-direct {p0, v5, v2}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 173
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v6, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    iget-object v6, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "\texception occurred."

    invoke-static {v9, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->createDialogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .restart local v2    # "message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->createDialogTitle()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const/4 v1, 0x7

    const-string v2, "EnableToLaunchAppActivity#onCreate[in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->init(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 293
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->init(Landroid/content/Intent;)V

    .line 296
    return-void
.end method
