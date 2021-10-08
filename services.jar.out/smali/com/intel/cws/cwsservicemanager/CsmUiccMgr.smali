.class public Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;
.super Ljava/lang/Object;
.source "CsmUiccMgr.java"


# static fields
.field private static final DEBUG:Z

.field private static final GOOD_RESPONSE:[B

.field private static final INITIAL_SUPPORTED_CHANNELS:I = 0x6

.field private static final INS_ACTIVATE_FILE:I = 0x44

.field private static final INS_AUTHENTICATE_1:I = 0x88

.field private static final INS_AUTHENTICATE_2:I = 0x89

.field private static final INS_CHANGE_PIN:I = 0x24

.field private static final INS_DEACTIVATE_FILE:I = 0x4

.field private static final INS_DISABLE_PIN:I = 0x26

.field private static final INS_ENABLE_PIN:I = 0x28

.field private static final INS_ENVELOPE:I = 0xc2

.field private static final INS_FETCH:I = 0x12

.field private static final INS_GET_CHALLENGE:I = 0x84

.field private static final INS_GET_RESPONSE:I = 0xc0

.field private static final INS_INCREASE:I = 0x32

.field private static final INS_MANAGE_CHANNEL:I = 0x70

.field private static final INS_MANAGE_SECURE_CHANNEL:I = 0x73

.field private static final INS_READ_BINARY:I = 0xb0

.field private static final INS_READ_RECORD:I = 0xb2

.field private static final INS_RETRIEVE_DATA:I = 0xcb

.field private static final INS_SEARCH_RECORD:I = 0xa2

.field private static final INS_SELECT_FILE:I = 0xa4

.field private static final INS_SET_DATA:I = 0xdb

.field private static final INS_STATUS:I = 0xf2

.field private static final INS_TERMINAL_CAPACITY:I = 0xaa

.field private static final INS_TERMINAL_PROFILE:I = 0x10

.field private static final INS_TERMINAL_RESPONSE:I = 0x14

.field private static final INS_TRANSACT_DATA:I = 0x75

.field private static final INS_UNBLOCK_PIN:I = 0x2c

.field private static final INS_UPDATE_BYNARY:I = 0xd6

.field private static final INS_UPDATE_RECORD:I = 0xdc

.field private static final INS_VERIFY:I = 0x20

.field private static final OEM_TELEPHONY_INTERFACE_NAME:Ljava/lang/String; = "oemtelephony"

.field private static final P1_CLOSE_CHANNEL:I = 0x80

.field private static final P1_OPEN_CHANNEL:I = 0x0

.field private static final P1_SELECT_BY_DF_NAME:I = 0x4

.field private static final P1_SELECT_FROM_CURRENT_DF:I = 0x9

.field private static final P2_SELECT_FILE_BEGIN_NO_INFO_2G:I = 0x0

.field private static final P2_SELECT_FILE_BEGIN_NO_INFO_3G:I = 0xc

.field private static final P2_USIM:I = 0x4

.field private static final PKCS15_AID:[B

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static final TELEPHONY_INTERFACE_NAME:Ljava/lang/String; = "phone"

.field private static final USIM_REQUEST:[B

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIs3G:Z

.field private mMapChannels:Ljava/util/HashMap;

.field private mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

.field private mPhone:Lcom/android/internal/telephony/ITelephony;

.field private mSimStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 39
    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    .line 82
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->USIM_REQUEST:[B

    .line 83
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->GOOD_RESPONSE:[B

    .line 85
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->PKCS15_AID:[B

    return-void

    .line 82
    :array_0
    .array-data 1
        0x3ft
        0x0t
    .end array-data

    .line 83
    nop

    :array_1
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    .line 85
    nop

    :array_2
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x63t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x2dt
        0x31t
        0x35t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    .line 92
    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 94
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    .line 100
    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mContext:Landroid/content/Context;

    .line 102
    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Creating CsmUiccMgr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkIfUsim()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    if-eqz p1, :cond_2

    .line 114
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mContext:Landroid/content/Context;

    .line 116
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;

    invoke-direct {v2, p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)V

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Registering for SIM status change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "simIntentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    .end local v1    # "simIntentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mSimStatusReceiver - error checking SIM type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkIfUsim()V

    return-void
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method private static checkForApduError([B)Z
    .locals 8
    .param p0, "receivedResponse"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "sw1":B
    const/4 v2, 0x0

    .line 512
    .local v2, "sw2":B
    array-length v0, p0

    .line 514
    .local v0, "length":I
    const/4 v5, 0x2

    if-le v5, v0, :cond_1

    .line 515
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "checkForApduError - array too short"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    :goto_0
    return v3

    .line 519
    :cond_1
    add-int/lit8 v5, v0, -0x2

    aget-byte v1, p0, v5

    .line 520
    add-int/lit8 v5, v0, -0x1

    aget-byte v2, p0, v5

    .line 522
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "CWS_SERVICE_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForApduError - SW1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - SW2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2
    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->GOOD_RESPONSE:[B

    aget-byte v5, v5, v3

    if-ne v5, v1, :cond_4

    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->GOOD_RESPONSE:[B

    aget-byte v5, v5, v4

    if-ne v5, v2, :cond_4

    .line 525
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "CWS_SERVICE_MGR"

    const-string v5, "checkForApduError - positive returned code"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v4

    .line 526
    goto :goto_0

    .line 530
    :cond_4
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "checkForApduError - negative returned code"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfUsim()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getOemTelephonyInterface()Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 208
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    const-string v3, "AT+XUICC?"

    invoke-interface {v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->sendAtCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    .local v0, "atResponse":Ljava/lang/String;
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+XUICC? = |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    const-string v2, "+XUICC: 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "2G SIM detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    .line 226
    .end local v0    # "atResponse":Ljava/lang/String;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsim - RemoteException - sendAtCommand failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "atResponse":Ljava/lang/String;
    :cond_3
    const-string v2, "+XUICC: 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "3G USIM detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    goto :goto_0

    .line 224
    :cond_5
    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response from AT+XUICC command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCla(IIZ)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "inst"    # I
    .param p3, "is3G"    # Z

    .prologue
    .line 537
    const/16 v0, 0xf

    if-gt v0, p1, :cond_1

    .line 538
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Uicc getCla - channel out of range - Logical channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    const/4 p1, 0x0

    .line 542
    :cond_1
    if-nez p3, :cond_3

    .line 543
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "getCla - 2G SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2
    add-int/lit16 p1, p1, 0xa0

    .line 582
    .end local p1    # "channel":I
    :goto_0
    :sswitch_0
    return p1

    .line 547
    .restart local p1    # "channel":I
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 581
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Uicc getCla - inst not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 p1, -0x1

    goto :goto_0

    .line 552
    :sswitch_1
    const/16 p1, 0x80

    goto :goto_0

    .line 558
    :sswitch_2
    add-int/lit16 p1, p1, 0x80

    goto :goto_0

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x12 -> :sswitch_1
        0x14 -> :sswitch_1
        0x20 -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2c -> :sswitch_0
        0x32 -> :sswitch_2
        0x44 -> :sswitch_0
        0x70 -> :sswitch_0
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
        0x84 -> :sswitch_0
        0x88 -> :sswitch_0
        0x89 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xaa -> :sswitch_2
        0xb0 -> :sswitch_0
        0xb2 -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xcb -> :sswitch_2
        0xd6 -> :sswitch_0
        0xdb -> :sswitch_2
        0xdc -> :sswitch_0
        0xf2 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    .line 166
    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    return-object v0
.end method

.method private getOemTelephonyInterface()Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "oemPhone":Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    const-string v1, "oemtelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Impossible to get oem Telephony Interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "Impossible to get oem Telephony Interface"

    invoke-direct {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    return-object v0
.end method

.method private getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Impossible to get Telephony Interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "Impossible to get Telephony Interface"

    invoke-direct {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeChannel(B)V
    .locals 8
    .param p1, "id"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 341
    .local v2, "integerChannel":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 342
    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "Uicc closeChannel - channel not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v4, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v5, "Uicc closeChannel - channel not open"

    invoke-direct {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_0
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    .line 348
    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "Uicc closeChannel - mPhone is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v4, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v5, "Uicc closeChannel - mPhone is null"

    invoke-direct {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 353
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    .local v0, "closingChannel":I
    const-string v4, "CWS_SERVICE_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccCloseLogicalChannel - closingChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z

    move-result v3

    .line 356
    .local v3, "isChannelClosed":Z
    if-eqz v3, :cond_3

    .line 357
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "iccCloseLogicalChannel - channel closed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_2
    :goto_0
    const/16 v4, 0x20

    if-eq v4, p1, :cond_4

    .line 367
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_1
    return-void

    .line 359
    :cond_3
    :try_start_1
    const-string v4, "CWS_SERVICE_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccCloseLogicalChannel - error closing channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 361
    .end local v0    # "closingChannel":I
    .end local v3    # "isChannelClosed":Z
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CWS_SERVICE_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uicc closeChannel - RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v4, Lcom/intel/cws/cwsservicemanager/CsmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uicc closeChannel - RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 369
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "closingChannel":I
    .restart local v3    # "isChannelClosed":Z
    :cond_4
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "Basic channel is not removed from mMapChannels"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_5
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isUsim()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    return v0
.end method

.method public openChannel(B)V
    .locals 17
    .param p1, "id"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v10, 0x0

    .line 234
    .local v10, "channel":I
    const/4 v2, 0x0

    .line 235
    .local v2, "cla":I
    const/16 v3, 0x70

    .line 236
    .local v3, "ins":I
    const/4 v4, 0x0

    .line 237
    .local v4, "p1":I
    const/4 v5, 0x0

    .line 238
    .local v5, "p2":I
    const/4 v6, 0x0

    .line 239
    .local v6, "p3":I
    const/4 v7, 0x0

    .line 241
    .local v7, "data":Ljava/lang/String;
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 244
    .local v11, "currentChannel":Ljava/lang/Integer;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - Logical channel already open"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_3

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    .line 254
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_11

    .line 255
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - hasIccCard(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_4
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->PKCS15_AID:[B

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "aidString":Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 261
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "openIccLogicalChannel - AID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v13

    .line 264
    .local v13, "iccOpenResponse":Landroid/telephony/IccOpenLogicalChannelResponse;
    if-eqz v13, :cond_9

    .line 265
    invoke-virtual {v13}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v1

    const/4 v15, 0x1

    if-ne v1, v15, :cond_8

    .line 267
    invoke-virtual {v13}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v10

    .line 268
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "iccOpenLogicalChannel - channel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v13    # "iccOpenResponse":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_6
    :goto_1
    if-nez v10, :cond_12

    .line 283
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - try using transmitIccBasicChannel"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getCla(IIZ)I

    move-result v2

    .line 286
    if-gez v2, :cond_b

    .line 287
    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - invalid cla: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Error getting the cla"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v8    # "aidString":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 326
    .local v12, "e":Landroid/os/RemoteException;
    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - RemoteException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - RemoteException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v8    # "aidString":Ljava/lang/String;
    .restart local v13    # "iccOpenResponse":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_8
    :try_start_1
    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure opening UICC logical channel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 274
    :cond_9
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Failure opening UICC logical channel"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    .end local v13    # "iccOpenResponse":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_a
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Invalid PKCS15 AID!"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 292
    :cond_b
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - cla: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 296
    .local v14, "response":Ljava/lang/String;
    invoke-static {v14}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 297
    .local v9, "byteResponse":[B
    if-nez v9, :cond_d

    .line 298
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Error converting the received response into byte array"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Error converting the received response into byte array"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_d
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "transmitIccBasicChannel ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v9

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_e
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 306
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - good response"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_f
    const/4 v1, 0x0

    aget-byte v10, v9, v1

    .line 313
    if-nez v10, :cond_12

    .line 314
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - Error"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Uicc openChannel - Error"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_10
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - bad response"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Error opening the channel"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    .end local v8    # "aidString":Ljava/lang/String;
    .end local v9    # "byteResponse":[B
    .end local v14    # "response":Ljava/lang/String;
    :cond_11
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - mPhone is null."

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Uicc openChannel - mPhone is null"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    .restart local v8    # "aidString":Ljava/lang/String;
    :cond_12
    if-eqz v10, :cond_13

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 334
    :cond_13
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - Unable to open a channel"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Uicc openChannel - Unable to open a channel"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBinary(B)[B
    .locals 10
    .param p1, "id"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 483
    const/16 v2, 0xb0

    .line 484
    .local v2, "ins":I
    const/4 v3, 0x0

    .line 485
    .local v3, "p1":I
    const/4 v4, 0x0

    .line 486
    .local v4, "p2":I
    const/4 v5, 0x0

    .line 487
    .local v5, "p3":I
    new-array v7, v9, [B

    .line 489
    .local v7, "byteResponse":[B
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readUiccFile - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "response":Ljava/lang/String;
    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 494
    if-nez v7, :cond_2

    .line 495
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "readBinary - byteResponse is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-array v7, v9, [B

    .line 505
    .end local v7    # "byteResponse":[B
    :cond_1
    :goto_0
    return-object v7

    .line 499
    .restart local v7    # "byteResponse":[B
    :cond_2
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readBinary - good response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_3
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readBinary - bad response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_4
    new-array v7, v9, [B

    goto :goto_0
.end method

.method public selectAid(B[B)Z
    .locals 11
    .param p1, "id"    # B
    .param p2, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 418
    const/16 v2, 0xa4

    .line 419
    .local v2, "ins":I
    const/4 v3, 0x4

    .line 420
    .local v3, "p1":I
    const/4 v4, 0x0

    .line 421
    .local v4, "p2":I
    move-object v6, p2

    .line 422
    .local v6, "command":[B
    array-length v5, v6

    .line 424
    .local v5, "p3":I
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "selectUiccPkcs15 - "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    if-eqz v0, :cond_1

    .line 427
    const/16 v4, 0xc

    :goto_0
    move-object v0, p0

    move v1, p1

    .line 432
    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "response":Ljava/lang/String;
    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 434
    .local v7, "byteResponse":[B
    if-nez v7, :cond_2

    .line 435
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Error converting the received response into byte array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 445
    :goto_1
    return v0

    .line 429
    .end local v7    # "byteResponse":[B
    .end local v8    # "response":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 439
    .restart local v7    # "byteResponse":[B
    .restart local v8    # "response":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectUiccPkcs15 - good response: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 444
    :cond_4
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "selectUiccPkcs15 - bad response: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v9

    .line 445
    goto :goto_1
.end method

.method public selectEf(B[B)Z
    .locals 10
    .param p1, "id"    # B
    .param p2, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 450
    const/16 v2, 0xa4

    .line 451
    .local v2, "ins":I
    const/16 v3, 0x9

    .line 452
    .local v3, "p1":I
    const/4 v4, 0x0

    .line 453
    .local v4, "p2":I
    array-length v5, p2

    .line 455
    .local v5, "p3":I
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUiccFile - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    move v0, v9

    .line 478
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    if-eqz v0, :cond_2

    .line 460
    const/16 v4, 0xc

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v6, p2

    .line 465
    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, "response":Ljava/lang/String;
    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 467
    .local v7, "byteResponse":[B
    if-nez v7, :cond_3

    .line 468
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Error converting the received response into byte array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "Uicc selectEf - Error converting into byte array"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    .end local v7    # "byteResponse":[B
    .end local v8    # "response":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 472
    .restart local v7    # "byteResponse":[B
    .restart local v8    # "response":Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUiccFile - good response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 477
    :cond_5
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUiccFile - bad response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v9

    .line 478
    goto :goto_0
.end method

.method public transmitAPDU(BIIII[B)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # B
    .param p2, "inst"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "cla":I
    const/4 v1, 0x0

    .line 381
    .local v1, "channel":I
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 382
    .local v9, "integerChannel":Ljava/lang/Integer;
    if-nez v9, :cond_0

    .line 383
    const-string v0, "CWS_SERVICE_MGR"

    const-string v3, "Uicc transmitAPDU - channel not open"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - channel not open"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 389
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    invoke-direct {p0, v1, p2, v0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getCla(IIZ)I

    move-result v2

    .line 390
    if-gez v2, :cond_1

    .line 391
    const-string v0, "CWS_SERVICE_MGR"

    const-string v3, "Uicc transmitAPDU - invalid cla"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - invalid cla"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    invoke-static/range {p6 .. p6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, "data":Ljava/lang/String;
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uicc transmitAPDU - cla: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uicc transmitAPDU - channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_4

    .line 402
    const-string v0, "CWS_SERVICE_MGR"

    const-string v3, "Uicc transmitAPDU - mPhone is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - mPhone is null"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "response":Ljava/lang/String;
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccTransmitApduLogicalChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_5
    return-object v10

    .line 411
    .end local v10    # "response":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 412
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uicc transmitAPDU - RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - RemoteException"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
