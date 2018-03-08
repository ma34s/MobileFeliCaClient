.class public Lcom/felicanetworks/adhoc/LaunchPopupActivity;
.super Landroid/app/Activity;
.source "LaunchPopupActivity.java"


# static fields
.field public static final INTENT_KEY:Ljava/lang/String; = "com.felicanetworks.mfc.LaunchPopupActivityData"

.field public static final INTENT_TYPE:Ljava/lang/String; = "com.felicanetworks.mfc.IntentType"

.field public static final INTENT_TYPE_BROWSER:I = 0x2

.field public static final INTENT_TYPE_EXTRAINTENT:I = 0x4

.field public static final INTENT_TYPE_INTENT:I = 0x0

.field public static final INTENT_TYPE_MAILER:I = 0x3

.field public static final INTENT_TYPE_STARTAPP:I = 0x1

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final TARGET_COMPONENT_INFO:Ljava/lang/String; = "com.android.internal.app.ResolverActivity"


# instance fields
.field private MANY_TARGET_MSG:Ljava/lang/String;

.field private NO_BUTTON_STR:Ljava/lang/String;

.field private TITLE_STR:Ljava/lang/String;

.field private YES_BUTTON_STR:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private intentType:I

.field private messageTable:[Ljava/lang/String;

.field noButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private sendIntent:Landroid/content/Intent;

.field yesButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    .line 121
    new-instance v0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;-><init>(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->yesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 148
    new-instance v0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$2;

    invoke-direct {v0, p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity$2;-><init>(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 337
    new-instance v0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$3;

    invoke-direct {v0, p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity$3;-><init>(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)V

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private checkIntentType()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 257
    const-string v0, "000"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    packed-switch v0, :pswitch_data_0

    .line 268
    const/4 v0, 0x1

    const-string v1, "%s : intentType = %d"

    const-string v2, "800"

    iget v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid intent type."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_0
    const/4 v0, 0x7

    const-string v1, "001"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 271
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 272
    return-void

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "Message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x6

    .line 225
    const-string v3, "%s : title = %s Message = %s"

    const-string v4, "000"

    invoke-static {v7, v3, v4, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->YES_BUTTON_STR:Ljava/lang/String;

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->yesButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->NO_BUTTON_STR:Ljava/lang/String;

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    new-instance v3, Lcom/felicanetworks/adhoc/LaunchPopupActivity$4;

    invoke-direct {v3, p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity$4;-><init>(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 246
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .restart local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    :goto_0
    const-string v3, "%s :dlg = %s"

    const-string v4, "999"

    invoke-static {v7, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    return-object v0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x2

    const-string v4, "%s:message = %s"

    const-string v5, "700"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 242
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

.method private createDialogMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x7

    .line 166
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x0

    .line 171
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getWordString()V

    .line 173
    iget v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    packed-switch v3, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    const-string v3, "%s : message = %s"

    const-string v4, "999"

    invoke-static {v6, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    return-object v0

    .line 176
    :pswitch_0
    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    .line 180
    const/high16 v4, 0x10000

    .line 179
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 181
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 183
    const-string v3, "com.android.internal.app.ResolverActivity"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const-string v3, "android"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    iget v5, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->MANY_TARGET_MSG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    const-string v3, "%s"

    const-string v4, "010"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    iget v5, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    goto/16 :goto_0

    .line 195
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :pswitch_1
    const-string v3, "%s"

    const-string v4, "004"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    iget v5, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    goto/16 :goto_0

    .line 199
    :pswitch_2
    const-string v3, "%s"

    const-string v4, "005"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    iget v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    aget-object v0, v3, v4

    .line 201
    goto/16 :goto_0

    .line 204
    :pswitch_3
    const-string v3, "%s"

    const-string v4, "006"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getWordString()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 366
    const-string v0, "000"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 368
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 370
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    const/4 v1, 0x1

    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 371
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 372
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->messageTable:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 374
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->YES_BUTTON_STR:Ljava/lang/String;

    .line 375
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->NO_BUTTON_STR:Ljava/lang/String;

    .line 376
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->TITLE_STR:Ljava/lang/String;

    .line 377
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->MANY_TARGET_MSG:Ljava/lang/String;

    .line 379
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 380
    return-void
.end method

.method private init(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    .line 295
    :try_start_0
    const-string v4, "com.felicanetworks.mfc.LaunchPopupActivityData"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "com.felicanetworks.mfc.LaunchPopupActivityData"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    .line 297
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 298
    const-string v4, "com.felicanetworks.mfc.IntentType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    .line 299
    const/4 v4, 0x4

    const-string v5, "sendIntent = %s \nbundle = %s \nintentType = %d"

    iget-object v6, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    .line 300
    iget v7, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 299
    invoke-static {v4, v5, v6, v0, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    invoke-direct {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->checkIntentType()V

    .line 304
    invoke-direct {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->createDialogMessage()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "message":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 306
    const/4 v4, 0x4

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 307
    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->TITLE_STR:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 309
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 311
    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->alertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 313
    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    :goto_0
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 330
    return-void

    .line 315
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "message":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x4

    :try_start_1
    const-string v5, "%s : Message is not created."

    const-string v6, "002"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 316
    iget v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->intentType:I

    if-ne v4, v8, :cond_1

    .line 317
    const/4 v4, 0x4

    const-string v5, "%s"

    const-string v6, "003"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 318
    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 319
    const/4 v4, 0x4

    const-string v5, "%s"

    const-string v6, "004"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 320
    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 325
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "%s : message = %s"

    const-string v6, "800"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x4

    .line 385
    const-string v0, "000"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    const-string v0, "999"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 389
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 285
    const/4 v1, 0x4

    const-string v2, "%s : Bundle = %s"

    const-string v3, "000"

    invoke-static {v1, v2, v3, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->init(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 397
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 399
    :cond_0
    invoke-direct {p0, p1}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->init(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 352
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 358
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    return-void
.end method
