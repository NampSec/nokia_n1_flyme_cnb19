.class public Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
.super Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;
.source "CwsServiceMgr.java"


# static fields
.field private static final COEX_ENABLE_PROP:Ljava/lang/String; = "persist.service.cwsmgr.coex"

.field public static final CSM_COEX_CALLBACK:I = 0x1

.field public static final CSM_ERROR_AT_SENDER_NOT_AVAILABLE:I = -0x10

.field public static final CSM_ERROR_CLOSE_CHANNEL_EXCEPTION:I = -0xa

.field public static final CSM_ERROR_COEX_MGR_NULL:I = -0x5

.field public static final CSM_ERROR_CONTEXT_NULL:I = -0x1

.field public static final CSM_ERROR_INVALID_PARAMETER:I = -0x11

.field public static final CSM_ERROR_IS_USIM_EXCEPTION:I = -0x8

.field public static final CSM_ERROR_LOCK_MODEM_EXCEPTION:I = -0x6

.field public static final CSM_ERROR_MODEM_MGR_NULL:I = -0x2

.field public static final CSM_ERROR_NONE:I = 0x0

.field public static final CSM_ERROR_OPEN_CHANNEL_EXCEPTION:I = -0x9

.field public static final CSM_ERROR_READ_BYNARY_EXCEPTION:I = -0xc

.field public static final CSM_ERROR_SELECT_AID_EXCEPTION:I = -0xe

.field public static final CSM_ERROR_SELECT_EF_EXCEPTION:I = -0xd

.field public static final CSM_ERROR_TRANSMIT_APDU_EXCEPTION:I = -0xb

.field public static final CSM_ERROR_UICC_MGR_NULL:I = -0x3

.field public static final CSM_ERROR_UID_NOT_AUTHORIZED:I = -0xf

.field public static final CSM_ERROR_UNLOCK_MODEM_EXCEPTION:I = -0x7

.field public static final CSM_ERROR_UNSUPPORTED_TYPE:I = -0x5

.field public static final CSM_MODEM_CALLBACK:I = 0x0

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static mCoexEnabled:Z

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;


# instance fields
.field private mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

.field private mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

.field private mCoexState:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

.field private mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

.field private mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

.field private mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

.field private mLastError:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .line 57
    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    .line 59
    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 141
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;-><init>(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "CwsServiceMgr constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 100
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    :cond_1
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmContext;->getInstance()Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    .line 110
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->getInstance()Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .line 111
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    .line 113
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v1, :cond_3

    .line 114
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 139
    :cond_2
    :goto_0
    return-void

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmContext;->setContext(Landroid/content/Context;)V

    .line 120
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v1, :cond_4

    .line 121
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmModemMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, -0x2

    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->setContext(Landroid/content/Context;)V

    .line 127
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v1, :cond_5

    .line 128
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmUiccMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, -0x3

    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 134
    :cond_5
    const-string v1, "persist.service.cwsmgr.coex"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexState:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexState:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const/4 v1, 0x1

    sput-boolean v1, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexEnabled:Z

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexEnabled:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    return-object v0
.end method

.method static synthetic access$302(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
    .param p1, "x1"    # Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    return-object p1
.end method

.method static synthetic access$400(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    return p1
.end method

.method static synthetic access$600(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    return-object v0
.end method

.method static synthetic access$602(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
    .param p1, "x1"    # Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    return-object p1
.end method

.method static synthetic access$702(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
    .param p1, "x1"    # Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    return-object p1
.end method

.method private csmIsAllowedUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 176
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const/16 v0, 0x3e8

    if-eq v0, p1, :cond_1

    const/16 v0, 0x403

    if-eq v0, p1, :cond_1

    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_2

    .line 178
    :cond_1
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 180
    :cond_2
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Only SYSTEM_UID or NFC_UID or WIFI_UID can access this service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v0, -0xf

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Singleton CwsServiceMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    .line 93
    :cond_1
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    return-object v0
.end method


# virtual methods
.method public atSendCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 500
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 502
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atSendCmd - command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 505
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atSendCmd - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 523
    :cond_2
    :goto_0
    return-object v1

    .line 510
    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    if-nez v2, :cond_4

    .line 511
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "atSendCmd - AT sender not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v2, -0x10

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 516
    :cond_4
    if-nez p1, :cond_5

    .line 517
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "atSendCmd - wrong AT command"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v2, -0x11

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 521
    :cond_5
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "response":Ljava/lang/String;
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atSendCmd - response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public csmRegisterCallback(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 195
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmRegisterCallback - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v1, 0x0

    .line 202
    .local v1, "modemListener":Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmRegisterCallback type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 216
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Not supported type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_3
    const/4 v2, -0x5

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 206
    :pswitch_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Registering modem manager callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4
    invoke-static {p2}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-eqz v2, :cond_5

    .line 209
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2, v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->addClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V

    goto :goto_0

    .line 211
    :cond_5
    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public csmStart(B)V
    .locals 5
    .param p1, "id"    # B

    .prologue
    .line 253
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "csmStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 258
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmStart - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 282
    :goto_0
    return-void

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v2, :cond_3

    .line 264
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v2, -0x1

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 268
    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v2, :cond_4

    .line 269
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmModemMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmContext;->addConnection(B)V

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->lockModem()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "lockModem exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, -0x6

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public csmStop(B)V
    .locals 5
    .param p1, "id"    # B

    .prologue
    .line 285
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 288
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmStop - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v2, :cond_3

    .line 294
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v2, -0x1

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v2, :cond_4

    .line 299
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmModemMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmContext;->removeConnection(B)V

    .line 306
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmContext;->isAnyCwsRadioConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "No more radio client connected - unlock modem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->unlockModem()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "unlockModem exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, -0x7

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public csmUnregisterCallback(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmUnregisterCallback type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 229
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmUnregisterCallback - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    :goto_0
    return-void

    .line 234
    :cond_2
    const/4 v1, 0x0

    .line 236
    .local v1, "modemListener":Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;
    packed-switch p1, :pswitch_data_0

    .line 247
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Not supported type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3
    const/4 v2, -0x5

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 238
    :pswitch_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Unregistering modem manager callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    invoke-static {p2}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-eqz v2, :cond_5

    .line 241
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2, v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->removeClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V

    goto :goto_0

    .line 243
    :cond_5
    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    return v0
.end method

.method public getWifiSafeChannelBitmap()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 486
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiSafeChannelBitmap - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 495
    :cond_1
    :goto_0
    return v1

    .line 491
    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    if-eqz v2, :cond_1

    .line 495
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    invoke-virtual {v1}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getWifiSafeChannelBitmap()I

    move-result v1

    goto :goto_0
.end method

.method public uiccBeginTransaction(B)V
    .locals 5
    .param p1, "id"    # B

    .prologue
    .line 342
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 345
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiccBeginTransaction - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v2, :cond_2

    .line 351
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmUiccMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v2, -0x3

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 357
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->openChannel(B)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "openChannel exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v2, -0x9

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccEndTransaction(B)V
    .locals 5
    .param p1, "id"    # B

    .prologue
    .line 365
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 368
    .local v0, "callingUid":I
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiccEndTransaction - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v2, :cond_2

    .line 374
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmUiccMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v2, -0x3

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 380
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->closeChannel(B)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "closeChannel exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/16 v2, -0xa

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccIsUsim()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 318
    const/4 v3, 0x0

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 321
    .local v0, "callingUid":I
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccIsUsim - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :goto_0
    return v2

    .line 326
    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    .line 327
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 333
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->isUsim()Z
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "isUsim exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v3, -0x8

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccReadBinary(B)[B
    .locals 6
    .param p1, "id"    # B

    .prologue
    const/4 v2, 0x0

    .line 412
    const/4 v3, 0x0

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 415
    .local v0, "callingUid":I
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccReadBinary - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    :goto_0
    return-object v2

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    .line 421
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 427
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3, p1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->readBinary(B)[B
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "readBinary exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v3, -0xc

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccSelectAid(B[B)Z
    .locals 6
    .param p1, "id"    # B
    .param p2, "aid"    # [B

    .prologue
    const/4 v2, 0x0

    .line 460
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 463
    .local v0, "callingUid":I
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccSelectAid - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 479
    :goto_0
    return v2

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    .line 469
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 475
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3, p1, p2}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->selectAid(B[B)Z
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "selectAid exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v3, -0xe

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccSelectEf(B[B)Z
    .locals 6
    .param p1, "id"    # B
    .param p2, "path"    # [B

    .prologue
    const/4 v2, 0x0

    .line 436
    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 439
    .local v0, "callingUid":I
    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccSelectEf - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    :goto_0
    return v2

    .line 444
    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    .line 445
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    .line 451
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3, p1, p2}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->selectEf(B[B)Z
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "selectEf exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v3, -0xd

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccTransmitAPDU(BIIII[B)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # B
    .param p2, "inst"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "command"    # [B

    .prologue
    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 391
    .local v7, "callingUid":I
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiccTransmitAPDU - calling UID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-direct {p0, v7}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v0, :cond_2

    .line 397
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "mCsmUiccMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, -0x3

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 399
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v8

    .line 405
    .local v8, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "transmitAPDU exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v0, -0xb

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    .line 407
    const/4 v0, 0x0

    goto :goto_0
.end method
