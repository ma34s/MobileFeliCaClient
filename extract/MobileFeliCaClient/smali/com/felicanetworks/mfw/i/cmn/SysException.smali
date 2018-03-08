.class public Lcom/felicanetworks/mfw/i/cmn/SysException;
.super Ljava/lang/RuntimeException;
.source "SysException.java"


# instance fields
.field private causeClass:Ljava/lang/Class;

.field private causeMethod:Ljava/lang/String;

.field private caused:Ljava/lang/Throwable;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "causeClass"    # Ljava/lang/Class;
    .param p2, "causeMethod"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "causeClass"    # Ljava/lang/Class;
    .param p2, "causeMethod"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "causeClass"    # Ljava/lang/Class;
    .param p2, "causeMethod"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "caused"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 80
    if-nez p2, :cond_0

    .line 81
    const-string p2, ""

    .line 83
    :cond_0
    if-nez p3, :cond_1

    .line 84
    const-string p3, ""

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeClass:Ljava/lang/Class;

    .line 88
    iput-object p2, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeMethod:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->message:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->caused:Ljava/lang/Throwable;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "causeClass"    # Ljava/lang/Class;
    .param p2, "causeMethod"    # Ljava/lang/String;
    .param p3, "caused"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getCauseClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getCauseMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCaused()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->caused:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->message:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_0
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeMethod:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->causeMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->caused:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tCaused by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/cmn/SysException;->caused:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
