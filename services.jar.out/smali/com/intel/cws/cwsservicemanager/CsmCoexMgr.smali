.class public Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
.super Ljava/lang/Object;
.source "CsmCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$1;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;,
        Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;
    }
.end annotation


# static fields
.field public static final ACTION_COEX_EXT_FRAME_CONFIG:Ljava/lang/String; = "intel.intent.action.ACTION_COEX_EXT_FRAME_CONFIG"

.field public static final ACTION_COEX_MWS_SIGNALING:Ljava/lang/String; = "intel.intent.action.ACTION_COEX_MWS_SIGNALING"

.field public static final ACTION_COEX_RT_CONTROL:Ljava/lang/String; = "intel.intent.action.ACTION_COEX_RT_CONTROL"

.field public static final ACTION_COEX_SAFECHANNELS_INFO:Ljava/lang/String; = "intel.intent.action.ACTION_COEX_SAFECHANNELS_INFO"

.field public static final ACTION_COEX_SAFECHANNELS_INFO_WF:Ljava/lang/String; = "intel.intent.action.ACTION_COEX_SAFECHANNELS_INFO_WF"

.field private static final BT:I = 0x2

.field static final BT_HI_FREQ:I = 0x9b0

.field static final BT_LOW_FREQ:I = 0x962

.field public static final CHANNEL_TYPE_FDD:I = 0x1

.field public static final CHANNEL_TYPE_TDD:I = 0x0

.field private static final COEX_DISABLE_RT_PROP:Ljava/lang/String; = "persist.service.cwsmgr.nortcoex"

.field public static final COEX_EXT_FRAME_CONFIG_DURATION:Ljava/lang/String; = "ExtFrameDuration"

.field public static final COEX_EXT_FRAME_CONFIG_EXTRA:Ljava/lang/String; = "CoexExtFrameConfig"

.field public static final COEX_EXT_FRAME_CONFIG_JITTER:Ljava/lang/String; = "ExtFrameJitter"

.field public static final COEX_EXT_FRAME_CONFIG_NUMBER_PERIOD:Ljava/lang/String; = "ExtFrameNumPeriod"

.field public static final COEX_EXT_FRAME_CONFIG_OFFSET:Ljava/lang/String; = "ExtFrameOffset"

.field public static final COEX_EXT_FRAME_CONFIG_PERIOD_DURATION:Ljava/lang/String; = "ExtFramePeriodDuration"

.field public static final COEX_EXT_FRAME_CONFIG_PERIOD_TYPE:Ljava/lang/String; = "ExtFramePeriodType"

.field public static final COEX_MWS_SIGNALING_EXTRA:Ljava/lang/String; = "CoexMwsSignaling"

.field public static final COEX_MWS_SIGNALING_PARAMS:Ljava/lang/String; = "MwsSignalingParameters"

.field public static final COEX_RT_CHANNEL_TYPE:Ljava/lang/String; = "CoexRtChannelType"

.field public static final COEX_RT_CONTROL_EXTRA:Ljava/lang/String; = "CoexRtControl"

.field public static final COEX_RT_RX_CENTER_FREQUENCY:Ljava/lang/String; = "CoexRtRxCenterFrequency"

.field public static final COEX_RT_RX_CHANNEL_BANDWITH:Ljava/lang/String; = "CoexRtRxChannelBandwith"

.field public static final COEX_RT_STATE:Ljava/lang/String; = "CoexRtState"

.field public static final COEX_RT_STATE_OFF:I = 0x0

.field public static final COEX_RT_STATE_ON:I = 0x1

.field public static final COEX_RT_TX_CENTER_FREQUENCY:Ljava/lang/String; = "CoexRtTxCenterFrequency"

.field public static final COEX_RT_TX_CHANNEL_BANDWITH:Ljava/lang/String; = "CoexRtTxChannelBandwith"

.field public static final COEX_SAFECHANNELS_BT_MAX_KEY:Ljava/lang/String; = "CoexMaxFreqBt"

.field public static final COEX_SAFECHANNELS_BT_MIN_KEY:Ljava/lang/String; = "CoexMinFreqBt"

.field public static final COEX_SAFECHANNELS_EXTRA:Ljava/lang/String; = "CoexSafechannels"

.field public static final COEX_SAFECHANNELS_WIFI_KEY:Ljava/lang/String; = "CoexSafechannelsWifi"

.field private static final DEBUG:Z

.field private static final IS_DISABLED:I = 0x0

.field private static final IS_DOWN:Z = false

.field private static final IS_ENABLED:I = 0x1

.field private static final IS_NOT_SAFE:I = 0x0

.field private static final IS_SAFE:I = 0x1

.field private static final IS_UNKNOWN:I = -0x1

.field private static final IS_UP:Z = true

.field static final MAX_GETSERVICE_RETRIES:I = 0x5

.field static final MODEM_ACT_POS:I = 0x3

.field static final MODEM_BAND_POS:I = 0x4

.field static final MODEM_CMD_FAILURE:Ljava/lang/String; = "ERROR"

.field static final MODEM_CMD_POS:I = 0x0

.field static final MODEM_CMD_SUCCESS:Ljava/lang/String; = "OK"

.field static final MODEM_DEVICE_DIAG_METRICS:Ljava/lang/String; = "+XMETRIC"

.field static final MODEM_UNKNOWN:Ljava/lang/String; = "unknown"

.field static final MODEM_VERSION_QUERY_CMD:Ljava/lang/String; = "AT+XGENDATA"

.field static final MODEM_XMM7160:Ljava/lang/String; = "XMM_7160"

.field static final MODEM_XMM7260:Ljava/lang/String; = "XMM_7260"

.field static final NRT_ENABLE_CMD:Ljava/lang/String; = "AT+XNRTCWS=2"

.field static final NRT_MODEM_CMD:Ljava/lang/String; = "AT+XNRTCWS="

.field static final NRT_MODEM_QUERY_CMD:Ljava/lang/String; = "AT+XNRTCWS?"

.field static final NRT_MODEM_QUERY_RESP:Ljava/lang/String; = "+XNRTCWS"

.field static final NRT_MODEM_URC:Ljava/lang/String; = "+XNRTCWSI"

.field private static final NRT_QUERY_NRT_ACTIVE:I = 0x1

.field private static final NRT_QUERY_WLAN_ACTIVE:I = 0x2

.field private static final NRT_URC_BT_SAFERXMAX:I = 0x5

.field private static final NRT_URC_BT_SAFERXMIN:I = 0x4

.field private static final NRT_URC_BT_SAFE_TX_FREQ_MAX:I = 0xe

.field private static final NRT_URC_BT_SAFE_TX_FREQ_MIN:I = 0xd

.field private static final NRT_URC_BT_SAFE_TX_POWERS:I = 0x1f

.field private static final NRT_URC_BT_SAFE_TX_POWERS_SIZE:I = 0xf

.field private static final NRT_URC_LTE_ACTIVE:I = 0x1

.field private static final NRT_URC_LTE_BITMAP:I = 0xa

.field private static final NRT_URC_LTE_BITMAP_SIZE:I = 0xa

.field private static final NRT_URC_LTE_SPS_DURATION:I = 0x8

.field private static final NRT_URC_LTE_SPS_INITAL_OFFSET:I = 0x9

.field private static final NRT_URC_LTE_SPS_PERIOD:I = 0x7

.field private static final NRT_URC_LTE_SPS_START_STOP:I = 0x6

.field private static final NRT_URC_NR_PARAMS_MINIMUM:I = 0x9

.field private static final NRT_URC_NUM_BT_SAFE_TX_POWER:I = 0x11

.field private static final NRT_URC_NUM_WLAN_SAFE_TX_POWER:I = 0x10

.field private static final NRT_URC_TDD_SPECIAL_SUBFRAME_NUMBER:I = 0xf

.field private static final NRT_URC_WLAN_SAFERXMAX:I = 0x3

.field private static final NRT_URC_WLAN_SAFERXMIN:I = 0x2

.field private static final NRT_URC_WLAN_SAFE_TX_FREQ_MAX:I = 0xc

.field private static final NRT_URC_WLAN_SAFE_TX_FREQ_MIN:I = 0xb

.field private static final NRT_URC_WLAN_SAFE_TX_POWERS:I = 0x12

.field private static final NRT_URC_WLAN_SAFE_TX_POWERS_SIZE:I = 0xd

.field static final READ_NETWORK_REGISTRATION_CMD:Ljava/lang/String; = "AT+XREG?"

.field static final RESP_NETWORK_REGISTRATION_CMD:Ljava/lang/String; = "+XREG"

.field static final SLEEP_ONE_SEC:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR-CoexMgr"

.field private static final VERBOSE:Z

.field private static final WIFI:I = 0x1

.field static final WIFI_ALL_SAFECHANNELS:I = 0x0

.field static final WIFI_ALL_UNSAFECHANNELS:I = 0x1fff

.field private static final WIFI_BT:I = 0x3

.field private static final WIFI_CENTER_FREQ:[I

.field static final WIFI_HI_FREQ:I = 0x9bf

.field static final WIFI_LOWER_CHANNEL:I = 0x1

.field static final WIFI_LOW_FREQ:I = 0x961

.field static final WIFI_NROF_CHANS:I = 0xe

.field static final WIFI_RX_MAX:I = 0x9c3

.field static final WIFI_RX_MIN:I = 0x960

.field static final WIFI_UPPER_CHANNEL:I = 0xe

.field static final WLAN_BANDWIDTH_20MHZ:I = 0x0

.field static final WLAN_BANDWIDTH_40MHZ:I = 0x1

.field static final WLAN_BANDWIDTH_80MHZ:I = 0x2

.field private static mCoexDisableRT:Z

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

.field private static mModemVersion:Ljava/lang/String;

.field private static sCoexRToffForWA:Z

.field private static sNRTQueryBtActive:I

.field private static sNRTQueryBtSafeRx:I

.field private static sNRTQueryParams:I

.field private static sNRTQueryWlanBandwidth:I

.field private static sNRTQueryWlanCenterFreq:I

.field private static sNRTQueryWlanSafeRx:I


# instance fields
.field public mATMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

.field private mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

.field private mBTUnifiedRangeMax:I

.field private mBTUnifiedRangeMin:I

.field private mBtActive:I

.field public mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

.field private mBtSafeRx:I

.field public mCoexReceiver:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsAirPlaneMode:Z

.field private mIsModemUp:Z

.field private mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

.field private mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

.field private mNeedConfigureCoex:Z

.field private mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

.field public mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

.field private mRegistrationBand:Ljava/lang/String;

.field private mRegistrationStatus:I

.field private mSafeChannels:I

.field public mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

.field private mWifiActive:I

.field private mWifiBandwidth:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSafeRx:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    .line 61
    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z

    .line 78
    const-string v1, "unknown"

    sput-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    .line 170
    const/4 v1, 0x6

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryParams:I

    .line 173
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanSafeRx:I

    .line 174
    sput v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanBandwidth:I

    .line 175
    const/4 v1, 0x4

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryBtActive:I

    .line 176
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryBtSafeRx:I

    .line 177
    const/4 v1, 0x5

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanCenterFreq:I

    .line 237
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    .line 241
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->VERBOSE:Z

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .line 289
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x9b4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 253
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 255
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexReceiver:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    .line 258
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .line 259
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    .line 260
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    .line 264
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    .line 266
    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z

    .line 267
    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z

    .line 269
    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z

    .line 271
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    .line 273
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I

    .line 274
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I

    .line 277
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    .line 280
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    .line 283
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    .line 286
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    .line 298
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiBandwidth:I

    .line 698
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .line 701
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .line 704
    iput-object v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    .line 707
    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I

    .line 708
    const-string v0, ""

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    .line 732
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "CsmCoexMgr constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v0, "persist.service.cwsmgr.nortcoex"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 736
    .local v9, "mCoexRTState":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    sput-boolean v6, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    .line 740
    :cond_0
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;-><init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    .line 741
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;-><init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    .line 742
    new-instance v0, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    invoke-direct {v0}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;-><init>()V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    .line 743
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    .line 745
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    .line 747
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .line 748
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    .line 749
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    .line 752
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getModemVersion()V

    .line 755
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v2, "XMM_7160"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    const/16 v0, 0x8

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryParams:I

    .line 757
    const/4 v0, 0x3

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanSafeRx:I

    .line 758
    const/4 v0, 0x4

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanBandwidth:I

    .line 759
    const/4 v0, 0x5

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryBtActive:I

    .line 760
    const/4 v0, 0x6

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryBtSafeRx:I

    .line 761
    const/4 v0, 0x7

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanCenterFreq:I

    .line 765
    :cond_1
    const-string v0, "oemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 767
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v0, :cond_5

    .line 771
    const/4 v10, 0x5

    .local v10, "maxRetries":I
    :goto_0
    if-lez v10, :cond_2

    .line 772
    const-string v0, "oemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 774
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-eqz v0, :cond_3

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v0, :cond_5

    .line 788
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "Failed to acquire IOemTelephony interface handle\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v10    # "maxRetries":I
    :goto_1
    return-void

    .line 777
    .restart local v10    # "maxRetries":I
    :cond_3
    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 778
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "Telephony service not ready, sleeping"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_4
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 780
    :catch_0
    move-exception v7

    .line 781
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "Interrupted exception was thrown, restoring interrupt\n"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 794
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "maxRetries":I
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 795
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_6

    .line 796
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 797
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "CsmCoexMgr can not get Wifi manager Service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 803
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    move v1, v6

    :cond_7
    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z

    .line 805
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 806
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CsmCoexMgr - mIsAirPlaneMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_8
    invoke-direct {p0, v6}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->enableStatusBandReporting(Z)V

    .line 811
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    invoke-direct {v0, p0, v11}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;-><init>(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$1;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexReceiver:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$CoexBroadcastReceiver;

    goto :goto_1

    .line 799
    :catch_1
    move-exception v8

    .line 800
    .local v8, "ex":Ljava/lang/Exception;
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getSystemService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    return v0
.end method

.method static synthetic access$2202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    return p1
.end method

.method static synthetic access$2300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    return v0
.end method

.method static synthetic access$2302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    return p1
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    return p0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sCoexRToffForWA:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->manageBtRtActivation()V

    return-void
.end method

.method static synthetic access$3400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->setSafe(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->subscribeToNRTEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsModemUp:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNeedConfigureCoex:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->isLteThreateningBandUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMax()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    return v0
.end method

.method static synthetic access$4402(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    return p1
.end method

.method static synthetic access$4500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    return v0
.end method

.method static synthetic access$4502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    return p1
.end method

.method static synthetic access$4600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I

    return v0
.end method

.method static synthetic access$4602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I

    return p1
.end method

.method static synthetic access$4700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I

    return v0
.end method

.method static synthetic access$4702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I

    return p1
.end method

.method static synthetic access$4802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    return p1
.end method

.method static synthetic access$4900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->enableStatusBandReporting(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)I
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I

    return v0
.end method

.method static synthetic access$5502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I

    return p1
.end method

.method static synthetic access$5600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    return-object p1
.end method

.method private broadcastBtRtControl()V
    .locals 5

    .prologue
    .line 1108
    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    if-eqz v2, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send BT COEX_RT_CONTROL intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v4, v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v4, v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mRxCenterFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v4, v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mRxChannelBw:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v4, v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mTxCenterFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v4, v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mTxChannelBw:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v4, v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mConfiguredChannelType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intel.intent.action.ACTION_COEX_RT_CONTROL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v0, "intentRt":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1116
    .local v1, "rTCoexBundle":Landroid/os/Bundle;
    const-string v2, "CoexRtState"

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v3, v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mState:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1117
    const-string v2, "CoexRtRxCenterFrequency"

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v3, v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mRxCenterFreq:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    const-string v2, "CoexRtTxCenterFrequency"

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v3, v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mTxCenterFreq:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    const-string v2, "CoexRtRxChannelBandwith"

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v3, v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mRxChannelBw:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    const-string v2, "CoexRtTxChannelBandwith"

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v3, v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mTxChannelBw:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1121
    const-string v2, "CoexRtChannelType"

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v3, v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mConfiguredChannelType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1122
    const-string v2, "CoexRtControl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1123
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private broadcastBtRtControl(I)V
    .locals 1
    .param p1, "rtState"    # I

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iput p1, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mState:I

    .line 1099
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl()V

    .line 1100
    return-void
.end method

.method private doNRTReporting(I)Z
    .locals 4
    .param p1, "enable"    # I

    .prologue
    const/4 v1, 0x0

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+XNRTCWS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    if-nez v2, :cond_0

    .line 1031
    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    const-string v3, "doNRTReporting - mSender is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_0
    return v1

    .line 1035
    :cond_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v2, v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1036
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "NRT reporting successfully activated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1040
    :cond_2
    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    const-string v3, "Error activating NRT reporting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableNRTReporting()Z
    .locals 2

    .prologue
    .line 877
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "enableNRTReporting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->doNRTReporting(I)Z

    move-result v0

    return v0
.end method

.method private enableStatusBandReporting(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 843
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v1, :cond_1

    .line 844
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "CsmCoexMgr OemPhoneService handle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    :try_start_0
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRegistrationStatusAndBandInd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    invoke-interface {v1, p1}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->setRegistrationStatusAndBandInd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in enableStatusBandReporting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 825
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "CsmCoexMgr return existing instance, context not set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .line 836
    :goto_0
    return-object v0

    .line 830
    :cond_0
    if-nez p0, :cond_1

    .line 831
    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "CsmCoexMgr, provided context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "CsmCoexMgr provided context is null"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_1
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .line 836
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    goto :goto_0
.end method

.method private getModemState()Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    if-nez v0, :cond_0

    .line 713
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Unknown:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    .line 725
    :goto_0
    return-object v0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    if-nez v0, :cond_1

    .line 716
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->RF_OFF:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    goto :goto_0

    .line 718
    :cond_1
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I

    packed-switch v0, :pswitch_data_0

    .line 725
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Unknown:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    goto :goto_0

    .line 720
    :pswitch_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Not_Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    goto :goto_0

    .line 722
    :pswitch_1
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;->Registered:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$modemStates;

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getModemVersion()V
    .locals 4

    .prologue
    .line 1360
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1362
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "getModemVersion using AT+XGENDATA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    const/4 v0, 0x0

    .line 1364
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    const-string v2, "AT+XGENDATA"

    invoke-virtual {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_2

    .line 1366
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemVersion: query response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_1
    const-string v1, "XMM7160"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1368
    const-string v1, "XMM_7160"

    sput-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    .line 1382
    .end local v0    # "response":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemVersion: version is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_3
    return-void

    .line 1370
    .restart local v0    # "response":Ljava/lang/String;
    :cond_4
    const-string v1, "XMM7260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1371
    const-string v1, "XMM_7260"

    sput-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    goto :goto_0

    .line 1374
    :cond_5
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "getModemVersion: unsupported modem"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1380
    .end local v0    # "response":Ljava/lang/String;
    :cond_6
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "getModemVersion: version already known"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWLANUnifiedRangeMax()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1454
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v2, "XMM_7160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    .line 1466
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1460
    :cond_2
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1461
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1463
    :cond_3
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1464
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1466
    :cond_4
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private isLteThreateningBandAccordingToXreg()Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "response":Ljava/lang/String;
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->ERROR:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    .line 1515
    .local v1, "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 1588
    .end local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .local v2, "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    :goto_0
    return-object v2

    .line 1518
    .end local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    :cond_1
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    const-string v5, "AT+XREG?"

    invoke-virtual {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    if-nez v0, :cond_2

    .line 1521
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "+XREG empty response!\n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 1522
    .end local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    goto :goto_0

    .line 1525
    .end local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    :cond_2
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1526
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modem response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_3
    const-string v4, "OK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1529
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "AT+XREG? command failed!\n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 1530
    .end local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    goto :goto_0

    .line 1533
    .end local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    :cond_4
    const-string v4, "OK"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    invoke-virtual {v4, v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;->parseString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1536
    .local v3, "splittedResponse":[Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1538
    aget-object v4, v3, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+XREG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1541
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1542
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not an XREG response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object v2, v1

    .line 1588
    .end local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    goto :goto_0

    .line 1544
    .end local v2    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    .restart local v1    # "ret":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;
    :cond_6
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    invoke-virtual {v4, v3}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->parseReadCmd([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1545
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "+XREG parsing error!\n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_7
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->getState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1561
    :pswitch_0
    iput v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I

    .line 1565
    :goto_2
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->getBand()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    .line 1568
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->SAFE_BAND:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    .line 1569
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mATXREG:Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;

    invoke-virtual {v4}, Lcom/intel/cws/cwsservicemanager/ATCmdATXREG;->getAct()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_8

    .line 1570
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BAND_LTE_7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1571
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND7:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    .line 1572
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Lte Band 7 detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_8
    :goto_3
    sget-object v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->SAFE_BAND:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    if-ne v1, v4, :cond_5

    .line 1585
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Lte Threatening Band not detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1554
    :pswitch_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationStatus:I

    goto :goto_2

    .line 1573
    :cond_9
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BAND_LTE_38"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1574
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND38:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    .line 1575
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Lte Band 38 detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1576
    :cond_a
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BAND_LTE_40"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1577
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND40:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    .line 1578
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Lte Band 40 detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1579
    :cond_b
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mRegistrationBand:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BAND_LTE_41"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1580
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->BAND41:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    .line 1581
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "Lte Band 41 detected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isLteThreateningBandUsed()Z
    .locals 3

    .prologue
    .line 1477
    const/4 v0, 0x0

    .line 1479
    .local v0, "ret":Z
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "isLteThreateningBandUsed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_0
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$1;->$SwitchMap$com$intel$cws$cwsservicemanager$CsmCoexMgr$isThreateningBandRes:[I

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->isLteThreateningBandAccordingToXreg()Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$isThreateningBandRes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1493
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteActive:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1494
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "LTE is not active"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v0, 0x0

    .line 1508
    :goto_0
    return v0

    .line 1483
    :pswitch_0
    const/4 v0, 0x0

    .line 1484
    goto :goto_0

    .line 1489
    :pswitch_1
    const/4 v0, 0x1

    .line 1490
    goto :goto_0

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMin()I

    move-result v1

    const/16 v2, 0x961

    if-gt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWLANUnifiedRangeMax()I

    move-result v1

    const/16 v2, 0x9bf

    if-ge v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMin()I

    move-result v1

    const/16 v2, 0x962

    if-gt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getBTUnifiedRangeMax()I

    move-result v1

    const/16 v2, 0x9b0

    if-lt v1, v2, :cond_4

    .line 1500
    :cond_3
    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    const-string v2, "Not in threatening band since full usage of the bandwidth."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v0, 0x0

    goto :goto_0

    .line 1503
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private manageBtRtActivation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 987
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    if-eqz v0, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "manageBtRtActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v0, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mState:I

    if-ne v0, v2, :cond_3

    .line 996
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v1, v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mCurrentChannelType:I

    iput v1, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mConfiguredChannelType:I

    .line 1000
    invoke-direct {p0, v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V

    .line 1004
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtRtCtrl:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;

    iget v0, v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$btRtControl;->mConfiguredChannelType:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->setBtExtFrameCfgParams()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1006
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "manageBtRtActivation: BT RT activated in TDD mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    :cond_4
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "CWS_SERVICE_MGR-CoexMgr"

    const-string v1, "manageBtRtActivation: BT RT activated in FDD mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_5
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->setBtExtFrameCfgParamsFDD()V

    goto :goto_0
.end method

.method private reset(I)V
    .locals 2
    .param p1, "radios"    # I

    .prologue
    const/4 v1, -0x1

    .line 1052
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1053
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    .line 1054
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMax:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1055
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1056
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1057
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMax:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1058
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    .line 1060
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1061
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I

    .line 1062
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I

    .line 1063
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1064
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1002(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1065
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1102(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1066
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1202(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;I)I

    .line 1067
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    .line 1069
    :cond_1
    return-void
.end method

.method private setBtExtFrameCfgParams()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 928
    const/4 v6, 0x0

    .line 929
    .local v6, "ret":Z
    iget-object v8, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->tddSpecialSubframeNumber:I
    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    .line 931
    .local v0, "aSpecialSubframeConfig":I
    sget-boolean v8, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    const-string v9, "setBtExtFrameCfgParams"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    iget-object v8, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->lteBitmap:[I
    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)[I

    move-result-object v8

    invoke-static {v0, v8}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings;->getFrameDataFromLTEInfos(I[I)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;

    move-result-object v1

    .line 938
    .local v1, "extFrameData":Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;
    if-nez v1, :cond_1

    .line 939
    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot retrieve BT Ext_Frame specs for TDD Special SubFrame "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_0
    return v7

    .line 944
    :cond_1
    iget-object v2, v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsDurations:[I

    .line 945
    .local v2, "extPeriodsDurations":[I
    iget-object v3, v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsTypes:[B

    .line 947
    .local v3, "extPeriodsTypes":[B
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 948
    :cond_2
    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot retrieve BT Ext_Frame specs for TDD Special SubFrame "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :cond_3
    invoke-virtual {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->dump()V

    .line 956
    new-instance v5, Landroid/content/Intent;

    const-string v8, "intel.intent.action.ACTION_COEX_EXT_FRAME_CONFIG"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v5, "intentExtFrame":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 960
    .local v4, "intentExtBudle":Landroid/os/Bundle;
    const-string v8, "ExtFrameDuration"

    const/16 v9, 0x2710

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 965
    const-string v8, "ExtFrameOffset"

    const/16 v9, 0x5dc

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 968
    const-string v8, "ExtFrameJitter"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 970
    const-string v7, "ExtFrameNumPeriod"

    iget-byte v8, v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$LTE_OFDM_Timings$frameData;->mPeriodsNum:B

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 972
    const-string v7, "ExtFramePeriodDuration"

    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 973
    const-string v7, "ExtFramePeriodType"

    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 974
    const-string v7, "CoexExtFrameConfig"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 975
    iget-object v7, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 977
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private setBtExtFrameCfgParamsFDD()V
    .locals 9

    .prologue
    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 898
    new-array v0, v7, [I

    aput v8, v0, v6

    .line 900
    .local v0, "extPeriodsDurFDD":[I
    new-array v1, v7, [B

    const/4 v4, 0x2

    aput-byte v4, v1, v6

    .line 902
    .local v1, "extPeriodsTypesFDD":[B
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "setBtExtFrameCfgParamsFDD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intel.intent.action.ACTION_COEX_EXT_FRAME_CONFIG"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v3, "intentExtFrame":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 906
    .local v2, "intentExtBudle":Landroid/os/Bundle;
    const-string v4, "ExtFrameDuration"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    const-string v4, "ExtFrameOffset"

    const/16 v5, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 910
    const-string v4, "ExtFrameJitter"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const-string v4, "ExtFrameNumPeriod"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 912
    const-string v4, "ExtFramePeriodDuration"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 913
    const-string v4, "ExtFramePeriodType"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 914
    const-string v4, "CoexExtFrameConfig"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 915
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 916
    return-void
.end method

.method private setSafe(I)V
    .locals 2
    .param p1, "radios"    # I

    .prologue
    const/4 v1, 0x1

    .line 1079
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    .line 1081
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    .line 1083
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1084
    const/16 v0, 0x962

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMin:I

    .line 1085
    const/16 v0, 0x9b0

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBTUnifiedRangeMax:I

    .line 1086
    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    .line 1088
    :cond_1
    return-void
.end method

.method private subscribeToNRTEvents()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1137
    const/4 v2, 0x0

    .line 1138
    .local v2, "failure":I
    const/4 v5, 0x0

    .line 1140
    .local v5, "response":Ljava/lang/String;
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "subscribeToNRTEvents"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    if-nez v9, :cond_2

    .line 1143
    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    const-string v9, "NULL NRTState"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_1
    :goto_0
    return v7

    .line 1147
    :cond_2
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    if-nez v9, :cond_3

    .line 1148
    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    const-string v9, "subscribeToNRTEvents - mSender is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1152
    :cond_3
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    if-nez v9, :cond_4

    .line 1153
    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    const-string v9, "subscribeToNRTEvents - mParser is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1158
    :cond_4
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    const-string v10, "AT+XNRTCWS?"

    invoke-virtual {v9, v10}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1159
    if-eqz v5, :cond_12

    .line 1160
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents query response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_5
    const-string v9, "OK"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1166
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mParser:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;

    invoke-virtual {v9, v5}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;->parseString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, "parsedResponse":[Ljava/lang/String;
    if-eqz v3, :cond_7

    aget-object v9, v3, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+XNRTCWS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1169
    const/4 v4, 0x0

    .line 1171
    .local v4, "rcvValue":I
    array-length v9, v3

    sget v10, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryParams:I

    if-ge v9, v10, :cond_6

    .line 1172
    const-string v8, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+XNRTCWS did not return correct number of parameters ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1178
    :cond_6
    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1179
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->active:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1302(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1180
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1181
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanActive:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1402(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1182
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v10, "XMM_7160"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1183
    sget v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanSafeRx:I

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1184
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1189
    :goto_1
    sget v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanBandwidth:I

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1190
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanBandwidth:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1602(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1191
    sget v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryBtActive:I

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1192
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btActive:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1702(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1193
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v10, "XMM_7160"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1194
    sget v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryBtSafeRx:I

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1195
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1200
    :goto_2
    array-length v9, v3

    sget v10, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanCenterFreq:I

    if-le v9, v10, :cond_7

    .line 1201
    sget v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->sNRTQueryWlanCenterFreq:I

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1203
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanCenterFreq:I
    invoke-static {v9, v4}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1902(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    .end local v4    # "rcvValue":I
    :cond_7
    :goto_3
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->dumpValues()V
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$2000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)V

    .line 1219
    .end local v3    # "parsedResponse":[Ljava/lang/String;
    :cond_8
    :goto_4
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->active:I
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1300(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I

    move-result v9

    if-eq v9, v8, :cond_9

    .line 1220
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->enableNRTReporting()Z

    .line 1224
    :cond_9
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanActive:I
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1400(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I

    move-result v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    if-eq v9, v10, :cond_b

    .line 1226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AT+XNRTCWS=2,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "cmd":Ljava/lang/String;
    iget v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    if-ne v9, v8, :cond_a

    .line 1229
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v10, "XMM_7160"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiBandwidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    :cond_a
    :goto_5
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v9, v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1239
    .local v6, "status":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1240
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    add-int/lit8 v2, v2, 0x1

    .line 1250
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_b
    :goto_6
    iget v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiActive:I

    if-ne v9, v8, :cond_18

    .line 1251
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1500(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I

    move-result v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    if-eq v9, v10, :cond_d

    iget v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    if-eq v9, v12, :cond_d

    .line 1252
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v10, "XMM_7160"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1254
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    if-eqz v9, :cond_15

    .line 1255
    const-string v0, "AT+XNRTCWS=2,,"

    .line 1263
    .restart local v0    # "cmd":Ljava/lang/String;
    :goto_7
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanBandwidth:I
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I

    move-result v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiBandwidth:I

    if-eq v9, v10, :cond_c

    .line 1264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiBandwidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1268
    :cond_c
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v9, v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1270
    .restart local v6    # "status":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1271
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    add-int/lit8 v2, v2, 0x1

    .line 1285
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_d
    :goto_8
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btActive:I
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I

    move-result v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    if-eq v9, v10, :cond_e

    .line 1287
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v10, "XMM_7160"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AT+XNRTCWS=2,,,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    .restart local v0    # "cmd":Ljava/lang/String;
    :goto_9
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v9, v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1296
    .restart local v6    # "status":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1297
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    add-int/lit8 v2, v2, 0x1

    .line 1305
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_e
    :goto_a
    iget v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    if-ne v9, v8, :cond_1f

    .line 1308
    sget-object v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v10, "XMM_7160"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1311
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mCoexDisableRT:Z

    if-nez v9, :cond_1e

    .line 1313
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1800(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;)I

    move-result v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    if-eq v9, v10, :cond_f

    iget v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    if-eq v9, v12, :cond_f

    .line 1314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AT+XNRTCWS=2,,,,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .restart local v0    # "cmd":Ljava/lang/String;
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I
    invoke-static {v9, v10}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    .line 1318
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v9, v0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1320
    .restart local v6    # "status":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 1321
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    add-int/lit8 v2, v2, 0x1

    .line 1329
    :goto_b
    iget v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    if-ne v9, v8, :cond_1d

    .line 1330
    invoke-direct {p0, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V

    .line 1334
    :goto_c
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v9, :cond_f

    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send BT RT_STATE intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtSafeRx:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_f
    :goto_d
    if-gtz v2, :cond_1

    move v7, v8

    .line 1350
    goto/16 :goto_0

    .line 1187
    .restart local v3    # "parsedResponse":[Ljava/lang/String;
    .restart local v4    # "rcvValue":I
    :cond_10
    :try_start_1
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    const/4 v10, -0x1

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I
    invoke-static {v9, v10}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1206
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "query parsedResponse exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1198
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    :try_start_2
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    const/4 v10, -0x1

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->btSafeRx:I
    invoke-static {v9, v10}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1802(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1215
    .end local v3    # "parsedResponse":[Ljava/lang/String;
    .end local v4    # "rcvValue":I
    :cond_12
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "subscribeToNRTEvents ERROR, response is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1232
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiBandwidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 1244
    .restart local v6    # "status":Ljava/lang/String;
    :cond_14
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1257
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AT+XNRTCWS=2,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .restart local v0    # "cmd":Ljava/lang/String;
    iget-object v9, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTState:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mWifiSafeRx:I

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->wlanSafeRx:I
    invoke-static {v9, v10}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;->access$1502(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTState;I)I

    goto/16 :goto_7

    .line 1261
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_16
    const-string v0, "AT+XNRTCWS=2,"

    .restart local v0    # "cmd":Ljava/lang/String;
    goto/16 :goto_7

    .line 1275
    .restart local v6    # "status":Ljava/lang/String;
    :cond_17
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1280
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_18
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v9, :cond_19

    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "WIFI is not ENABLED, reset WIFI parameters"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_19
    invoke-direct {p0, v8}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->reset(I)V

    goto/16 :goto_8

    .line 1290
    :cond_1a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AT+XNRTCWS=2,,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mBtActive:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cmd":Ljava/lang/String;
    goto/16 :goto_9

    .line 1301
    .restart local v6    # "status":Ljava/lang/String;
    :cond_1b
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1325
    :cond_1c
    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscribeToNRTEvents with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1332
    :cond_1d
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->manageBtRtActivation()V

    goto/16 :goto_c

    .line 1338
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/String;
    :cond_1e
    invoke-direct {p0, v7}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->broadcastBtRtControl(I)V

    goto/16 :goto_d

    .line 1343
    :cond_1f
    sget-boolean v9, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v9, :cond_20

    const-string v9, "CWS_SERVICE_MGR-CoexMgr"

    const-string v10, "BT is not ENABLED, reset BT parameters"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_20
    invoke-direct {p0, v13}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->reset(I)V

    goto/16 :goto_d
.end method


# virtual methods
.method public frequencyToWifiChannel(I)I
    .locals 5
    .param p1, "mapFreq"    # I

    .prologue
    const/4 v1, 0x0

    .line 1599
    const/16 v2, 0x961

    if-lt p1, v2, :cond_0

    const/16 v2, 0x9bf

    if-le p1, v2, :cond_3

    .line 1600
    :cond_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyToWifiChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in Wifi range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 1615
    :cond_2
    :goto_0
    return v0

    .line 1604
    :cond_3
    const/4 v0, 0x0

    .line 1606
    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1607
    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_4

    .line 1608
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frequencyToWifiChannel: Wifi Channel detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1611
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1614
    :cond_5
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    const-string v3, "frequencyToWifiChannel: Wifi Channel not detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v1

    .line 1615
    goto :goto_0
.end method

.method public frequencyToWifiChannelBitmap(III)I
    .locals 9
    .param p1, "minFreq"    # I
    .param p2, "maxFreq"    # I
    .param p3, "step"    # I

    .prologue
    const/16 v7, 0x9bf

    const/16 v6, 0x961

    const/16 v8, 0xe

    .line 1662
    const/4 v0, 0x0

    .line 1663
    .local v0, "i":I
    const/4 v1, 0x1

    .line 1664
    .local v1, "lowerChannel":I
    const/16 v4, 0xe

    .line 1665
    .local v4, "upperChannel":I
    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    array-length v3, v5

    .line 1666
    .local v3, "tabLen":I
    const/16 v2, 0x3fff

    .line 1669
    .local v2, "safeChannel":I
    if-gt p1, v7, :cond_0

    if-ge p1, v6, :cond_1

    .line 1670
    :cond_0
    const/16 p1, 0x961

    .line 1672
    :cond_1
    if-gt p2, v7, :cond_2

    if-ge p2, v6, :cond_3

    .line 1673
    :cond_2
    const/16 p2, 0x9bf

    .line 1675
    :cond_3
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frequencyToWifiChannelBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_4
    const/4 v0, 0x0

    .line 1679
    :goto_0
    if-ge v0, v3, :cond_5

    .line 1680
    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    aget v5, v5, v0

    sub-int/2addr v5, p3

    if-ge v5, p1, :cond_5

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1687
    :cond_5
    if-nez v0, :cond_7

    .line 1688
    const/4 v1, 0x1

    .line 1694
    :goto_1
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frequencyToWifiChannelBitmap lowerchannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_6
    add-int/lit8 v0, v3, -0x1

    .line 1697
    :goto_2
    if-ltz v0, :cond_9

    .line 1698
    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    aget v5, v5, v0

    add-int/2addr v5, p3

    if-le v5, p2, :cond_9

    .line 1699
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1689
    :cond_7
    if-le v0, v8, :cond_8

    .line 1690
    const/16 v1, 0xe

    goto :goto_1

    .line 1692
    :cond_8
    move v1, v0

    goto :goto_1

    .line 1704
    :cond_9
    if-nez v0, :cond_c

    .line 1705
    const/4 v4, 0x1

    .line 1711
    :goto_3
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frequencyToWifiChannelBitmap upperchannel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_a
    if-lt v1, v4, :cond_e

    .line 1715
    const/16 v2, 0x3fff

    .line 1726
    :goto_4
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frequencyToWifiChannelBitmap safechannel bitmap: 0b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_b
    return v2

    .line 1706
    :cond_c
    if-lt v0, v8, :cond_d

    .line 1707
    const/16 v4, 0xe

    goto :goto_3

    .line 1709
    :cond_d
    add-int/lit8 v4, v0, 0x1

    goto :goto_3

    .line 1717
    :cond_e
    move v0, v1

    :goto_5
    if-gt v0, v4, :cond_10

    .line 1719
    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->VERBOSE:Z

    if-eqz v5, :cond_f

    const-string v5, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mark bit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_f
    const/4 v5, 0x1

    add-int/lit8 v6, v0, -0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    .line 1717
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1723
    :cond_10
    and-int/lit16 v2, v2, 0x3fff

    goto :goto_4
.end method

.method public frequencyToWifiChannelFineGrained(II)I
    .locals 5
    .param p1, "mapFreq"    # I
    .param p2, "step"    # I

    .prologue
    const/4 v1, 0x0

    .line 1629
    const/16 v2, 0x961

    if-lt p1, v2, :cond_0

    const/16 v2, 0x9bf

    if-le p1, v2, :cond_2

    .line 1630
    :cond_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR-CoexMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyToWifiChannelFineGrained: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in Wifi range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_1
    :goto_0
    return v1

    .line 1635
    :cond_2
    const/4 v0, 0x0

    .line 1637
    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1638
    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    aget v2, v2, v0

    sub-int/2addr v2, p2

    if-gt v2, p1, :cond_3

    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->WIFI_CENTER_FREQ:[I

    aget v2, v2, v0

    add-int/2addr v2, p2

    if-lt v2, p1, :cond_3

    .line 1640
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 1642
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getBTUnifiedRangeMax()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1412
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v2, "XMM_7160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    .line 1424
    :cond_0
    :goto_0
    return v0

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1418
    :cond_2
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1421
    :cond_3
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1422
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1424
    :cond_4
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMax:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMax:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1200(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getBTUnifiedRangeMin()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1391
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v2, "XMM_7160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    .line 1403
    :cond_0
    :goto_0
    return v0

    .line 1394
    :cond_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1397
    :cond_2
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1398
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1400
    :cond_3
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1401
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1403
    :cond_4
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeRxMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$900(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->btSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$1100(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getWLANUnifiedRangeMin()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1433
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mModemVersion:Ljava/lang/String;

    const-string v2, "XMM_7160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    .line 1445
    :cond_0
    :goto_0
    return v0

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1439
    :cond_2
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1440
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1442
    :cond_3
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    goto :goto_0

    .line 1445
    :cond_4
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeRxMin:I
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$600(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mNRTInfo:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->wlanSafeTxFreqMin:I
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;->access$700(Lcom/intel/cws/cwsservicemanager/CsmCoexMgr$NRTInfo;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getWifiSafeChannelBitmap()I
    .locals 2

    .prologue
    .line 864
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 865
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->mSafeChannels:I

    goto :goto_0
.end method

.method public stringToBitSet(Ljava/lang/String;I)Ljava/util/BitSet;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 1746
    const-string v4, "\\{"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\}"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1748
    .local v0, "bitlist":[Ljava/lang/String;
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 1751
    .local v3, "retBitSet":Ljava/util/BitSet;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/util/BitSet;->clear(II)V

    .line 1755
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    if-ge v2, p2, :cond_0

    .line 1756
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1758
    :catch_0
    move-exception v1

    .line 1759
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CWS_SERVICE_MGR-CoexMgr"

    const-string v5, "stringToBitSet format exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v3
.end method
