.class public abstract Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.super Ljava/lang/Object;
.source "PushAnalyzer.java"


# static fields
.field public static final APP_CODE_LENGTH:I = 0x6

.field public static final DATA_SIZE_BUFFER:I = 0x2

.field public static final ENCODING_TYPE_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final ENCODING_TYPE_SJIS:Ljava/lang/String; = "Shift_JIS"

.field protected static final EXC_INVALID_RECEIVED_DATA:Ljava/lang/String; = "The spefified ReceivedData is null or empty."

.field protected static final EXC_INVALID_SEGMENT_DATA:Ljava/lang/String; = "The spefified SegmentData is null."

.field public static final MAX_PUSH_RECEIVE_SEGMENT_PARAMETER_SIZE:I = 0xba

.field public static final MAX_PUSH_SEND_SEGMENT_SIZE:I = 0xba

.field protected static final SERIALIZE_FAILD:Ljava/lang/String; = "serialize faild"


# instance fields
.field protected segmentData:Lcom/felicanetworks/mfc/PushSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSecurity([Ljava/lang/String;)V
    .locals 0
    .param p1, "packagenamelist"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public abstract execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xba

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/PushSegment;->getType()I

    move-result v0

    return v0
.end method

.method public abstract serialize()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation
.end method
