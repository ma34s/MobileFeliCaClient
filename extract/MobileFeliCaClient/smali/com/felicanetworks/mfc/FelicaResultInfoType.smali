.class public Lcom/felicanetworks/mfc/FelicaResultInfoType;
.super Lcom/felicanetworks/mfc/FelicaResultInfo;
.source "FelicaResultInfoType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/felicanetworks/mfc/FelicaResultInfo;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v3, 0x4

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    .line 45
    const-string v0, "%s exceptionType=%d message=%s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v0, 0x4

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V

    .line 65
    const-string v1, "%s exceptionType=%d message=%s id=%d type=%d"

    const-string v2, "000"

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 9
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I
    .param p5, "statusFlag1"    # I
    .param p6, "statusFlag2"    # I

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v0, 0x4

    .line 90
    invoke-direct/range {p0 .. p6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    .line 92
    const-string v1, "%s exceptionType=%d message=%s id=%d type=%d statusFlag1=%d statusFlag2=%d"

    .line 93
    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, p2

    .line 91
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    .line 28
    const/4 v0, 0x4

    const-string v1, "%s value=%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoType;->value:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x6

    const-string v1, "999"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v3, 0x4

    .line 105
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v0, "%s value = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfoType;->value:Ljava/lang/Object;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoType;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v2, 0x7

    .line 134
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-super {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 136
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .local p0, "this":Lcom/felicanetworks/mfc/FelicaResultInfoType;, "Lcom/felicanetworks/mfc/FelicaResultInfoType<TE;>;"
    const/4 v2, 0x7

    .line 121
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
