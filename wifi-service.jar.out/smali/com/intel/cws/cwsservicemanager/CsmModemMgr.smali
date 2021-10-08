.class public Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
.super Ljava/lang/Object;
.source "CsmModemMgr.java"

# interfaces
.implements Lcom/intel/internal/telephony/ModemEventListener;


# static fields
.field private static final ACQUIRE_FAILURE_INTENT:Ljava/lang/String; = "Modem Manager Acquire Failure"

.field private static final ACQUIRE_SUCCESS_INTENT:Ljava/lang/String; = "Modem Manager Acquire Success"

.field private static final CONNECT_FAILURE_INTENT:Ljava/lang/String; = "Modem Manager Connect Failure"

.field private static final CONNECT_SUCCESS_INTENT:Ljava/lang/String; = "Modem Manager Connect Success"

.field private static final DEBUG:Z

.field static final MAX_NUM_OF_TENTATIVES:I = 0x1e

.field private static final MODEM_STATUS_TIMEOUT_MS:J = 0x7d0L

.field public static final MSG_MODEM_COLD_RESET:I = 0x2

.field public static final MSG_MODEM_CORE_DUMP:I = 0x6

.field public static final MSG_MODEM_DEAD:I = 0x4

.field public static final MSG_MODEM_DOWN:I = 0x5

.field public static final MSG_MODEM_PLATFORM_REBOOT:I = 0x7

.field public static final MSG_MODEM_SHUTDOWN:I = 0x3

.field public static final MSG_MODEM_UNKNOWN:I = 0x0

.field public static final MSG_MODEM_UP:I = 0x1

.field public static final MSG_NO_MODEM:I = 0x8

.field static final SLEEP_TIME_AFTER_EXCEPTION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

.field private static mModemManagerAcquisitionFailures:I

.field private static mModemManagerConnectionFailures:I

.field protected static mModemOutOfOrder:Z

.field protected static mPreviousModemStatus:I


# instance fields
.field private mAcquireFailureHandler:Landroid/os/Handler;

.field private mClientList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectFailureHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

.field private final mHandler:Landroid/os/Handler;

.field private mModemLocked:Z

.field protected mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    .line 66
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    .line 67
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    .line 76
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 78
    sput-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    .line 189
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mConnectFailureHandler:Landroid/os/Handler;

    .line 334
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mAcquireFailureHandler:Landroid/os/Handler;

    .line 91
    :try_start_0
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Creating CsmModemMgr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-static {}, Lcom/intel/internal/telephony/ModemStatusManager;->getInstance()Lcom/intel/internal/telephony/ModemStatusManager;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    .line 93
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->ALL:Lcom/intel/internal/telephony/ModemStatus;

    sget-object v3, Lcom/intel/internal/telephony/ModemNotification;->ALL:Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v1, p0, v2, v3}, Lcom/intel/internal/telephony/ModemStatusManager;->subscribeToEvent(Lcom/intel/internal/telephony/ModemEventListener;Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)Lcom/intel/internal/telephony/ModemStatusManager;
    :try_end_0
    .catch Lcom/intel/internal/telephony/MmgrClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmContext;->getInstance()Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    .line 104
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Lcom/intel/internal/telephony/MmgrClientException;
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Failed to start MMGR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0    # "ex":Lcom/intel/internal/telephony/MmgrClientException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Neither MMGR or STMD are available on this board"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/16 v1, 0x8

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mAcquireFailureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 44
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    return v0
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->acquireAsync()V

    return-void
.end method

.method static synthetic access$300(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->connectAsync()V

    return-void
.end method

.method static synthetic access$402(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    return p0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 44
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    return v0
.end method

.method static synthetic access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mConnectFailureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 347
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "acquireAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    if-eqz v0, :cond_2

    .line 350
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Modem Out Of Order - avoid acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager;->acquireModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V

    goto :goto_0

    .line 375
    :cond_3
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "acquireAsync - mModemManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "acquireAsync - mModemManager is null"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 300
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "connectAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    if-eqz v0, :cond_2

    .line 303
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Modem Out Of Order - avoid connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    const-string v1, "CSM Client"

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$4;

    invoke-direct {v2, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$4;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    invoke-virtual {v0, v1, v2}, Lcom/intel/internal/telephony/ModemStatusManager;->connectAsync(Ljava/lang/String;Lcom/intel/internal/telephony/AsyncOperationResultListener;)V

    goto :goto_0

    .line 329
    :cond_3
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "connectAsync - mModemManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "connectAsync - mModemManager is null"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {v0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;-><init>()V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .line 110
    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    return-object v0
.end method


# virtual methods
.method public addClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V
    .locals 4
    .param p1, "client"    # Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    .prologue
    .line 118
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "addClient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 123
    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-ne v1, v2, :cond_2

    .line 124
    invoke-interface {p1}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;->mmgrClbkModemAvailable()V

    .line 125
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "addClient client.mmgrClbkModemAvailable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "addClient client.mmgrClbkModemUnavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    sget v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    invoke-interface {p1, v1}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;->mmgrClbkModemUnavailable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 132
    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception sending modem status: "

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

.method public declared-synchronized lockModem()V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "lockModem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    if-nez v1, :cond_3

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    .line 148
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Setting modem state to locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    .line 151
    const/4 v1, 0x0

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "Modem Manager Connect Success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "Modem Manager Connect Failure"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "Modem Manager Acquire Success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "Modem Manager Acquire Failure"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->connectAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onModemColdReset(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .locals 3
    .param p1, "arg"    # Lcom/intel/internal/telephony/ModemNotificationArgs;

    .prologue
    const/4 v2, 0x2

    .line 414
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_COLD_RESET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    .line 418
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    const/4 v0, 0x2

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_1
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemCoreDump(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .locals 3
    .param p1, "arg"    # Lcom/intel/internal/telephony/ModemNotificationArgs;

    .prologue
    const/4 v2, 0x6

    .line 425
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_CORE_DUMP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    const/4 v0, 0x6

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemDead()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 404
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_DEAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    const/4 v0, 0x4

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 410
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemDown()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 382
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of mPreviousModemStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    .line 387
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v3, v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    const/4 v0, 0x5

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_2
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemShutdown(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .locals 3
    .param p1, "arg"    # Lcom/intel/internal/telephony/ModemNotificationArgs;

    .prologue
    const/4 v2, 0x3

    .line 441
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    .line 445
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eqz v0, :cond_2

    .line 446
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 448
    const/4 v0, 0x3

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 451
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "First event: EVENT_MODEM_SHUTDOWN not notified"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 394
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    const/4 v0, 0x1

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 400
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPlatformReboot(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .locals 3
    .param p1, "arg"    # Lcom/intel/internal/telephony/ModemNotificationArgs;

    .prologue
    const/4 v2, 0x7

    .line 433
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_PLATFORM_REBOOT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 436
    const/4 v0, 0x7

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_1
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V
    .locals 1
    .param p1, "client"    # Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public declared-synchronized unlockModem()V
    .locals 5

    .prologue
    .line 167
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 179
    :try_start_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->releaseModem()V
    :try_end_3
    .catch Lcom/intel/internal/telephony/MmgrClientException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :goto_1
    monitor-exit p0

    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mReceiver is already unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 167
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Lcom/intel/internal/telephony/MmgrClientException;
    :try_start_5
    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during releaseModem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    .end local v0    # "e":Lcom/intel/internal/telephony/MmgrClientException;
    :cond_1
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "unlockModem - mModemManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "unlockModem - mModemManager is null"

    invoke-direct {v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
