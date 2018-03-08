.class public Lcom/felicanetworks/falp/DataPacketComparator;
.super Ljava/lang/Object;
.source "DataPacketComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;",
        ">;"
    }
.end annotation


# static fields
.field private static sMe:Lcom/felicanetworks/falp/DataPacketComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/felicanetworks/falp/DataPacketComparator;

    invoke-direct {v0}, Lcom/felicanetworks/falp/DataPacketComparator;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/DataPacketComparator;->sMe:Lcom/felicanetworks/falp/DataPacketComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/falp/DataPacketComparator;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/felicanetworks/falp/DataPacketComparator;->sMe:Lcom/felicanetworks/falp/DataPacketComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I
    .locals 2
    .param p1, "object1"    # Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    .param p2, "object2"    # Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v0

    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    check-cast p2, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/falp/DataPacketComparator;->compare(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method
