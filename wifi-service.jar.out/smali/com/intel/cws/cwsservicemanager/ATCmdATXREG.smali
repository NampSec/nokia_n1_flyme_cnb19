.class public Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;
.super Ljava/lang/Object;
.source "ATCmdATXREG.java"


# static fields
.field static final ACT_EUTRAN:I = 0x7

.field static final ACT_GSM:I = 0x0

.field static final ACT_GSM_COMPACT:I = 0x1

.field static final ACT_GSM_WO_EGPRS:I = 0x3

.field static final ACT_UTRAN:I = 0x2

.field static final ACT_UTRAN_W_HSDPA_HSUPA:I = 0x6

.field static final ACT_UTRAN_W_HSPAp:I = 0x8

.field static final ACT_UTRAN_W_HSPAp_DCHSPDA:I = 0x9

.field static final ACT_UTRAN_W_HSPDA:I = 0x4

.field static final ACT_UTRAN_W_HSUDA:I = 0x5

.field private static final DEBUG:Z

.field public static final E_UTRAN_ACT:I = 0x7

.field public static final LTE_BAND_38:Ljava/lang/String; = "BAND_LTE_38"

.field public static final LTE_BAND_40:Ljava/lang/String; = "BAND_LTE_40"

.field public static final LTE_BAND_41:Ljava/lang/String; = "BAND_LTE_41"

.field public static final LTE_BAND_7:Ljava/lang/String; = "BAND_LTE_7"

.field private static final MODEM_READ_ACT_POS:I = 0x3

.field private static final MODEM_READ_BAND_POS:I = 0x4

.field private static final MODEM_READ_CMD_POS:I = 0x0

.field private static final MODEM_READ_MODE_POS:I = 0x1

.field private static final MODEM_READ_STATE_POS:I = 0x2

.field private static final MODEM_URC_ACT_POS:I = 0x2

.field private static final MODEM_URC_BAND_POS:I = 0x3

.field private static final MODEM_URC_CMD_POS:I = 0x0

.field private static final MODEM_URC_STATE_POS:I = 0x1

.field static final RESP_NETWORK_REGISTRATION_CMD:Ljava/lang/String; = "+XREG"

.field static final STATE_NOTREGISTERED_NOTSCANNING:I = 0x0

.field static final STATE_NOTREGISTERED_SCANNING:I = 0x2

.field static final STATE_PS_EMERGENCY_ONLY:I = 0x8

.field static final STATE_REGISTERED_FOR_SMS_ONLY_ROAMING:I = 0x7

.field static final STATE_REGISTERED_HOME_NETWORK:I = 0x1

.field static final STATE_REGISTERED_ROAMING:I = 0x5

.field static final STATE_REGISTERED_SMS_ONLY:I = 0x6

.field static final STATE_REGISTRATION_DENIED:I = 0x3

.field static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR-CoexMgr"


# instance fields
.field private mAct:I

.field private mBand:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mState:I

    .line 40
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mAct:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mBand:Ljava/lang/String;

    .line 83
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "ATXREG constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpValues()V
    .locals 3

    .prologue
    .line 89
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "act      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mAct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band       :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mBand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public getAct()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mAct:I

    return v0
.end method

.method public getBand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mBand:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mState:I

    return v0
.end method

.method public parseReadCmd([Ljava/lang/String;)Z
    .locals 11
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "rcvValue":I
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->reset()V

    .line 159
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 161
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_0
    array-length v4, p1

    if-ge v4, v7, :cond_1

    .line 166
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Error: the XREG? response is too short!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_1
    return v3

    .line 171
    :cond_1
    aget-object v4, p1, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 173
    const/4 v4, 0x2

    :try_start_0
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 179
    if-eq v2, v10, :cond_2

    .line 180
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mState:I

    .line 184
    :cond_2
    array-length v4, p1

    if-le v4, v7, :cond_3

    aget-object v4, p1, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 186
    const/4 v4, 0x3

    :try_start_1
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 192
    if-eq v2, v10, :cond_3

    .line 193
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mAct:I

    .line 197
    :cond_3
    array-length v3, p1

    if-le v3, v9, :cond_4

    .line 198
    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 199
    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mBand:Ljava/lang/String;

    .line 203
    :cond_4
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 204
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->dumpValues()V

    .line 206
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODEM_STATE_POS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "parsedResponse exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 187
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODEM_ACT_POS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "parsedResponse exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public parseURCCmd([Ljava/lang/String;)Z
    .locals 11
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, "rcvValue":I
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->reset()V

    .line 105
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 107
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    array-length v5, p1

    if-ge v5, v8, :cond_1

    .line 112
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Error: the URC is too short!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_1
    return v3

    .line 116
    :cond_1
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 124
    if-eq v2, v10, :cond_2

    .line 125
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mState:I

    .line 129
    :cond_2
    array-length v5, p1

    if-le v5, v8, :cond_3

    aget-object v5, p1, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 131
    const/4 v5, 0x2

    :try_start_1
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 137
    if-eq v2, v10, :cond_3

    .line 138
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mAct:I

    .line 142
    :cond_3
    array-length v3, p1

    if-le v3, v9, :cond_4

    .line 143
    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mBand:Ljava/lang/String;

    .line 148
    :cond_4
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->dumpValues()V

    :cond_5
    move v3, v4

    .line 151
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MODEM_STATE_POS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "parsedResponse exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODEM_ACT_POS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "parsedResponse exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mState:I

    .line 96
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mAct:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->mBand:Ljava/lang/String;

    .line 98
    return-void
.end method
