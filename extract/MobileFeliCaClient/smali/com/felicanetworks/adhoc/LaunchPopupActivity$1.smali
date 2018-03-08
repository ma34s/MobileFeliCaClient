.class Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;
.super Ljava/lang/Object;
.source "LaunchPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/adhoc/LaunchPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;


# direct methods
.method constructor <init>(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v6, 0x4

    .line 125
    const-string v1, "%s Yes button clicked.: dialog = %s whichButton = %d"

    const-string v2, "000"

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 125
    invoke-static {v6, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    const/4 v1, 0x6

    :try_start_0
    const-string v2, "ACTION     = %s\nDATA       = %s\nCOMPONENT  = %s"

    .line 129
    iget-object v3, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    # getter for: Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->access$0(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    # getter for: Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->access$0(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v5, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    # getter for: Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->access$0(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 128
    invoke-static {v1, v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    iget-object v2, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    # getter for: Lcom/felicanetworks/adhoc/LaunchPopupActivity;->sendIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->access$0(Lcom/felicanetworks/adhoc/LaunchPopupActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$1;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    invoke-virtual {v1}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->finish()V

    .line 141
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x2

    const-string v2, "%s message=%s"

    const-string v3, "700"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s message=%s"

    const-string v3, "800"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
