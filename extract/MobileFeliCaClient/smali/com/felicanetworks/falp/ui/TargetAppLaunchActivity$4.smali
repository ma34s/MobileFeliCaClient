.class Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;
.super Ljava/lang/Object;
.source "TargetAppLaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mService:Lcom/felicanetworks/falp/IFalpService;
    invoke-static {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$10(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Lcom/felicanetworks/falp/IFalpService;

    move-result-object v0

    invoke-interface {v0}, Lcom/felicanetworks/falp/IFalpService;->recvStartCheckNO()I

    .line 184
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 186
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$6(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    .line 194
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 192
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$4;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    .line 193
    throw v0
.end method
