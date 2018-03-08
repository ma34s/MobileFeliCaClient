.class Lcom/felicanetworks/mfc/FSC$1;
.super Ljava/lang/Object;
.source "FSC.java"

# interfaces
.implements Lcom/felicanetworks/felica/FeliCaClientEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FSC;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 164
    const-string v3, "%s type=%d,message=%s"

    const-string v4, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v3, v4, v5, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # invokes: Lcom/felicanetworks/mfc/FSC;->terminate()V
    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$1(Lcom/felicanetworks/mfc/FSC;)V

    .line 167
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    sparse-switch p1, :sswitch_data_0

    .line 190
    const/4 v2, 0x1

    .line 196
    .local v2, "errType":I
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;
    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    .end local v2    # "errType":I
    :goto_1
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 215
    return-void

    .line 167
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "%s"

    const-string v4, "801"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 207
    :try_start_5
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;
    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "java.lang.RuntimeException: A runtime exception was thrown within FSC."

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e2":Ljava/lang/Exception;
    const-string v3, "%s"

    const-string v4, "802"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :sswitch_0
    const/4 v2, 0x1

    .line 176
    .restart local v2    # "errType":I
    goto :goto_0

    .line 178
    .end local v2    # "errType":I
    :sswitch_1
    const/4 v2, 0x2

    .line 179
    .restart local v2    # "errType":I
    goto :goto_0

    .line 181
    .end local v2    # "errType":I
    :sswitch_2
    const/4 v2, 0x3

    .line 182
    .restart local v2    # "errType":I
    goto :goto_0

    .line 184
    .end local v2    # "errType":I
    :sswitch_3
    const/4 v2, 0x4

    .line 185
    .restart local v2    # "errType":I
    goto :goto_0

    .line 187
    .end local v2    # "errType":I
    :sswitch_4
    const/16 v2, 0x64

    .line 188
    .restart local v2    # "errType":I
    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_6
    const-string v4, "%s"

    const-string v5, "800"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method public finished(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 124
    const-string v2, "%s status=%d"

    const-string v3, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # invokes: Lcom/felicanetworks/mfc/FSC;->terminate()V
    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$1(Lcom/felicanetworks/mfc/FSC;)V

    .line 127
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;
    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/felicanetworks/mfc/FSCEventListener;->finished(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    :goto_0
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void

    .line 127
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    const-string v3, "801"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    :try_start_5
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$1;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;
    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "java.lang.RuntimeException: A runtime exception was thrown within FSC."

    invoke-interface {v2, v3, v4}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "%s"

    const-string v3, "802"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_6
    const-string v3, "%s"

    const-string v4, "800"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method
