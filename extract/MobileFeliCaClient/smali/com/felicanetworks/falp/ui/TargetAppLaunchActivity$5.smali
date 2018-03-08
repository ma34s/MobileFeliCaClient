.class Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;
.super Ljava/lang/Object;
.source "TargetAppLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    const v1, 0x7f030010

    .line 207
    const/4 v2, 0x0

    .line 206
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$5;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    # getter for: Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$7(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    :cond_0
    return-void
.end method
