.class public Lcom/intel/internal/telephony/ModemStatusManager;
.super Ljava/lang/Object;
.source "ModemStatusManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/ModemStatusManager$1;,
        Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ModemStatusManager"

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/intel/internal/telephony/ModemStatusManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventListener:Lcom/intel/internal/telephony/ModemEventListener;

.field private mInstanceId:Ljava/lang/Integer;

.field private modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

.field private requestHandler:Landroid/os/Handler;

.field private statusEventsHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/intel/internal/telephony/ModemStatusManager;-><init>(I)V

    .line 76
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "inst"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    .line 49
    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    .line 50
    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->requestHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Lcom/intel/internal/telephony/ModemStatusManager;->mmgrSocketExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;

    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    .line 71
    :goto_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->requestHandler:Landroid/os/Handler;

    .line 72
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/intel/internal/telephony/ModemStatusManager;->stmdSocketExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;

    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Neither STMD nor MMGR are present on this device."

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchNotification(Lcom/intel/internal/telephony/ModemNotification;)Lcom/intel/internal/telephony/ModemNotificationArgs;
    .locals 4
    .param p1, "notification"    # Lcom/intel/internal/telephony/ModemNotification;

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "args":Lcom/intel/internal/telephony/ModemNotificationArgs;
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    if-eqz v1, :cond_1

    .line 434
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->buildNotificationArgs()Lcom/intel/internal/telephony/ModemNotificationArgs;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0, p0}, Lcom/intel/internal/telephony/ModemNotificationArgs;->setSender(Lcom/intel/internal/telephony/ModemStatusManager;)V

    .line 439
    invoke-virtual {v0, p1}, Lcom/intel/internal/telephony/ModemNotificationArgs;->setNotification(Lcom/intel/internal/telephony/ModemNotification;)V

    .line 441
    :cond_0
    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager$1;->$SwitchMap$com$intel$internal$telephony$ModemNotification:[I

    invoke-virtual {p1}, Lcom/intel/internal/telephony/ModemNotification;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 457
    :goto_0
    monitor-exit v2

    .line 459
    :cond_1
    return-object v0

    .line 443
    :pswitch_0
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1, v0}, Lcom/intel/internal/telephony/ModemEventListener;->onModemColdReset(Lcom/intel/internal/telephony/ModemNotificationArgs;)V

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 446
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1, v0}, Lcom/intel/internal/telephony/ModemEventListener;->onModemShutdown(Lcom/intel/internal/telephony/ModemNotificationArgs;)V

    goto :goto_0

    .line 449
    :pswitch_2
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1, v0}, Lcom/intel/internal/telephony/ModemEventListener;->onPlatformReboot(Lcom/intel/internal/telephony/ModemNotificationArgs;)V

    goto :goto_0

    .line 452
    :pswitch_3
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1, v0}, Lcom/intel/internal/telephony/ModemEventListener;->onModemCoreDump(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dispatchStatus(Lcom/intel/internal/telephony/ModemStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/intel/internal/telephony/ModemStatus;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    monitor-enter v1

    .line 409
    :try_start_0
    sget-object v0, Lcom/intel/internal/telephony/ModemStatusManager$1;->$SwitchMap$com$intel$internal$telephony$ModemStatus:[I

    invoke-virtual {p1}, Lcom/intel/internal/telephony/ModemStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 424
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 426
    :cond_0
    return-void

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemEventListener;->onModemUp()V

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 416
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemEventListener;->onModemDown()V

    goto :goto_0

    .line 419
    :pswitch_3
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemEventListener;->onModemDead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDefaultInstanceId()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/intel/internal/telephony/ModemStatusManager;->getInstance(I)Lcom/intel/internal/telephony/ModemStatusManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 4
    .param p0, "instanceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 106
    const-class v2, Lcom/intel/internal/telephony/ModemStatusManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/telephony/ModemStatusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit v2

    return-object v1

    .line 109
    :cond_0
    :try_start_1
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/ModemStatusManager;-><init>(I)V

    .line 110
    .local v0, "instance":Lcom/intel/internal/telephony/ModemStatusManager;
    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 111
    goto :goto_0

    .line 106
    .end local v0    # "instance":Lcom/intel/internal/telephony/ModemStatusManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private mmgrSocketExists()Z
    .locals 4

    .prologue
    .line 85
    const-string v1, "/dev/socket/mmgr"

    .line 87
    .local v1, "socketName":Ljava/lang/String;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "mmgr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private stmdSocketExists()Z
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/socket/stmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "stmd":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public acquireModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->useModem()V

    .line 232
    :cond_0
    return-void
.end method

.method public acquireModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 240
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v1, :cond_1

    .line 278
    const-string v0, "mmgr"

    .line 279
    .local v0, "socketName":Ljava/lang/String;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    const-string v1, "ModemStatusManagerJavaLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connect to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v1, p1, v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v0    # "socketName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public connectAsync(Ljava/lang/String;Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 3
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 295
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p2}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_0
    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    throw v0
.end method

.method public disconnectAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 344
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 346
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 380
    if-eqz p1, :cond_0

    .line 381
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return v4

    .line 383
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/intel/internal/telephony/ModemStatus;

    .line 385
    .local v2, "status":Lcom/intel/internal/telephony/ModemStatus;
    invoke-direct {p0, v2}, Lcom/intel/internal/telephony/ModemStatusManager;->dispatchStatus(Lcom/intel/internal/telephony/ModemStatus;)V

    goto :goto_0

    .line 389
    .end local v2    # "status":Lcom/intel/internal/telephony/ModemStatus;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/intel/internal/telephony/ModemNotification;

    .line 391
    .local v1, "notification":Lcom/intel/internal/telephony/ModemNotification;
    invoke-direct {p0, v1}, Lcom/intel/internal/telephony/ModemStatusManager;->dispatchNotification(Lcom/intel/internal/telephony/ModemNotification;)Lcom/intel/internal/telephony/ModemNotificationArgs;

    move-result-object v0

    .line 394
    .local v0, "feedback":Lcom/intel/internal/telephony/ModemNotificationArgs;
    if-eqz v0, :cond_0

    .line 395
    iget-object v3, p0, Lcom/intel/internal/telephony/ModemStatusManager;->requestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public recoverModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/ModemStatusManager;->recoverModem([Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public recoverModem([Ljava/lang/String;)V
    .locals 1
    .param p1, "causes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->recoverModem([Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public recoverModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/intel/internal/telephony/ModemStatusManager;->recoverModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public recoverModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;
    .param p2, "causes"    # [Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    return-void
.end method

.method public releaseModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->releaseModem()V

    .line 255
    :cond_0
    return-void
.end method

.method public releaseModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 263
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    return-void
.end method

.method public restartModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->restartModem()V

    .line 139
    :cond_0
    return-void
.end method

.method public restartModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 147
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    return-void
.end method

.method public sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V
    .locals 1
    .param p1, "args"    # Lcom/intel/internal/telephony/ModemRequestArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 321
    :cond_0
    return-void
.end method

.method public shutdowModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->shutdownModem()V

    .line 209
    :cond_0
    return-void
.end method

.method public shutdownModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    .line 217
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    return-void
.end method

.method public declared-synchronized subscribeToEvent(Lcom/intel/internal/telephony/ModemEventListener;Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 1
    .param p1, "listener"    # Lcom/intel/internal/telephony/ModemEventListener;
    .param p2, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p3, "notifications"    # Lcom/intel/internal/telephony/ModemNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    .line 368
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p2, p3}, Lcom/intel/internal/telephony/ModemStatusMonitor;->subscribeTo(Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    monitor-exit p0

    return-object p0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForModemStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z
    .locals 2
    .param p1, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/intel/internal/telephony/ModemStatusMonitor;->waitForStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
