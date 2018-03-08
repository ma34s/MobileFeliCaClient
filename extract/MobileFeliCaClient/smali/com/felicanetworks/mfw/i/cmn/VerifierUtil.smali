.class public Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;
.super Ljava/lang/Object;
.source "VerifierUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyValue(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;)V
    .locals 9
    .param p0, "issuerId"    # Ljava/lang/String;
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;

    .prologue
    const/4 v0, 0x4

    .line 161
    const-string v1, "%s : issuerId = %s, keyId = %s, listener = %s"

    const-string v2, "000"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x1

    const-string v1, "800 issuerId = %s, keyId = %s, listener = %s"

    invoke-static {v0, v1, p0, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v1, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v2, "getKeyValue"

    const-string v3, "invalid parameter"

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "searchKey":Ljava/lang/String;
    sget-object v1, Lcom/felicanetworks/mfw/i/fbl/Property;->KEY_SET:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 172
    .local v7, "pubKey":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 173
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;->resKeyValue([BI)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_2
    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 180
    .local v6, "keyData":[B
    array-length v1, v6

    invoke-interface {p2, v6, v1}, Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;->resKeyValue([BI)V

    .line 181
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static verify([BI[BI[BILcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;)V
    .locals 19
    .param p0, "target"    # [B
    .param p1, "targetLength"    # I
    .param p2, "sign"    # [B
    .param p3, "signLength"    # I
    .param p4, "key"    # [B
    .param p5, "keyLength"    # I
    .param p6, "listener"    # Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;

    .prologue
    .line 76
    const/4 v3, 0x4

    .line 77
    const-string v4, "%s : target = %s, targetLength = %d, sign = %s, signLength = %d, key = %s, keyLength = %d, listener = %s"

    .line 78
    const-string v5, "000"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    .line 75
    invoke-static/range {v3 .. v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p6, :cond_1

    .line 80
    :cond_0
    const/4 v3, 0x1

    const-string v4, "%s : target = %s, sign = %s, key = %s, listener = %s"

    const-string v5, "800"

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v5, "verify"

    const-string v6, "invalid parameter"

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_1
    move-object/from16 v0, p0

    array-length v3, v0

    move/from16 v0, p1

    if-ne v3, v0, :cond_2

    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, p3

    if-ne v3, v0, :cond_2

    .line 86
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, p5

    if-eq v3, v0, :cond_3

    .line 88
    :cond_2
    const/4 v3, 0x1

    .line 89
    const-string v4, "%s : target.length = %d, targetLength = %d, sign.length = %d, signLength = %d, key.length = %d, keyLength = %d"

    .line 90
    const-string v5, "801"

    move-object/from16 v0, p0

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p2

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p4

    array-length v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 91
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 87
    invoke-static/range {v3 .. v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v5, "verify"

    const-string v6, "invalid parameter"

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_3
    :try_start_0
    new-instance v14, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 99
    .local v14, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v15

    .line 105
    .local v15, "kf":Ljava/security/KeyFactory;
    monitor-enter v15
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_3

    .line 106
    :try_start_1
    invoke-virtual {v15, v14}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v16

    .line 105
    .local v16, "pubkey":Ljava/security/PublicKey;
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    const-string v3, "SHA256withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v18

    .line 115
    .local v18, "sig":Ljava/security/Signature;
    monitor-enter v18
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_3

    .line 117
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 118
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 119
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v17

    .line 115
    .local v17, "result":Z
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    if-eqz v17, :cond_4

    .line 123
    const/4 v3, 0x7

    :try_start_4
    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;->ntfyVerificationEnd(I)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_3

    .line 144
    :goto_0
    const/4 v3, 0x4

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void

    .line 105
    .end local v16    # "pubkey":Ljava/security/PublicKey;
    .end local v17    # "result":Z
    .end local v18    # "sig":Ljava/security/Signature;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_3

    .line 130
    .end local v14    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v15    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v13

    .line 131
    .local v13, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x1

    const-string v4, "%s %s"

    const-string v5, "802"

    invoke-virtual {v13}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v5, "verify"

    const-string v6, "key factory generation failed."

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v13    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v14    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v15    # "kf":Ljava/security/KeyFactory;
    .restart local v16    # "pubkey":Ljava/security/PublicKey;
    .restart local v18    # "sig":Ljava/security/Signature;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_3

    .line 133
    .end local v14    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v15    # "kf":Ljava/security/KeyFactory;
    .end local v16    # "pubkey":Ljava/security/PublicKey;
    .end local v18    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v13

    .line 134
    .local v13, "e":Ljava/security/spec/InvalidKeySpecException;
    const/4 v3, 0x1

    const-string v4, "%s InvalidKeySpecException"

    const-string v5, "803"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v5, "verify"

    const-string v6, "pub key extraction failed."

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v13    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v14    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v15    # "kf":Ljava/security/KeyFactory;
    .restart local v16    # "pubkey":Ljava/security/PublicKey;
    .restart local v17    # "result":Z
    .restart local v18    # "sig":Ljava/security/Signature;
    :cond_4
    const/4 v3, 0x7

    :try_start_9
    const-string v4, "%s"

    const-string v5, "002"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;->ntfyVerificationEnd(I)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_0

    .line 136
    .end local v14    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v15    # "kf":Ljava/security/KeyFactory;
    .end local v16    # "pubkey":Ljava/security/PublicKey;
    .end local v17    # "result":Z
    .end local v18    # "sig":Ljava/security/Signature;
    :catch_2
    move-exception v13

    .line 137
    .local v13, "e":Ljava/security/InvalidKeyException;
    const/4 v3, 0x1

    const-string v4, "%s InvalidKeyException"

    const-string v5, "804"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v5, "verify"

    const-string v6, "invalid pub key."

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 139
    .end local v13    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v13

    .line 140
    .local v13, "e":Ljava/security/SignatureException;
    const/4 v3, 0x1

    const-string v4, "%s SignatureException"

    const-string v5, "805"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 141
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;

    const-string v5, "verify"

    .line 142
    const-string v6, "instance sig initialization failed."

    .line 141
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method
