.class public Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
.super Ljava/lang/Object;
.source "Asn1Object.java"


# static fields
.field public static final BITSTRING:B = 0x3t

.field public static final GENERALIZEDTIME:B = 0x18t

.field public static final IA5STRING:B = 0x16t

.field public static final INTEGER:B = 0x2t

.field public static final NULL:B = 0x5t

.field public static final OCTETSTRING:B = 0x4t

.field public static final OID:B = 0x6t

.field public static final ROOT:B = 0x0t

.field public static final SEQUENCE:B = 0x30t


# instance fields
.field private children:[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

.field private data:[B

.field private lengthOfLengthField:I

.field private tagAndLengthData:[B

.field private tagType:B


# direct methods
.method public constructor <init>(B)V
    .locals 2
    .param p1, "tagType"    # B

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-byte v1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagType:B

    .line 51
    iput v1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->lengthOfLengthField:I

    .line 54
    iput-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagAndLengthData:[B

    .line 57
    iput-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->data:[B

    .line 60
    iput-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->children:[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .line 70
    iput-byte p1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagType:B

    .line 71
    return-void
.end method


# virtual methods
.method public getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->children:[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->data:[B

    return-object v0
.end method

.method public getLengthOfLengthField()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->lengthOfLengthField:I

    return v0
.end method

.method public getTagAndLengthData()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagAndLengthData:[B

    return-object v0
.end method

.method public getTagType()I
    .locals 1

    .prologue
    .line 80
    iget-byte v0, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagType:B

    return v0
.end method

.method public setChildren([Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V
    .locals 0
    .param p1, "children"    # [Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->children:[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .line 176
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 154
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->data:[B

    .line 155
    return-void
.end method

.method public setLengthOfLengthField(I)V
    .locals 0
    .param p1, "lengthOfLengthField"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->lengthOfLengthField:I

    .line 113
    return-void
.end method

.method public setTagAndLengthData([B)V
    .locals 0
    .param p1, "tagAndLengthData"    # [B

    .prologue
    .line 133
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagAndLengthData:[B

    .line 134
    return-void
.end method

.method public setTagType(B)V
    .locals 0
    .param p1, "tagType"    # B

    .prologue
    .line 91
    iput-byte p1, p0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->tagType:B

    .line 92
    return-void
.end method
