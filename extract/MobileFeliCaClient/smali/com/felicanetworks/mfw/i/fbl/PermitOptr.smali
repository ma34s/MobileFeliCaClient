.class public Lcom/felicanetworks/mfw/i/fbl/PermitOptr;
.super Ljava/lang/Object;
.source "PermitOptr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;,
        Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;,
        Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;,
        Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;,
        Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;
    }
.end annotation


# static fields
.field private static final PERMIT_EXPIRE_SUFFIX:Ljava/lang/String; = "2.bin"

.field private static final SIZE_PERMIT_EXPIRE:I = 0xa97

.field private static sfile:Ljava/io/File;

.field private static sparameter:Ljava/lang/StringBuffer;

.field private static sverifier:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;


# instance fields
.field private permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

.field private permitListener:Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

.field private stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    sput-object v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sverifier:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    .line 108
    sput-object v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->stopped:Z

    .line 133
    sget-object v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sverifier:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;)V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sverifier:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    .line 136
    :cond_0
    sget-object v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    const-string v2, "2.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;

    .line 140
    :cond_1
    return-void
.end method

.method static synthetic access$0()Ljava/io/File;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;

    return-object v0
.end method

.method private createPermit(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/Permit;
    .locals 2
    .param p1, "permitString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->getPermitSequence(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v1

    .line 672
    .local v1, "permitSequence":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validatePermit(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 673
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->verifyPermit(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 675
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parsePermit(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/Permit;

    move-result-object v0

    .line 676
    .local v0, "permit":Lcom/felicanetworks/mfw/i/fbl/Permit;
    invoke-direct {p0, v0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validateFormat(Lcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 677
    return-object v0
.end method

.method private createSignatur(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)[B
    .locals 5
    .param p1, "signature"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .prologue
    const/4 v4, 0x0

    .line 961
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v0

    .line 962
    .local v0, "signatureBitstring":[B
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 963
    aget-byte v2, v0, v4

    if-eqz v2, :cond_1

    .line 964
    :cond_0
    new-array v1, v4, [B

    .line 970
    :goto_0
    return-object v1

    .line 968
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 969
    .local v1, "signatureData":[B
    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private createSignatureTarget(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)[B
    .locals 6
    .param p1, "permitParameter"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .prologue
    const/4 v5, 0x0

    .line 942
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagAndLengthData()[B

    move-result-object v2

    .line 943
    .local v2, "tagAndLength":[B
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v0

    .line 945
    .local v0, "data":[B
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 946
    .local v1, "signatureTarget":[B
    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    array-length v3, v2

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 948
    return-object v1
.end method

.method private getCommandRequest(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/RespData;
    .locals 4
    .param p1, "accessUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>(I)V

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/fbl/RespCrtr;->createResp(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "parameter":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;)V

    const-string v3, "I007"

    invoke-virtual {v2, v3, p1, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/RespData;

    move-result-object v0

    .line 597
    .local v0, "commandRequest":Lcom/felicanetworks/mfw/i/cmn/RespData;
    return-object v0
.end method

.method private getPermitSequence(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .locals 5
    .param p1, "permitValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3e9

    .line 731
    :try_start_0
    invoke-static {p1}, Lcom/felicanetworks/mfw/i/cmn/Base64Util;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 738
    .local v0, "decodedPermit":[B
    :try_start_1
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->parse([B)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 742
    .local v2, "rootSequence":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-nez v2, :cond_0

    .line 743
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 732
    .end local v0    # "decodedPermit":[B
    .end local v2    # "rootSequence":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x3e8

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 739
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "decodedPermit":[B
    :catch_1
    move-exception v1

    .line 740
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 746
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "rootSequence":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    :cond_0
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    return-object v3
.end method

.method private getPermitValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 696
    if-nez p1, :cond_0

    .line 697
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8ad

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 700
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 701
    .local v1, "spacePosition":I
    if-eq v1, v3, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 702
    :cond_1
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8ae

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 705
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "permitValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 707
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8af

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 709
    :cond_3
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidBase64(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 710
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8b1

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 712
    :cond_4
    return-object v0
.end method

.method private getPublicKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "issuerId"    # Ljava/lang/String;
    .param p2, "keyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 919
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;)V

    .line 920
    .local v2, "verifier":Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;
    const/4 v1, 0x0

    .line 922
    .local v1, "key":[B
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 926
    if-nez v1, :cond_0

    .line 927
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x406

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x408

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method private getRevocationResponse(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;Ljava/lang/String;J)Lcom/felicanetworks/mfw/i/cmn/RespData;
    .locals 9
    .param p1, "localRevocation"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1956
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1957
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    const-string v4, "ai=0201"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1958
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&av="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->APPLICATION_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1966
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1968
    :cond_0
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    const-string v4, "&ct=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1969
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    const-string v4, "&mct=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1970
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    const-string v4, "&il=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1971
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    const-string v4, "&mil=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1988
    :goto_0
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;)V

    .line 1989
    const-string v4, "I003"

    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1988
    invoke-virtual {v3, v4, p2, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/RespData;

    move-result-object v2

    .line 1990
    .local v2, "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    return-object v2

    .line 1973
    .end local v2    # "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    :cond_1
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&ct="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1974
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&mct="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNumLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p3

    const-wide/32 v6, 0xea60

    div-long v0, v4, v6

    .line 1980
    .local v0, "il":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    const-wide/32 v4, 0x5f5e0ff

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    .line 1982
    :cond_2
    const-wide/16 v0, 0x0

    .line 1984
    :cond_3
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&il="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1985
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sparameter:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&mil="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionTerm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private getUrlLimit(Lcom/felicanetworks/mfw/i/fbl/Permit;)Ljava/lang/String;
    .locals 3
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1667
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x4aa

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 1671
    :cond_0
    const-string v1, "0003"

    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v0

    .line 1672
    .local v0, "browserFelica":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    if-nez v0, :cond_1

    .line 1673
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x4ac

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 1675
    :cond_1
    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;

    .end local v0    # "browserFelica":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;->getAllowUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUrlValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1604
    if-nez p1, :cond_0

    .line 1605
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8c1

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1608
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1609
    .local v0, "spacePosition":I
    if-eq v0, v3, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 1610
    :cond_1
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8c2

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1613
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "urlValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1615
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8c3

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1617
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_4

    .line 1618
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8c4

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1620
    :cond_4
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidURL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1621
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x8c6

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1623
    :cond_5
    return-object v1
.end method

.method private isInvalidRevocation(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;Lcom/felicanetworks/mfw/i/fbl/Permit;)Z
    .locals 6
    .param p1, "localRevocation"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .param p2, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 1866
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUpdateDate()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return v3

    .line 1870
    :cond_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionPoint()Ljava/lang/String;

    move-result-object v2

    .line 1871
    .local v2, "revocationPoint":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1872
    invoke-virtual {p2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1876
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNum()I

    move-result v0

    .line 1877
    .local v0, "offlineRvctionNum":I
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNumLimit()I

    move-result v1

    .line 1887
    .local v1, "offlineRvctionNumLimit":I
    if-eq v0, v5, :cond_0

    .line 1888
    if-eq v1, v5, :cond_0

    .line 1889
    if-eqz v0, :cond_0

    .line 1890
    if-gt v0, v1, :cond_0

    .line 1894
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isOverLimitRevocation(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;J)Z
    .locals 8
    .param p1, "revocation"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .param p2, "lastModified"    # J

    .prologue
    .line 1908
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionTerm()I

    move-result v6

    int-to-long v4, v6

    .line 1909
    .local v4, "term":J
    const-wide/32 v6, 0xea60

    mul-long/2addr v6, v4

    add-long v2, p2, v6

    .line 1910
    .local v2, "limit":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1911
    .local v0, "current":J
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isSendErrorResponse(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 532
    sparse-switch p1, :sswitch_data_0

    .line 539
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 537
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_0
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_0
        0xbc2 -> :sswitch_0
    .end sparse-switch
.end method

.method private isStopped()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->stopped:Z

    return v0
.end method

.method private isValidPermit(Lcom/felicanetworks/mfw/i/fbl/Permit;Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)Z
    .locals 5
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .param p2, "revocation"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .prologue
    const/4 v3, 0x1

    .line 1925
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    .line 1926
    .local v2, "serialNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionList()[Ljava/lang/String;

    move-result-object v1

    .line 1927
    .local v1, "revocationList":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return v3

    .line 1931
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1932
    aget-object v4, v1, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1933
    const/4 v3, 0x0

    goto :goto_0

    .line 1931
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isValidPermitVersion([B)Z
    .locals 2
    .param p1, "targetVersion"    # [B

    .prologue
    .line 828
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 829
    .local v0, "version":Ljava/lang/String;
    const-string v1, "0001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x1

    .line 832
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseBrowserFelica(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 5
    .param p1, "extensionParameter"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 1356
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x47e

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1359
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v1

    .line 1360
    .local v1, "extensionParameterChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1361
    :cond_1
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x47f

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1364
    :cond_2
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 1365
    .local v2, "urlLimit":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v3

    const/16 v4, 0x16

    if-eq v3, v4, :cond_3

    .line 1366
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x480

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1370
    :cond_3
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;-><init>()V

    .line 1371
    .local v0, "browserFeliCa":Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;->setAllowUrl(Ljava/lang/String;)V

    .line 1372
    return-object v0
.end method

.method private parseChipIssuer(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 5
    .param p1, "extensionParameter"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 1169
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x460

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1172
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v2

    .line 1173
    .local v2, "extensionParameterChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1174
    :cond_1
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x461

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1177
    :cond_2
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 1178
    .local v1, "chipIssuerCode":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v3

    const/16 v4, 0x16

    if-eq v3, v4, :cond_3

    .line 1179
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x462

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1183
    :cond_3
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;-><init>()V

    .line 1184
    .local v0, "chipIssuer":Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;->setChipIssuerCode(Ljava/lang/String;)V

    .line 1185
    return-object v0
.end method

.method private parseExtensionData(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 9
    .param p1, "extensionData"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1105
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v6

    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 1106
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0x457

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6

    .line 1109
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v0

    .line 1110
    .local v0, "extensionDataChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v0, :cond_1

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1111
    :cond_1
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0x458

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6

    .line 1115
    :cond_2
    aget-object v1, v0, v8

    .line 1116
    .local v1, "extensionId":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_3

    .line 1117
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0x459

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6

    .line 1121
    :cond_3
    const/4 v6, 0x1

    aget-object v5, v0, v6

    .line 1122
    .local v5, "octedExtensionParameter":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 1123
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0x45a

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6

    .line 1127
    :cond_4
    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->parse([B)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v3

    .line 1128
    .local v3, "extensionParameterRoot":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-nez v3, :cond_5

    .line 1129
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0x45c

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6

    .line 1133
    :cond_5
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v6

    aget-object v2, v6, v8

    .line 1134
    .local v2, "extensionParameter":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 1135
    .local v4, "id":Ljava/lang/String;
    const-string v6, "0001"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1136
    invoke-direct {p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseChipIssuer(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v6

    .line 1145
    :goto_0
    return-object v6

    .line 1138
    :cond_6
    const-string v6, "0002"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1139
    invoke-direct {p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseFelicaAccess(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v6

    goto :goto_0

    .line 1141
    :cond_7
    const-string v6, "0003"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1142
    invoke-direct {p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseBrowserFelica(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v6

    goto :goto_0

    .line 1144
    :cond_8
    const-string v6, "0004"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1145
    invoke-direct {p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseOpenPlatformApp(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v6

    goto :goto_0

    .line 1149
    :cond_9
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0x45b

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6
.end method

.method private parseFelicaAccess(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 13
    .param p1, "extensionParameter"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 1206
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 1207
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v9, 0x46a

    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 1210
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v0

    .line 1211
    .local v0, "extensionParameterChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v0, :cond_1

    .line 1212
    array-length v8, v0

    if-eq v8, v9, :cond_2

    array-length v8, v0

    if-eq v8, v10, :cond_2

    .line 1214
    :cond_1
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1215
    const/16 v9, 0x46b

    .line 1214
    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 1218
    :cond_2
    const/4 v8, 0x0

    aget-object v7, v0, v8

    .line 1219
    .local v7, "privilegedCommandCategory":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/4 v8, 0x1

    aget-object v6, v0, v8

    .line 1220
    .local v6, "ordinaryCommandCategory":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v7}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 1221
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v8

    if-eq v8, v11, :cond_4

    .line 1222
    :cond_3
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v9, 0x46c

    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 1226
    :cond_4
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;

    invoke-direct {v1}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;-><init>()V

    .line 1227
    .local v1, "felicaAccess":Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    invoke-virtual {v7}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->setPrivilegedCommandCategory([B)V

    .line 1228
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->setOrdinaryCommandCategory([B)V

    .line 1229
    array-length v8, v0

    if-ne v8, v10, :cond_8

    .line 1230
    aget-object v4, v0, v9

    .line 1231
    .local v4, "offlineAccessTargetInfo":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v8

    if-eq v8, v12, :cond_5

    .line 1232
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v9, 0x46d

    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 1235
    :cond_5
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v5

    .line 1236
    .local v5, "offlineAccessTargetInfoChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v5, :cond_6

    .line 1237
    array-length v8, v5

    if-nez v8, :cond_7

    .line 1238
    :cond_6
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1239
    const/16 v9, 0x474

    .line 1238
    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 1243
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v5

    if-lt v2, v8, :cond_9

    .line 1248
    .end local v2    # "i":I
    .end local v4    # "offlineAccessTargetInfo":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .end local v5    # "offlineAccessTargetInfoChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    :cond_8
    return-object v1

    .line 1244
    .restart local v2    # "i":I
    .restart local v4    # "offlineAccessTargetInfo":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .restart local v5    # "offlineAccessTargetInfoChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    :cond_9
    aget-object v3, v5, v2

    .line 1245
    .local v3, "offlineAccessTarget":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseOfflineAccessTarget(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->addOfflineAccessTarget(Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;)V

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseNodeCodeRange(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;
    .locals 7
    .param p1, "asn1NodeCodeRange"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x16

    .line 1316
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 1317
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x479

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1320
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v2

    .line 1321
    .local v2, "nodeCodeRangeChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 1322
    :cond_1
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x47a

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1325
    :cond_2
    const/4 v4, 0x0

    aget-object v0, v2, v4

    .line 1326
    .local v0, "lowerNodeObject":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 1327
    .local v3, "upperNodeObject":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1328
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 1329
    :cond_3
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x47b

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1333
    :cond_4
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    invoke-direct {v1}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;-><init>()V

    .line 1334
    .local v1, "nodeCodeRange":Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->setLowerNode(Ljava/lang/String;)V

    .line 1335
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->setUpperNode(Ljava/lang/String;)V

    .line 1336
    return-object v1
.end method

.method private parseOfflineAccessTarget(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    .locals 10
    .param p1, "asn1OfflineAccessTarget"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x30

    .line 1268
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 1269
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x475

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 1272
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v5

    .line 1273
    .local v5, "offlineAccessTargetChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v5, :cond_1

    array-length v7, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 1275
    :cond_1
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1276
    const/16 v8, 0x476

    .line 1275
    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 1279
    :cond_2
    const/4 v7, 0x0

    aget-object v6, v5, v7

    .line 1280
    .local v6, "systemCode":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/4 v7, 0x1

    aget-object v2, v5, v7

    .line 1281
    .local v2, "nodeCodeRangeInfo":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_3

    .line 1282
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v7

    if-eq v7, v9, :cond_4

    .line 1283
    :cond_3
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x477

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 1286
    :cond_4
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v3

    .line 1287
    .local v3, "nodeCodeRangeInfoChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v3, :cond_5

    array-length v7, v3

    if-nez v7, :cond_6

    .line 1288
    :cond_5
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x478

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 1292
    :cond_6
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    invoke-direct {v4}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;-><init>()V

    .line 1293
    .local v4, "offlineAccessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v7}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->setSystemCode(Ljava/lang/String;)V

    .line 1294
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v7, v3

    if-lt v0, v7, :cond_7

    .line 1298
    return-object v4

    .line 1295
    :cond_7
    aget-object v1, v3, v0

    .line 1296
    .local v1, "nodeCodeRange":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseNodeCodeRange(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->addNodeCodeRange(Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;)V

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseOpenPlatformApp(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 5
    .param p1, "extensionParameter"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1391
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 1392
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x488

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1395
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v1

    .line 1396
    .local v1, "extensionParameterChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1397
    :cond_1
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x489

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1400
    :cond_2
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1401
    .local v0, "applicationSignerHash":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 1402
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x48a

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1406
    :cond_3
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;

    invoke-direct {v2}, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;-><init>()V

    .line 1407
    .local v2, "openPlatformApp":Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;->setHash([B)V

    .line 1408
    return-object v2
.end method

.method private parsePermit(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/Permit;
    .locals 26
    .param p1, "asn1Permit"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v14

    .line 997
    .local v14, "permitChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x0

    aget-object v15, v14, v24

    .line 998
    .local v15, "permitParameter":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x1

    aget-object v19, v14, v24

    .line 1000
    .local v19, "signature":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v15}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v11

    .line 1001
    .local v11, "parameterChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    array-length v12, v11

    .line 1002
    .local v12, "parameterLength":I
    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v12, v0, :cond_0

    const/16 v24, 0x9

    move/from16 v0, v24

    if-eq v12, v0, :cond_0

    .line 1003
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1004
    const/16 v25, 0x44c

    .line 1003
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1008
    :cond_0
    const/16 v24, 0x0

    aget-object v23, v11, v24

    .line 1009
    .local v23, "version":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x1

    aget-object v16, v11, v24

    .line 1010
    .local v16, "permitType":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x2

    aget-object v9, v11, v24

    .line 1011
    .local v9, "issuerId":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x3

    aget-object v17, v11, v24

    .line 1012
    .local v17, "serialNumber":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x4

    aget-object v10, v11, v24

    .line 1013
    .local v10, "keyId":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x5

    aget-object v21, v11, v24

    .line 1014
    .local v21, "validPeriod":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x6

    aget-object v18, v11, v24

    .line 1015
    .local v18, "serviceId":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/16 v24, 0x7

    aget-object v3, v11, v24

    .line 1017
    .local v3, "distributionPoint":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual/range {v16 .. v16}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 1018
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x44d

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1021
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 1022
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x44e

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1025
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1026
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x44f

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1029
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v22

    .line 1030
    .local v22, "validPeriodChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v24

    if-eqz v24, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 1031
    :cond_4
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x450

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1034
    :cond_5
    const/16 v24, 0x0

    aget-object v20, v22, v24

    .line 1035
    .local v20, "startPeriod":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual/range {v20 .. v20}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 1036
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x451

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1039
    :cond_6
    const/16 v24, 0x1

    aget-object v4, v22, v24

    .line 1040
    .local v4, "endPeriod":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 1041
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x452

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1044
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 1045
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x453

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1048
    :cond_8
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1049
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x454

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1053
    :cond_9
    new-instance v13, Lcom/felicanetworks/mfw/i/fbl/Permit;

    invoke-direct {v13}, Lcom/felicanetworks/mfw/i/fbl/Permit;-><init>()V

    .line 1054
    .local v13, "permit":Lcom/felicanetworks/mfw/i/fbl/Permit;
    new-instance v24, Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setVersion(Ljava/lang/String;)V

    .line 1055
    new-instance v24, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setPermitType(Ljava/lang/String;)V

    .line 1056
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setPermitIssuerId(Ljava/lang/String;)V

    .line 1057
    new-instance v24, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setSerialNum(Ljava/lang/String;)V

    .line 1058
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setKeyId(Ljava/lang/String;)V

    .line 1059
    new-instance v24, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setNotBefore(Ljava/lang/String;)V

    .line 1060
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setNotAfter(Ljava/lang/String;)V

    .line 1061
    new-instance v24, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setServiceId(Ljava/lang/String;)V

    .line 1062
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setRvctionDistributionPoint(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/felicanetworks/mfw/i/fbl/Permit;->setSignature([B)V

    .line 1065
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v12, v0, :cond_d

    .line 1066
    const/16 v24, 0x8

    aget-object v5, v11, v24

    .line 1067
    .local v5, "extensionArea":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 1068
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v25, 0x455

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1071
    :cond_a
    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v6

    .line 1072
    .local v6, "extensionAreaChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v6, :cond_b

    array-length v0, v6

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 1073
    :cond_b
    new-instance v24, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1074
    const/16 v25, 0x456

    .line 1073
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v24

    .line 1078
    :cond_c
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v8, v0, :cond_e

    .line 1083
    .end local v5    # "extensionArea":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .end local v6    # "extensionAreaChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .end local v8    # "i":I
    :cond_d
    return-object v13

    .line 1079
    .restart local v5    # "extensionArea":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .restart local v6    # "extensionAreaChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .restart local v8    # "i":I
    :cond_e
    aget-object v24, v6, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseExtensionData(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v7

    .line 1080
    .local v7, "extensionParameter":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-virtual {v13, v7}, Lcom/felicanetworks/mfw/i/fbl/Permit;->addExtension(Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;)V

    .line 1078
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private parseRevocationLimit(Ljava/lang/String;)I
    .locals 3
    .param p1, "revocationLimitStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 2080
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2081
    :cond_0
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fa5

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2083
    :cond_1
    invoke-static {p1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2084
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fa6

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2087
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2088
    .local v0, "revocationLimit":I
    const v1, 0x5f5e0ff

    if-le v0, v1, :cond_3

    .line 2089
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fa7

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2091
    :cond_3
    return v0
.end method

.method private parseRevocationResponse(Lcom/felicanetworks/mfw/i/cmn/RespData;)Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .locals 14
    .param p1, "response"    # Lcom/felicanetworks/mfw/i/cmn/RespData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x1faf

    const/16 v12, 0x1fae

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 2011
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/RespData;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->createLineList(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    move-result-object v1

    .line 2012
    .local v1, "lineList":Lcom/felicanetworks/mfw/i/cmn/ArrayList;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v2

    .line 2013
    .local v2, "lineSize":I
    if-ge v2, v9, :cond_0

    .line 2014
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v9, 0x1fa4

    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2018
    :cond_0
    invoke-virtual {v1, v10}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseRevocationLimit(Ljava/lang/String;)I

    move-result v4

    .line 2019
    .local v4, "revocationLimit":I
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseRevocationTerm(Ljava/lang/String;)I

    move-result v5

    .line 2020
    .local v5, "revocationTerm":I
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseSerialNumberCount(Ljava/lang/String;)I

    move-result v6

    .line 2022
    .local v6, "serialNumberCount":I
    if-ne v2, v11, :cond_2

    .line 2023
    invoke-virtual {v1, v9}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2024
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    invoke-direct {v8, p0, v12}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2026
    :cond_1
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    invoke-direct {v8, p0, v13}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2031
    :cond_2
    const/4 v7, 0x0

    .line 2032
    .local v7, "serialNumberList":[Ljava/lang/String;
    if-le v2, v11, :cond_6

    .line 2035
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_3

    .line 2041
    invoke-virtual {v1, v9}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2042
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    invoke-direct {v8, p0, v13}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2036
    :cond_3
    invoke-virtual {v1, v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2037
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    invoke-direct {v8, p0, v12}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2035
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2046
    :cond_5
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseSerialNumberList(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    .line 2047
    array-length v8, v7

    if-eq v6, v8, :cond_8

    .line 2048
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v9, 0x1fb2

    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2051
    .end local v0    # "i":I
    :cond_6
    if-eqz v6, :cond_7

    .line 2052
    new-instance v8, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v9, 0x1fb2

    invoke-direct {v8, p0, v9}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v8

    .line 2054
    :cond_7
    new-array v7, v10, [Ljava/lang/String;

    .line 2057
    :cond_8
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    invoke-direct {v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;-><init>()V

    .line 2058
    .local v3, "revocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNumLimit(I)V

    .line 2059
    invoke-virtual {v3, v5}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionTerm(I)V

    .line 2060
    invoke-virtual {v3, v6}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setSerialNumCount(I)V

    .line 2061
    invoke-virtual {v3, v7}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionList([Ljava/lang/String;)V

    .line 2062
    return-object v3
.end method

.method private parseRevocationTerm(Ljava/lang/String;)I
    .locals 3
    .param p1, "revocationTermStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2110
    :cond_0
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fa8

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2112
    :cond_1
    invoke-static {p1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2113
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fa9

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2116
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2117
    .local v0, "revocationTerm":I
    const v1, 0xa8c0

    if-le v0, v1, :cond_3

    .line 2118
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1faa

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2120
    :cond_3
    return v0
.end method

.method private parseSerialNumberCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "serialNumberCountStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 2138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2139
    :cond_0
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fab

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2141
    :cond_1
    invoke-static {p1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2142
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fac

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2145
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2146
    .local v0, "serialNumberCount":I
    const/16 v1, 0xc8

    if-le v0, v1, :cond_3

    .line 2147
    new-instance v1, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v2, 0x1fad

    invoke-direct {v1, p0, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v1

    .line 2149
    :cond_3
    return v0
.end method

.method private parseSerialNumberList(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)[Ljava/lang/String;
    .locals 5
    .param p1, "lineList"    # Lcom/felicanetworks/mfw/i/cmn/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    new-array v2, v3, [Ljava/lang/String;

    .line 2167
    .local v2, "serialNumberArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-lt v0, v3, :cond_0

    .line 2179
    return-object v2

    .line 2168
    :cond_0
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p1, v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2169
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 2170
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 2171
    const/16 v4, 0x1fb0

    .line 2170
    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 2173
    :cond_1
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecOrAlpha(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2174
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 2175
    const/16 v4, 0x1fb1

    .line 2174
    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 2177
    :cond_2
    aput-object v1, v2, v0

    .line 2167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 273
    :cond_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 276
    goto :goto_0
.end method

.method private sendErrorResponse(IILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorPosition"    # I
    .param p3, "nextUrl"    # Ljava/lang/String;

    .prologue
    .line 558
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    .line 559
    .local v3, "responseItemList":Lcom/felicanetworks/mfw/i/cmn/ArrayList;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "rescode":Ljava/lang/String;
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/Item;

    const-string v5, "rescode"

    invoke-direct {v4, v5, v2}, Lcom/felicanetworks/mfw/i/cmn/Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "h0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "errpos":Ljava/lang/String;
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/Item;

    const-string v5, "errpos"

    invoke-direct {v4, v5, v0}, Lcom/felicanetworks/mfw/i/cmn/Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 563
    invoke-static {v3}, Lcom/felicanetworks/mfw/i/fbl/RespCrtr;->createResp(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "parameter":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;)V

    const-string v5, "I007"

    invoke-virtual {v4, v5, p3, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/mfw/i/cmn/RespData;
    :try_end_0
    .catch Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private validateAccessTargetFormat(Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;)V
    .locals 5
    .param p1, "accessTarget"    # Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1563
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getSystemCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1564
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getSystemCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1565
    :cond_0
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1566
    const/16 v3, 0x49b

    .line 1565
    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1570
    :cond_1
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeSize()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1583
    return-void

    .line 1571
    :cond_2
    invoke-virtual {p1, v0}, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->getNodeCodeRange(I)Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    move-result-object v1

    .line 1572
    .local v1, "nodeCodeRange":Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->getLowerNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1573
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->getLowerNode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1574
    :cond_3
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1575
    const/16 v3, 0x49c

    .line 1574
    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1577
    :cond_4
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->getUpperNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 1578
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->getUpperNode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1579
    :cond_5
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1580
    const/16 v3, 0x49d

    .line 1579
    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1570
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private validateExtensionFormat(Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;)V
    .locals 6
    .param p1, "extension"    # Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1489
    invoke-interface {p1}, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1490
    check-cast p1, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;

    .end local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;->getChipIssuerCode()Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, "chipIssuerCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isHexString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1493
    :cond_0
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x492

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1495
    .end local v2    # "chipIssuerCode":Ljava/lang/String;
    .restart local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    :cond_1
    invoke-interface {p1}, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0002"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1496
    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;

    .line 1497
    .local v3, "felicaAccess":Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    invoke-direct {p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validateFelicaAccessFormat(Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;)V

    .line 1511
    .end local v3    # "felicaAccess":Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    .end local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    :cond_2
    return-void

    .line 1498
    .restart local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    :cond_3
    invoke-interface {p1}, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1499
    check-cast p1, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;

    .end local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/BrowserFelica;->getAllowUrl()Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, "allowUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidUrlCharacter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1502
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x49e

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1504
    .end local v0    # "allowUrl":Ljava/lang/String;
    .restart local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    :cond_4
    invoke-interface {p1}, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0004"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1505
    check-cast p1, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;

    .end local p1    # "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;->getHash()[B

    move-result-object v1

    .line 1506
    .local v1, "certificationHash":[B
    array-length v4, v1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 1508
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x49f

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4
.end method

.method private validateFelicaAccessFormat(Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;)V
    .locals 6
    .param p1, "felicaAccess"    # Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 1526
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOrdinaryCommandCategory()[B

    move-result-object v2

    .line 1527
    .local v2, "ordinaryCommandCategory":[B
    array-length v4, v2

    if-eq v4, v5, :cond_0

    .line 1528
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x499

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1531
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getPrivilegedCommandCategory()[B

    move-result-object v3

    .line 1532
    .local v3, "privilegedCommandCategory":[B
    array-length v4, v3

    if-eq v4, v5, :cond_1

    .line 1533
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    .line 1534
    const/16 v5, 0x49a

    .line 1533
    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1538
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetSize()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 1542
    return-void

    .line 1539
    :cond_2
    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->getOfflineAccessTarget(I)Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    move-result-object v0

    .line 1540
    .local v0, "accessTarget":Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    invoke-direct {p0, v0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validateAccessTargetFormat(Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;)V

    .line 1538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private validateFormat(Lcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 6
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x13

    .line 1429
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getPermitType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getPermitType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1430
    :cond_0
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x493

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1434
    :cond_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getSerialNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getSerialNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecOrAlpha(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1435
    :cond_2
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x494

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1439
    :cond_3
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getNotBefore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 1440
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getNotBefore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1441
    :cond_4
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x495

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1445
    :cond_5
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getNotAfter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1446
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getNotAfter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->isValidDateFormat(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1447
    :cond_6
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x496

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1451
    :cond_7
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecOrAlpha(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1452
    :cond_8
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x497

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1456
    :cond_9
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, "distributionPoint":Ljava/lang/String;
    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_a

    .line 1464
    new-instance v3, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v4, 0x498

    invoke-direct {v3, p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v3

    .line 1469
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionSize()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 1473
    return-void

    .line 1470
    :cond_b
    invoke-virtual {p1, v2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(I)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v1

    .line 1471
    .local v1, "extension":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-direct {p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validateExtensionFormat(Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;)V

    .line 1469
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private validateIssuerAndKey(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V
    .locals 3
    .param p1, "issuerId"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .param p2, "keyId"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x16

    .line 850
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 851
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v1, 0x3fd

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v0

    .line 853
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 854
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isDecOrAlpha(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 855
    :cond_1
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v1, 0x3fe

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v0

    .line 857
    :cond_2
    invoke-virtual {p2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 858
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v1, 0x3ff

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v0

    .line 860
    :cond_3
    invoke-virtual {p2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 861
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 862
    :cond_4
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v0

    .line 864
    :cond_5
    return-void
.end method

.method private validatePermit(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V
    .locals 11
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x30

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 765
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v7

    if-eq v7, v8, :cond_0

    .line 766
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x3ea

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 769
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v3

    .line 770
    .local v3, "permitChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v3, :cond_1

    array-length v7, v3

    if-eq v7, v10, :cond_2

    .line 771
    :cond_1
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x3eb

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 774
    :cond_2
    aget-object v4, v3, v9

    .line 775
    .local v4, "permitParameter":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/4 v7, 0x1

    aget-object v5, v3, v7

    .line 776
    .local v5, "signer":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 777
    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 779
    :cond_3
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x3ec

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 782
    :cond_4
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v2

    .line 783
    .local v2, "parameterChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v2, :cond_5

    array-length v7, v2

    if-nez v7, :cond_6

    .line 784
    :cond_5
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x3f2

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 786
    :cond_6
    array-length v7, v2

    const/4 v8, 0x5

    if-ge v7, v8, :cond_7

    .line 787
    new-instance v7, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v8, 0x3fc

    invoke-direct {v7, p0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v7

    .line 790
    :cond_7
    aget-object v6, v2, v9

    .line 791
    .local v6, "version":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-direct {p0, v6}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validateVersion(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 793
    aget-object v0, v2, v10

    .line 794
    .local v0, "issuerId":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/4 v7, 0x4

    aget-object v1, v2, v7

    .line 795
    .local v1, "keyId":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->validateIssuerAndKey(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 796
    return-void
.end method

.method private validateVersion(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V
    .locals 2
    .param p1, "version"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 812
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v1, 0x3f3

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v0

    .line 814
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isValidPermitVersion([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v1, 0x3f4

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v0

    .line 817
    :cond_1
    return-void
.end method

.method private verifyCaller(Ljava/util/Vector;Lcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 8
    .param p2, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<[B>;",
            "Lcom/felicanetworks/mfw/i/fbl/Permit;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .local p1, "signatureHashes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1705
    const-string v4, "%s : signatures = %s, permit = %s"

    const-string v5, "000"

    invoke-static {v7, v4, v5, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1706
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 1707
    :cond_0
    const-string v4, "800 signatures = %s, permit = %s"

    invoke-static {v6, v4, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1708
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1712
    :cond_1
    invoke-virtual {p2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionSize()I

    move-result v4

    if-nez v4, :cond_2

    .line 1713
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x4aa

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1715
    :cond_2
    const-string v4, "0004"

    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;

    .line 1716
    .local v3, "openPlatformApp":Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;
    if-nez v3, :cond_3

    .line 1717
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x76d

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1719
    :cond_3
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;->getHash()[B

    move-result-object v0

    .line 1742
    .local v0, "expected":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 1750
    const-string v4, "801 signatures ummatch"

    invoke-static {v6, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 1751
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v5, 0x76c

    invoke-direct {v4, p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v4

    .line 1743
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1744
    .local v1, "hash":[B
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1745
    const-string v4, "%s, (found at signatures[%d])"

    const-string v5, "999"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1746
    return-void

    .line 1742
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private verifyParameters(Lcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 4
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1808
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1809
    const-string v2, "0001"

    invoke-virtual {p1, v2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1810
    const-string v2, "0002"

    invoke-virtual {p1, v2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1811
    const-string v2, "0004"

    invoke-virtual {p1, v2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1812
    :cond_0
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x4ab

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1816
    :cond_1
    const-string v2, "0001"

    invoke-virtual {p1, v2}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;

    .line 1817
    .local v0, "chipIssuer":Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;->getChipIssuerCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->CHIP_ISSUER_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1818
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0xbb9

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1822
    :cond_2
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getPermitType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1823
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0xbba

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1839
    :cond_3
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v1

    .line 1840
    .local v1, "distributionPoint":Ljava/lang/String;
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1841
    invoke-static {v1}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidURL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1842
    new-instance v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v3, 0x4a9

    invoke-direct {v2, p0, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v2

    .line 1845
    :cond_4
    return-void
.end method

.method private verifyPeriod(Lcom/felicanetworks/mfw/i/fbl/Permit;)V
    .locals 8
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/fbl/Permit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 1772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1773
    .local v0, "current":J
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getNotBefore()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->toMillisWithTZD(Ljava/lang/String;)J

    move-result-wide v4

    .line 1774
    .local v4, "start":J
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getNotAfter()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->toMillisWithTZD(Ljava/lang/String;)J

    move-result-wide v2

    .line 1775
    .local v2, "end":J
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    .line 1776
    :cond_0
    new-instance v6, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v7, 0xbb8

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v6

    .line 1778
    :cond_1
    return-void
.end method

.method private verifyPermit(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V
    .locals 11
    .param p1, "permit"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v4, v9, v10

    .line 883
    .local v4, "permitParameter":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v1

    .line 884
    .local v1, "issuerId":[B
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v3

    .line 885
    .local v3, "keyId":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v9, v10}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 888
    .local v2, "key":[B
    invoke-virtual {p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v5, v9, v10

    .line 889
    .local v5, "signature":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-direct {p0, v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->createSignatur(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)[B

    move-result-object v6

    .line 890
    .local v6, "signatureData":[B
    invoke-direct {p0, v4}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->createSignatureTarget(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)[B

    move-result-object v7

    .line 894
    .local v7, "signatureTarget":[B
    :try_start_0
    sget-object v9, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sverifier:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    invoke-virtual {v9, v7, v6, v2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->verify([B[B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 898
    .local v8, "verifyResult":Z
    if-nez v8, :cond_0

    .line 899
    new-instance v9, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v10, 0x407

    invoke-direct {v9, p0, v10}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v9

    .line 895
    .end local v8    # "verifyResult":Z
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v10, 0x408

    invoke-direct {v9, p0, v10}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v9

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "verifyResult":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public getPermit()Lcom/felicanetworks/mfw/i/fbl/Permit;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    return-object v0
.end method

.method public setListener(Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "Illegal argument."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    const-string v3, "setListener"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permitListener:Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

    .line 205
    return-void
.end method

.method public startVerification(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 19
    .param p1, "permitString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "signatures":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permitListener:Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

    if-nez v15, :cond_0

    .line 340
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v2, "buf":Ljava/lang/StringBuffer;
    const-string v15, "Illegal state. Set listener first."

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    new-instance v15, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v16, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    const-string v17, "startVerification"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v15

    .line 345
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    if-nez p1, :cond_1

    .line 346
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    const-string v15, "Illegal argument."

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, " [permitString = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    new-instance v15, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v16, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    const-string v17, "startVerification"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v15

    .line 351
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 352
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    const-string v15, "Illegal argument."

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, " [signatures = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    new-instance v15, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v16, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    const-string v17, "startVerification"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v15

    .line 361
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 362
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15
    :try_end_0
    .catch Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :catch_0
    move-exception v5

    .line 515
    .local v5, "e":Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permitListener:Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

    invoke-virtual {v5}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;->getErrorCode()I

    move-result v16

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;->ntfyVerificationResult(ILjava/lang/String;)V

    .line 518
    .end local v5    # "e":Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
    :goto_0
    return-void

    .line 366
    :cond_4
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->createPermit(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/Permit;

    move-result-object v8

    .line 371
    .local v8, "permit":Lcom/felicanetworks/mfw/i/fbl/Permit;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->verifyCaller(Ljava/util/Vector;Lcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->verifyPeriod(Lcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 373
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->verifyParameters(Lcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 374
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permit:Lcom/felicanetworks/mfw/i/fbl/Permit;

    .line 377
    invoke-virtual {v8}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permitListener:Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;->ntfyVerificationResult(ILjava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 385
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 389
    :cond_6
    new-instance v10, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v15}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;)V

    .line 390
    .local v10, "resourceConnector":Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;
    const-string v15, "Start get local Revocation."

    invoke-static {v15}, Lcom/felicanetworks/mfw/i/cmn/DebugLogger;->set(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v8}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->readRevocationResource(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    move-result-object v11

    .line 394
    .local v11, "revocationInfo":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 395
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 399
    :cond_7
    invoke-virtual {v11}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getUpdateDate()Ljava/lang/String;

    move-result-object v14

    .line 400
    .local v14, "updateDate":Ljava/lang/String;
    if-nez v14, :cond_8

    const-wide/16 v6, 0x0

    .line 402
    .local v6, "lastModified":J
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isInvalidRevocation(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;Lcom/felicanetworks/mfw/i/fbl/Permit;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 405
    invoke-virtual {v8}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v12

    .line 406
    .local v12, "revocationRequestUrl":Ljava/lang/String;
    const-string v15, "Start get online Revocation."

    invoke-static {v15}, Lcom/felicanetworks/mfw/i/cmn/DebugLogger;->set(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v6, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->getRevocationResponse(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;Ljava/lang/String;J)Lcom/felicanetworks/mfw/i/cmn/RespData;

    move-result-object v13

    .line 411
    .local v13, "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseRevocationResponse(Lcom/felicanetworks/mfw/i/cmn/RespData;)Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    move-result-object v9

    .line 413
    .local v9, "receivedRevocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    invoke-static {}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->getCurrentJSTString()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "currentDate":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUpdateDate(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v11, v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUsedDate(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v11, v12}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionPoint(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionPointSize(I)V

    .line 420
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNumLimit()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNumLimit(I)V

    .line 421
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionTerm()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionTerm(I)V

    .line 422
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getSerialNumCount()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setSerialNumCount(I)V

    .line 423
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionList()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionList([Ljava/lang/String;)V

    .line 424
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNum(I)V

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 428
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 400
    .end local v4    # "currentDate":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v9    # "receivedRevocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .end local v12    # "revocationRequestUrl":Ljava/lang/String;
    .end local v13    # "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    :cond_8
    invoke-static {v14}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->toMillis(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 430
    .restart local v4    # "currentDate":Ljava/lang/String;
    .restart local v6    # "lastModified":J
    .restart local v9    # "receivedRevocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .restart local v12    # "revocationRequestUrl":Ljava/lang/String;
    .restart local v13    # "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    :cond_9
    invoke-virtual {v10, v11}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->updateRevocationResource(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V

    .line 499
    .end local v4    # "currentDate":Ljava/lang/String;
    .end local v9    # "receivedRevocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .end local v12    # "revocationRequestUrl":Ljava/lang/String;
    .end local v13    # "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    :cond_a
    :goto_2
    const-string v15, "End Revocation"

    invoke-static {v15}, Lcom/felicanetworks/mfw/i/cmn/DebugLogger;->set(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isValidPermit(Lcom/felicanetworks/mfw/i/fbl/Permit;Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 503
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0xbc2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 431
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isOverLimitRevocation(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;J)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 434
    invoke-virtual {v8}, Lcom/felicanetworks/mfw/i/fbl/Permit;->getRvctionDistributionPoint()Ljava/lang/String;

    move-result-object v12

    .line 435
    .restart local v12    # "revocationRequestUrl":Ljava/lang/String;
    const-string v15, "Start get online Revocation."

    invoke-static {v15}, Lcom/felicanetworks/mfw/i/cmn/DebugLogger;->set(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException; {:try_start_1 .. :try_end_1} :catch_0

    .line 436
    const/4 v9, 0x0

    .line 438
    .restart local v9    # "receivedRevocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v6, v7}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->getRevocationResponse(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;Ljava/lang/String;J)Lcom/felicanetworks/mfw/i/cmn/RespData;

    move-result-object v13

    .line 440
    .restart local v13    # "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->parseRevocationResponse(Lcom/felicanetworks/mfw/i/cmn/RespData;)Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    :try_end_2
    .catch Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 458
    .end local v13    # "revocationResponse":Lcom/felicanetworks/mfw/i/cmn/RespData;
    :goto_3
    if-eqz v9, :cond_a

    .line 461
    :try_start_3
    invoke-static {}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->getCurrentJSTString()Ljava/lang/String;

    move-result-object v4

    .line 463
    .restart local v4    # "currentDate":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUpdateDate(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v11, v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUsedDate(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v11, v12}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionPoint(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionPointSize(I)V

    .line 468
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNumLimit()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNumLimit(I)V

    .line 469
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionTerm()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionTerm(I)V

    .line 470
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getSerialNumCount()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setSerialNumCount(I)V

    .line 471
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getRvctionList()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setRvctionList([Ljava/lang/String;)V

    .line 472
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNum(I)V

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 475
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 441
    .end local v4    # "currentDate":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 446
    .restart local v5    # "e":Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
    invoke-virtual {v11}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNum()I

    move-result v15

    add-int/lit8 v3, v15, 0x1

    .line 447
    .local v3, "count":I
    const v15, 0x5f5e0ff

    if-le v3, v15, :cond_c

    .line 449
    const/4 v3, 0x0

    .line 451
    :cond_c
    invoke-virtual {v11, v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNum(I)V

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 454
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 456
    :cond_d
    invoke-virtual {v10, v11}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->updateOfflineRevocationResource(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V

    goto :goto_3

    .line 477
    .end local v3    # "count":I
    .end local v5    # "e":Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
    .restart local v4    # "currentDate":Ljava/lang/String;
    :cond_e
    invoke-virtual {v10, v11}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->updateRevocationResource(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V

    goto/16 :goto_2

    .line 485
    .end local v4    # "currentDate":Ljava/lang/String;
    .end local v9    # "receivedRevocation":Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .end local v12    # "revocationRequestUrl":Ljava/lang/String;
    :cond_f
    invoke-virtual {v11}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->getOfflineRvctionNum()I

    move-result v15

    add-int/lit8 v3, v15, 0x1

    .line 486
    .restart local v3    # "count":I
    const v15, 0x5f5e0ff

    if-le v3, v15, :cond_10

    .line 488
    const/4 v3, 0x0

    .line 490
    :cond_10
    invoke-virtual {v11, v3}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setOfflineRvctionNum(I)V

    .line 491
    invoke-static {}, Lcom/felicanetworks/mfw/i/cmn/DateUtil;->getCurrentJSTString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setUsedDate(Ljava/lang/String;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->isStopped()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 495
    new-instance v15, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;

    const/16 v16, 0x384

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V

    throw v15

    .line 497
    :cond_11
    invoke-virtual {v10, v11}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->updateOfflineRevocationResource(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V

    goto/16 :goto_2

    .line 507
    .end local v3    # "count":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->permitListener:Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/felicanetworks/mfw/i/fbl/PermitOptrListener;->ntfyVerificationResult(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public stopVerification()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->stopped:Z

    .line 163
    return-void
.end method
