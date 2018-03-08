.class public Lcom/felicanetworks/falp/FalpConfig;
.super Ljava/lang/Object;
.source "FalpConfig.java"


# static fields
.field static final DFALP_ACK_WAIT_DEFAULT:Z = false

.field static final DFALP_ACK_WAIT_STRING:Ljava/lang/String; = "ack_wait"

.field static final DFALP_ADH_COMM_HS:Ljava/lang/String; = "hs"

.field static final DFALP_ADH_COMM_HS_DEFAULT:I = 0xbb8

.field static final DFALP_ADH_COMM_HS_RES:Ljava/lang/String; = "hs_res"

.field static final DFALP_ADH_COMM_HS_RES_ALL:Ljava/lang/String; = "hs_res_all"

.field static final DFALP_ADH_COMM_HS_RES_ALL_DEFAULT:I = 0xafc8

.field static final DFALP_ADH_COMM_HS_RES_DEFAULT:I = 0xbb8

.field static final DFALP_ADH_COMM_HS_RES_SEND:Ljava/lang/String; = "hs_res_send"

.field static final DFALP_ADH_COMM_HS_RES_SEND_ALL:Ljava/lang/String; = "hs_res_send_all"

.field static final DFALP_ADH_COMM_HS_RES_SEND_ALL_DEFAULT:I = 0xb3b0

.field static final DFALP_ADH_COMM_HS_RES_SEND_DEFAULT:I = 0x1388

.field static final DFALP_ADH_COMM_TM_DATA:Ljava/lang/String; = "tm_data"

.field static final DFALP_ADH_COMM_TM_DATA_DEFAULT:I = 0xbb8

.field static final DFALP_ADH_MNG_TOBC_MAX:Ljava/lang/String; = "max_tobc"

.field static final DFALP_ADH_MNG_TOBC_MAX_DEFAULT:I = 0x186a0

.field static final DFALP_ADH_PEER_TDG_MAX:Ljava/lang/String; = "max_tdb"

.field static final DFALP_ADH_PEER_TDG_MAX_DEFAULT:I = 0xf4240

.field static final DFALP_COMM_RS:Ljava/lang/String; = "rs"

.field public static final DFALP_COMM_RS_DEFAULT:I = 0x67746

.field static final DFALP_COMM_TDAB:Ljava/lang/String; = "tdab"

.field static final DFALP_COMM_TDAB_DEFAULT:I = 0xa

.field static final DFALP_COMM_TDAC:Ljava/lang/String; = "tdac"

.field static final DFALP_COMM_TDAC_DEFAULT:I = 0x6

.field static final DFALP_COMM_TDB:Ljava/lang/String; = "tdb"

.field static final DFALP_COMM_TDB_DEFAULT:I = 0x5dc

.field static final DFALP_COMM_TDCC:Ljava/lang/String; = "tdcc"

.field static final DFALP_COMM_TDCC_DEFAULT:I = 0xb

.field static final DFALP_COMM_TDDB:Ljava/lang/String; = "tddb"

.field static final DFALP_COMM_TDDB_DEFAULT:I = 0xc

.field static final DFALP_COMM_TDDC:Ljava/lang/String; = "tddc"

.field static final DFALP_COMM_TDDC_DEFAULT:I = 0x6

.field static final DFALP_COMM_TDE:Ljava/lang/String; = "tde"

.field static final DFALP_COMM_TDE_DEFAULT:I = 0x3e8

.field static final DFALP_COMM_TDF:Ljava/lang/String; = "tdf"

.field static final DFALP_COMM_TDF_DEFAULT:I = 0x186a0

.field static final DFALP_COMM_TDG:Ljava/lang/String; = "Tdg"

.field static final DFALP_COMM_TDG_DEFAULT:I = 0x0

.field static final DFALP_COMM_TDH:Ljava/lang/String; = "tdh"

.field static final DFALP_COMM_TDH_DEFAULT:I = 0x493e0

.field static final DFALP_COMM_TDI:Ljava/lang/String; = "tdi"

.field static final DFALP_COMM_TDI_DEFAULT:I = 0x30d40

.field static final DFALP_COMM_WS:Ljava/lang/String; = "ws"

.field static final DFALP_COMM_WS_DEFAULT:I = 0x70800

.field static final DFALP_MAX_FALP_RCEV_PACKET_SEQUENCE:Ljava/lang/String; = "max_rcv_pkt"

.field static final DFALP_MAX_FALP_RCEV_PACKET_SEQUENCE_DEFAULT:S = 0x80s

.field static final DFALP_MAX_FALP_RCEV_SIZE:Ljava/lang/String; = "max_rcv_size"

.field static final DFALP_MAX_FALP_RCEV_SIZE_DEFAULT:S = 0xf9s

.field static final DFALP_MAX_FALP_SEND_PACKET_SEQUENCE:Ljava/lang/String; = "max_send_pkt"

.field static final DFALP_MAX_FALP_SEND_PACKET_SEQUENCE_DEFAULT:S = 0x80s

.field static final DFALP_MAX_FALP_SEND_SIZE:Ljava/lang/String; = "max_send_size"

.field static final DFALP_MAX_FALP_SEND_SIZE_DEFAULT:S = 0xf9s

.field public static final FALP_FALPCONFIG_FILEPASS:Ljava/lang/String; = "/system/etc/felica/falp_config.cfg"

.field static adh_comm_hs:I

.field static adh_comm_hs_res:I

.field static adh_comm_hs_res_all:I

.field static adh_comm_hs_res_send:S

.field static adh_comm_hs_res_send_all:I

.field static adh_comm_tm_data:I

.field static com_tdf:J

.field public static comm_rs:J

.field static comm_tdab:I

.field static comm_tdac:I

.field static comm_tdb:J

.field static comm_tdcc:I

.field static comm_tddb:I

.field static comm_tddc:I

.field static comm_tde:J

.field static comm_tdg:I

.field static comm_tdg_max:I

.field static comm_tdh:J

.field static comm_tdi:J

.field static comm_tobc_max:I

.field static comm_ws:J

.field static max_falp_recv_packet_sequence:I

.field static max_falp_recv_size:S

.field static max_falp_send_packet_sequence:S

.field static max_falp_send_size:S

.field static wait_ack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 475
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->setFalpConfigValue()V

    .line 476
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDfalpAckWait()Z
    .locals 1

    .prologue
    .line 794
    sget-boolean v0, Lcom/felicanetworks/falp/FalpConfig;->wait_ack:Z

    return v0
.end method

.method public static getDfalpAdhCommHs()I
    .locals 1

    .prologue
    .line 708
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs:I

    return v0
.end method

.method public static getDfalpAdhCommHsRes()I
    .locals 1

    .prologue
    .line 678
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res:I

    return v0
.end method

.method public static getDfalpAdhCommHsResAll()I
    .locals 1

    .prologue
    .line 693
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_all:I

    return v0
.end method

.method public static getDfalpAdhCommHsResSend()I
    .locals 1

    .prologue
    .line 723
    sget-short v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_send:S

    return v0
.end method

.method public static getDfalpAdhCommHsResSendAll()I
    .locals 1

    .prologue
    .line 738
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_send_all:I

    return v0
.end method

.method public static getDfalpAdhCommTmData()I
    .locals 1

    .prologue
    .line 753
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_tm_data:I

    return v0
.end method

.method public static getDfalpAdhMngTobcMax()I
    .locals 1

    .prologue
    .line 485
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tobc_max:I

    return v0
.end method

.method public static getDfalpAdhPeerTdgMax()I
    .locals 1

    .prologue
    .line 470
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdg_max:I

    return v0
.end method

.method public static getDfalpCommRs()J
    .locals 2

    .prologue
    .line 559
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_rs:J

    return-wide v0
.end method

.method public static getDfalpCommTdab()I
    .locals 1

    .prologue
    .line 633
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdab:I

    return v0
.end method

.method public static getDfalpCommTdac()I
    .locals 1

    .prologue
    .line 623
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdac:I

    return v0
.end method

.method public static getDfalpCommTdb()J
    .locals 2

    .prologue
    .line 548
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdb:J

    return-wide v0
.end method

.method public static getDfalpCommTdcc()I
    .locals 1

    .prologue
    .line 643
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdcc:I

    return v0
.end method

.method public static getDfalpCommTddb()I
    .locals 1

    .prologue
    .line 663
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tddb:I

    return v0
.end method

.method public static getDfalpCommTddc()I
    .locals 1

    .prologue
    .line 653
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tddc:I

    return v0
.end method

.method public static getDfalpCommTde()J
    .locals 2

    .prologue
    .line 570
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tde:J

    return-wide v0
.end method

.method public static getDfalpCommTdf()J
    .locals 2

    .prologue
    .line 581
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->com_tdf:J

    return-wide v0
.end method

.method public static getDfalpCommTdg()I
    .locals 1

    .prologue
    .line 591
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdg:I

    return v0
.end method

.method public static getDfalpCommTdh()J
    .locals 2

    .prologue
    .line 602
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdh:J

    return-wide v0
.end method

.method public static getDfalpCommTdi()J
    .locals 2

    .prologue
    .line 613
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdi:J

    return-wide v0
.end method

.method public static getDfalpCommWs()J
    .locals 2

    .prologue
    .line 537
    sget-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_ws:J

    return-wide v0
.end method

.method public static getDfalpMaxFalpRcevPacketSequence()I
    .locals 1

    .prologue
    .line 764
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_packet_sequence:I

    return v0
.end method

.method public static getDfalpMaxFalpRcevSize()S
    .locals 1

    .prologue
    .line 774
    sget-short v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_size:S

    return v0
.end method

.method public static getDfalpMaxFalpSendPacketSequence()S
    .locals 1

    .prologue
    .line 784
    sget-short v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_packet_sequence:S

    return v0
.end method

.method public static getMaxReceivePacketSequence()I
    .locals 1

    .prologue
    .line 496
    sget v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_packet_sequence:I

    return v0
.end method

.method public static getMaxReceiveSize()S
    .locals 1

    .prologue
    .line 506
    sget-short v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_size:S

    return v0
.end method

.method public static getMaxSendPacketSequence()S
    .locals 1

    .prologue
    .line 516
    sget-short v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_packet_sequence:S

    return v0
.end method

.method public static getMaxSendSize()S
    .locals 1

    .prologue
    .line 526
    sget-short v0, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_size:S

    return v0
.end method

.method public static getValueDefault()V
    .locals 6

    .prologue
    const/16 v5, 0xf9

    const/16 v4, 0x80

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/16 v1, 0xbb8

    .line 1012
    sput v1, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res:I

    .line 1013
    const v0, 0xafc8

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_all:I

    .line 1014
    sput v1, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs:I

    .line 1015
    const/16 v0, 0x1388

    sput-short v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_send:S

    .line 1016
    const v0, 0xb3b0

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_send_all:I

    .line 1017
    sput v1, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_tm_data:I

    .line 1018
    sput v4, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_packet_sequence:I

    .line 1019
    sput-short v5, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_size:S

    .line 1020
    sput-short v4, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_packet_sequence:S

    .line 1021
    sput-short v5, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_size:S

    .line 1022
    const-wide/32 v0, 0x70800

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_ws:J

    .line 1023
    const-wide/32 v0, 0x67746

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_rs:J

    .line 1024
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdb:J

    .line 1025
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tde:J

    .line 1026
    const-wide/32 v0, 0x186a0

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->com_tdf:J

    .line 1027
    sput v2, Lcom/felicanetworks/falp/FalpConfig;->comm_tdg:I

    .line 1028
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdh:J

    .line 1029
    const-wide/32 v0, 0x30d40

    sput-wide v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdi:J

    .line 1030
    sput v3, Lcom/felicanetworks/falp/FalpConfig;->comm_tdac:I

    .line 1031
    const/16 v0, 0xa

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdab:I

    .line 1032
    const/16 v0, 0xb

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdcc:I

    .line 1033
    sput v3, Lcom/felicanetworks/falp/FalpConfig;->comm_tddc:I

    .line 1034
    const/16 v0, 0xc

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tddb:I

    .line 1035
    const v0, 0x186a0

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tobc_max:I

    .line 1036
    const v0, 0xf4240

    sput v0, Lcom/felicanetworks/falp/FalpConfig;->comm_tdg_max:I

    .line 1037
    sput-boolean v2, Lcom/felicanetworks/falp/FalpConfig;->wait_ack:Z

    .line 1038
    return-void
.end method

.method public static getValuefromConfigLine(Ljava/lang/String;I)J
    .locals 4
    .param p0, "param"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 989
    const-wide/16 v2, -0x1

    .line 991
    .local v2, "value":J
    if-eqz p0, :cond_0

    .line 994
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1003
    :goto_0
    return-wide v2

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/NumberFormatException;
    int-to-long v2, p1

    .line 999
    goto :goto_0

    .line 1001
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    int-to-long v2, p1

    goto :goto_0
.end method

.method public static setFalpConfigValue()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 806
    const/4 v2, 0x0

    .line 808
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getValueDefault()V

    .line 811
    const/4 v1, 0x0

    .line 813
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/system/etc/felica/falp_config.cfg"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 817
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 818
    if-nez v1, :cond_2

    .line 955
    :cond_1
    :goto_0
    if-nez v1, :cond_0

    move-object v2, v3

    .line 968
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 973
    :goto_2
    return-void

    .line 821
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "splitLine":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "hs_res"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 827
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 828
    const/16 v9, 0xbb8

    .line 827
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 957
    .end local v4    # "splitLine":[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 959
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_3
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getValueDefault()V

    goto :goto_2

    .line 831
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "splitLine":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    :try_start_4
    aget-object v6, v4, v6

    const-string v9, "hs_res_all"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 833
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 834
    const v9, 0xafc8

    .line 833
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_all:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 961
    .end local v4    # "splitLine":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 963
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_4
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getValueDefault()V

    goto :goto_1

    .line 837
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "splitLine":[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    :try_start_5
    aget-object v6, v4, v6

    const-string v9, "hs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 838
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 839
    const/16 v9, 0xbb8

    .line 838
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    int-to-short v6, v6

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs:I

    goto :goto_0

    .line 842
    :cond_5
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "hs_res_send"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 843
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 844
    const/16 v9, 0x1388

    .line 843
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    int-to-short v6, v6

    sput-short v6, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_send:S

    goto :goto_0

    .line 847
    :cond_6
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "hs_res_send_all"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 849
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 850
    const v9, 0xb3b0

    .line 849
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_hs_res_send_all:I

    goto/16 :goto_0

    .line 853
    :cond_7
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tm_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 855
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 856
    const/16 v9, 0xbb8

    .line 855
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->adh_comm_tm_data:I

    goto/16 :goto_0

    .line 859
    :cond_8
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "max_rcv_pkt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 861
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 862
    const/16 v9, 0x80

    .line 861
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_packet_sequence:I

    goto/16 :goto_0

    .line 865
    :cond_9
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "max_rcv_size"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 866
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 867
    const/16 v9, 0xf9

    .line 866
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    int-to-short v6, v6

    sput-short v6, Lcom/felicanetworks/falp/FalpConfig;->max_falp_recv_size:S

    goto/16 :goto_0

    .line 870
    :cond_a
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "max_send_pkt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 871
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 872
    const/16 v9, 0x80

    .line 871
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    int-to-short v6, v6

    sput-short v6, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_packet_sequence:S

    goto/16 :goto_0

    .line 875
    :cond_b
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "max_send_size"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 876
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 877
    const/16 v9, 0xf9

    .line 876
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    int-to-short v6, v6

    sput-short v6, Lcom/felicanetworks/falp/FalpConfig;->max_falp_send_size:S

    goto/16 :goto_0

    .line 880
    :cond_c
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "ws"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 881
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const v9, 0x70800

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->comm_ws:J

    goto/16 :goto_0

    .line 884
    :cond_d
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "rs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 885
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const v9, 0x67746

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->comm_rs:J

    goto/16 :goto_0

    .line 888
    :cond_e
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdb"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 889
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/16 v9, 0x5dc

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->comm_tdb:J

    goto/16 :goto_0

    .line 892
    :cond_f
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tde"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 893
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/16 v9, 0x3e8

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->comm_tde:J

    goto/16 :goto_0

    .line 896
    :cond_10
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 897
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const v9, 0x186a0

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->com_tdf:J

    goto/16 :goto_0

    .line 900
    :cond_11
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "Tdg"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 902
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tdg:I

    goto/16 :goto_0

    .line 905
    :cond_12
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdh"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 906
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const v9, 0x493e0

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->comm_tdh:J

    goto/16 :goto_0

    .line 909
    :cond_13
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 910
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const v9, 0x30d40

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    sput-wide v10, Lcom/felicanetworks/falp/FalpConfig;->comm_tdi:J

    goto/16 :goto_0

    .line 913
    :cond_14
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdac"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 915
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v9, 0x6

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tdac:I

    goto/16 :goto_0

    .line 918
    :cond_15
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdab"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 920
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tdab:I

    goto/16 :goto_0

    .line 923
    :cond_16
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tdcc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 925
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/16 v9, 0xb

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tdcc:I

    goto/16 :goto_0

    .line 928
    :cond_17
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tddc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 930
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v9, 0x6

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tddc:I

    goto/16 :goto_0

    .line 933
    :cond_18
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "tddb"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 935
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/16 v9, 0xc

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tddb:I

    goto/16 :goto_0

    .line 938
    :cond_19
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "max_tobc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 940
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 941
    const v9, 0x186a0

    .line 940
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tobc_max:I

    goto/16 :goto_0

    .line 944
    :cond_1a
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "max_tdb"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 946
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 947
    const v9, 0xf4240

    .line 946
    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v6, v10

    sput v6, Lcom/felicanetworks/falp/FalpConfig;->comm_tdg_max:I

    goto/16 :goto_0

    .line 948
    :cond_1b
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v9, "ack_wait"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 950
    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/felicanetworks/falp/FalpConfig;->getValuefromConfigLine(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v5, v10

    .line 951
    .local v5, "wt":I
    if-eqz v5, :cond_1c

    move v6, v7

    :goto_5
    sput-boolean v6, Lcom/felicanetworks/falp/FalpConfig;->wait_ack:Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_1c
    move v6, v8

    goto :goto_5

    .line 969
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "splitLine":[Ljava/lang/String;
    .end local v5    # "wt":I
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    goto/16 :goto_2

    .line 961
    :catch_3
    move-exception v0

    goto/16 :goto_4

    .line 957
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method
