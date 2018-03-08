.class public Lcom/felicanetworks/felica/impl/chip/ChipFactory;
.super Ljava/lang/Object;
.source "ChipFactory.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "Chip"

.field private static final PACKAGE_BASE:Ljava/lang/String; = "com.felicanetworks.felica.impl.chip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)Lcom/felicanetworks/felica/impl/chip/Chip;
    .locals 3
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baudRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.felicanetworks.felica.impl.chip."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Chip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/chip/Chip;

    .line 48
    .local v0, "chipImpl":Lcom/felicanetworks/felica/impl/chip/Chip;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/chip/Chip;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/impl/chip/Chip;->setBaudRate(I)V

    .line 50
    return-object v0
.end method
