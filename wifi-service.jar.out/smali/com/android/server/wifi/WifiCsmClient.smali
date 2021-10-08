.class public Lcom/android/server/wifi/WifiCsmClient;
.super Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.source "WifiCsmClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCsmClient"


# instance fields
.field private final DBG:Z

.field private mUsageCount:I

.field private final mWifiService:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BI)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I

    .line 38
    iput-object p2, p0, Lcom/android/server/wifi/WifiCsmClient;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    .line 39
    const-string v0, "WifiCsmClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCsmClient;->DBG:Z

    .line 40
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCsmClient;->csmActivateSimStatusReceiver()V

    .line 41
    return-void
.end method


# virtual methods
.method public csmClientModemAvailable()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public csmClientModemUnavailable()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public declared-synchronized getModem()V
    .locals 4

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I

    if-nez v1, :cond_1

    .line 48
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCsmClient;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiCsmClient"

    const-string v2, "Modem lock"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCsmClient;->csmStartModem()Z
    :try_end_1
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    :try_start_2
    const-string v1, "WifiCsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsync error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getWifiSafeChannelBitmap()I
    .locals 5

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "bitmap":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiCsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v2, :cond_0

    .line 97
    const-string v2, "WifiCsmClient"

    const-string v3, "getWifiSafeChannelBitmap: mCwsServiceMgr is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return v0

    .line 100
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiCsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    invoke-interface {v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->getWifiSafeChannelBitmap()I
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "WifiCsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiSafeChannelBitmap() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v1    # "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiCsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiSafeChannelBitmap() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSimAbsent()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onSimLoaded()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public declared-synchronized putModem()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I

    if-nez v0, :cond_2

    .line 62
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCsmClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiCsmClient"

    const-string v1, "Modem unlock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiCsmClient;->csmStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I

    if-gez v0, :cond_1

    .line 65
    const-string v0, "WifiCsmClient"

    const-string v1, "putModem: Unbalanced call"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiCsmClient;->mUsageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
