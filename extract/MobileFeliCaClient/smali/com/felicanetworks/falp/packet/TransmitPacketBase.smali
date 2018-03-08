.class public abstract Lcom/felicanetworks/falp/packet/TransmitPacketBase;
.super Ljava/lang/Object;
.source "TransmitPacketBase.java"


# static fields
.field private static final DATA_START:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPacketLenExceptPayload()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x8

    return v0
.end method

.method public abstract makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;
.end method

.method protected makeTransmitCommandFromPayload(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 1
    .param p1, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
