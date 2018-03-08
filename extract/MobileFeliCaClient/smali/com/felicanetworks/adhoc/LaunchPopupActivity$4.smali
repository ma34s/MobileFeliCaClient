.class Lcom/felicanetworks/adhoc/LaunchPopupActivity$4;
.super Ljava/lang/Object;
.source "LaunchPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/adhoc/LaunchPopupActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
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
    iput-object p1, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$4;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$4;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->finish()V

    .line 238
    const/4 v0, 0x7

    const-string v1, "%d"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 239
    return-void
.end method
