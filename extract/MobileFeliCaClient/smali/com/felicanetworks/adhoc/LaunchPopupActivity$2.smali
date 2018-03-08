.class Lcom/felicanetworks/adhoc/LaunchPopupActivity$2;
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
    iput-object p1, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$2;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x4

    .line 152
    const-string v0, "%s No button clicked.: dialog = %s whichButton = %d"

    const-string v1, "000"

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 152
    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/felicanetworks/adhoc/LaunchPopupActivity$2;->this$0:Lcom/felicanetworks/adhoc/LaunchPopupActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/adhoc/LaunchPopupActivity;->finish()V

    .line 155
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method
