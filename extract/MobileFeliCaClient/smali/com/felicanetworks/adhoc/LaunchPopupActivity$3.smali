.class Lcom/felicanetworks/adhoc/LaunchPopupActivity$3;
.super Ljava/lang/Object;
.source "LaunchPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$3;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x4

    .line 341
    const-string v0, "000"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$3;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->finish()V

    .line 343
    const-string v0, "999"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 344
    return-void
.end method
