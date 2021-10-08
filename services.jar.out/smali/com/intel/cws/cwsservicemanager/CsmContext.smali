.class public Lcom/intel/cws/cwsservicemanager/CsmContext;
.super Ljava/lang/Object;
.source "CsmContext.java"


# static fields
.field public static final CSM_CONNECTION_CHANGED:Ljava/lang/String; = "CSM Connections Changed"

.field public static final CSM_CONNECTION_UPDATE_INTENT:Ljava/lang/String; = "CSM Connection Update Intent"

.field public static final CSM_ID_BT:B = 0x4t

.field public static final CSM_ID_GPS:B = 0x2t

.field public static final CSM_ID_MODEM:B = 0x10t

.field public static final CSM_ID_NFC:B = 0x8t

.field public static final CSM_ID_WIFI:B = 0x1t

.field public static final CSM_ID_WIFI_OFFLOAD:B = 0x20t

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmContext;


# instance fields
.field private mConnectionState:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmContext;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B

    .line 44
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmContext;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Creating CsmContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/intel/cws/cwsservicemanager/CsmContext;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-direct {v0}, Lcom/intel/cws/cwsservicemanager/CsmContext;-><init>()V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmContext;

    .line 51
    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmContext;

    return-object v0
.end method

.method private notifyConnectionChange()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "CSM Connection Update Intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "CSM Connections Changed"

    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 116
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmContext;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmContext;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addConnection(B)V
    .locals 1
    .param p1, "id"    # B

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B

    .line 103
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmContext;->notifyConnectionChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAnyCwsRadioConnected()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBtConnected()Z
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isGpsConnected()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isModemAvailable()Z
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNfcConnected()Z
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiConnected()Z
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeConnection(B)V
    .locals 2
    .param p1, "id"    # B

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/intel/cws/cwsservicemanager/CsmContext;->mConnectionState:B

    .line 109
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmContext;->notifyConnectionChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sput-object p1, Lcom/intel/cws/cwsservicemanager/CsmContext;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method
