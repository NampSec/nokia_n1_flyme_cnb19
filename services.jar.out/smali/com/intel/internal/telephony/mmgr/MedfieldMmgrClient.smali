.class public Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;
.super Ljava/lang/Object;
.source "MedfieldMmgrClient.java"

# interfaces
.implements Lcom/intel/internal/telephony/ModemStatusMonitor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient$1;
    }
.end annotation


# static fields
.field public static final ACK_MODEM_COLD_RESET:I = 0x7

.field public static final ACK_MODEM_SHUTDOWN:I = 0x8

.field public static final NOTIFY_ACK:I = 0x9

.field public static final NOTIFY_MODEM_COLD_RESET:I = 0x4

.field public static final NOTIFY_MODEM_CORE_DUMP:I = 0x8

.field public static final NOTIFY_MODEM_SHUTDOWN:I = 0x5

.field public static final NOTIFY_MODEM_STARTING:I = 0x7

.field public static final NOTIFY_NACK:I = 0xa

.field public static final NOTIFY_PLATFORM_REBOOT:I = 0x6

.field public static final REQUEST_FORCE_MODEM_SHUTDOWN:I = 0x6

.field public static final REQUEST_MODEM_RECOVERY:I = 0x4

.field public static final REQUEST_MODEM_RESTART:I = 0x5

.field public static final RESOURCE_ACQUIRE:I = 0x2

.field public static final RESOURCE_RELEASE:I = 0x3

.field public static final SET_EVENTS:I = 0x1

.field public static final SET_NAME:I = 0x0

.field public static final STATUS_MODEM_DOWN:I = 0x0

.field public static final STATUS_MODEM_NFLUSH:I = 0x2

.field public static final STATUS_MODEM_OUT_OF_SERVICE:I = 0x3

.field public static final STATUS_MODEM_UP:I = 0x1


# instance fields
.field final ackLock:Ljava/util/concurrent/locks/Lock;

.field final ackSignal:Ljava/util/concurrent/locks/Condition;

.field volatile ackSignaled:Z

.field volatile bReady:Z

.field public clientSocket:Landroid/net/LocalSocket;

.field public connectTimeoutMs:I

.field private currentStatus:Lcom/intel/internal/telephony/ModemStatus;

.field public handler:Landroid/os/Handler;

.field volatile nackSignaled:Z

.field final statusLock:Ljava/util/concurrent/locks/Lock;

.field final statusSignal:Ljava/util/concurrent/locks/Condition;

.field public volatile stopRequested:Z

.field private subscribedEvents:I

.field syncObject:Ljava/lang/Object;

.field public thread:Ljava/lang/Thread;

.field private waitedStatus:Lcom/intel/internal/telephony/ModemStatus;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 105
    const/16 v0, 0xfa0

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;-><init>(Landroid/os/Handler;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "connectTimeoutMs"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    .line 84
    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    .line 85
    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    .line 86
    iput-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stopRequested:Z

    .line 87
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    .line 88
    iput v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->subscribedEvents:I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    .line 91
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignal:Ljava/util/concurrent/locks/Condition;

    .line 92
    iput-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignaled:Z

    .line 93
    iput-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->nackSignaled:Z

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    .line 96
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusSignal:Ljava/util/concurrent/locks/Condition;

    .line 98
    sget-object v0, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->currentStatus:Lcom/intel/internal/telephony/ModemStatus;

    .line 99
    sget-object v0, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitedStatus:Lcom/intel/internal/telephony/ModemStatus;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->syncObject:Ljava/lang/Object;

    .line 102
    iput-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->bReady:Z

    .line 109
    iput p2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    .line 110
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->setModemStatusHandler(Landroid/os/Handler;)V

    .line 111
    return-void
.end method

.method private connectSocket(Ljava/lang/String;)V
    .locals 4
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    .line 181
    const-string v1, "ModemStatusManagerJavaLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to service... socket name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->getSocketAddress(Ljava/lang/String;)Landroid/net/LocalSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Connected to service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "Connection to MMGR socket failed."

    invoke-direct {v1, v2, v0}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleResponse([BII)V
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 358
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->NONE:Lcom/intel/internal/telephony/ModemNotification;

    .line 359
    .local v1, "notification":Lcom/intel/internal/telephony/ModemNotification;
    sget-object v3, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    .line 369
    .local v3, "status":Lcom/intel/internal/telephony/ModemStatus;
    invoke-static {p1, p2, p3}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->parseResponses([BII)Ljava/util/List;

    move-result-object v2

    .line 372
    .local v2, "parsedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 373
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;

    invoke-virtual {v4}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getResponseId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 430
    :pswitch_0
    const-string v5, "ModemStatusManagerJavaLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown response ID :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;

    invoke-virtual {v4}, Lcom/intel/internal/telephony/mmgr/responses/MmgrBaseResponse;->getResponseId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :pswitch_1
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem status = MODEM_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v3, Lcom/intel/internal/telephony/ModemStatus;->DOWN:Lcom/intel/internal/telephony/ModemStatus;

    .line 377
    goto :goto_1

    .line 380
    :pswitch_2
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem status = MODEM_UP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v3, Lcom/intel/internal/telephony/ModemStatus;->UP:Lcom/intel/internal/telephony/ModemStatus;

    .line 382
    goto :goto_1

    .line 385
    :pswitch_3
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem status = MODEM_DEAD"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v3, Lcom/intel/internal/telephony/ModemStatus;->DEAD:Lcom/intel/internal/telephony/ModemStatus;

    .line 387
    goto :goto_1

    .line 390
    :pswitch_4
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem notification = NOTIFY_MODEM_COLD_RESET"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->COLD_RESET:Lcom/intel/internal/telephony/ModemNotification;

    .line 393
    goto :goto_1

    .line 396
    :pswitch_5
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem notification = NOTIFY_MODEM_CORE_DUMP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->CORE_DUMP:Lcom/intel/internal/telephony/ModemNotification;

    .line 399
    goto :goto_1

    .line 402
    :pswitch_6
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem notification = NOTIFY_MODEM_SHUTDOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->SHUTDOWN:Lcom/intel/internal/telephony/ModemNotification;

    .line 405
    goto :goto_1

    .line 408
    :pswitch_7
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem notification = NOTIFY_PLATFORM_REBOOT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->PLATFORM_REBOOT:Lcom/intel/internal/telephony/ModemNotification;

    .line 411
    goto :goto_1

    .line 414
    :pswitch_8
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Modem notification = NOTIFY_MODEM_STARTING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->STARTING:Lcom/intel/internal/telephony/ModemNotification;

    .line 417
    goto :goto_1

    .line 420
    :pswitch_9
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Received ACK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->signalAck()V

    goto :goto_1

    .line 425
    :pswitch_a
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Received NACK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->signalNack()V

    goto :goto_1

    .line 435
    :cond_0
    iput-object v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->currentStatus:Lcom/intel/internal/telephony/ModemStatus;

    .line 437
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitedStatus:Lcom/intel/internal/telephony/ModemStatus;

    if-ne v3, v4, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->signalStatus()V

    .line 440
    :cond_1
    sget-object v4, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    if-eq v3, v4, :cond_2

    .line 441
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 444
    :cond_2
    sget-object v4, Lcom/intel/internal/telephony/ModemNotification;->NONE:Lcom/intel/internal/telephony/ModemNotification;

    if-eq v1, v4, :cond_3

    .line 445
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 448
    :cond_3
    return-void

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private signalAck()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    :try_start_0
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Signaling ACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignaled:Z

    .line 262
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 266
    return-void

    .line 264
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private signalNack()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    :try_start_0
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Signaling NACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->nackSignaled:Z

    .line 273
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 277
    return-void

    .line 275
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private signalStatus()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 282
    :try_start_0
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Signaling status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private waitForAck(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 196
    :try_start_0
    iget-boolean v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignaled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->nackSignaled:Z

    if-nez v2, :cond_2

    .line 197
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "Waiting for ACK/NACK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignal:Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, p2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 199
    if-eqz v1, :cond_1

    .line 200
    iget-boolean v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->nackSignaled:Z

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "NACK signaled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    .line 217
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackSignaled:Z

    .line 218
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->nackSignaled:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 225
    :goto_1
    return v1

    .line 204
    :cond_0
    :try_start_1
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "ACK signaled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 207
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "ACK timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->ackLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 210
    :cond_2
    :try_start_4
    iget-boolean v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->nackSignaled:Z

    if-eqz v2, :cond_3

    .line 211
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "NACK already signaled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_3
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "ACK already signaled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildNotificationArgs()Lcom/intel/internal/telephony/ModemNotificationArgs;
    .locals 1

    .prologue
    .line 561
    new-instance v0, Lcom/intel/internal/telephony/ModemNotificationArgs;

    invoke-direct {v0}, Lcom/intel/internal/telephony/ModemNotificationArgs;-><init>()V

    return-object v0
.end method

.method protected cleanUp()V
    .locals 3

    .prologue
    .line 480
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Cleaning up client..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 484
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 485
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    :goto_0
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Cleaning done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getSocketAddress(Ljava/lang/String;)Landroid/net/LocalSocketAddress;
    .locals 2
    .param p1, "socketName"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 452
    if-eqz p1, :cond_0

    .line 453
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 476
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 456
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/intel/internal/telephony/ModemNotificationArgs;

    .line 457
    .local v1, "feedback":Lcom/intel/internal/telephony/ModemNotificationArgs;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/intel/internal/telephony/ModemNotificationArgs;->isAcknowledge()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->replyToNotification(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    :try_end_0
    .catch Lcom/intel/internal/telephony/MmgrClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "ex":Lcom/intel/internal/telephony/MmgrClientException;
    const-string v3, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Lcom/intel/internal/telephony/MmgrClientException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 467
    .end local v0    # "ex":Lcom/intel/internal/telephony/MmgrClientException;
    .end local v1    # "feedback":Lcom/intel/internal/telephony/ModemNotificationArgs;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/intel/internal/telephony/ModemRequestArgs;

    .line 469
    .local v2, "request":Lcom/intel/internal/telephony/ModemRequestArgs;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V
    :try_end_1
    .catch Lcom/intel/internal/telephony/MmgrClientException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 470
    :catch_1
    move-exception v0

    .line 471
    .restart local v0    # "ex":Lcom/intel/internal/telephony/MmgrClientException;
    const-string v3, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Lcom/intel/internal/telephony/MmgrClientException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public recoverModem([Ljava/lang/String;)V
    .locals 4
    .param p1, "causes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;

    invoke-direct {v0, p1}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;-><init>([Ljava/lang/String;)V

    .line 621
    .local v0, "request":Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRecoveryRequest;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 623
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "RecoverModem request failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :cond_0
    return-void
.end method

.method public releaseModem()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemReleaseRequest;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemReleaseRequest;-><init>()V

    .line 599
    .local v0, "request":Lcom/intel/internal/telephony/mmgr/requests/MmgrModemReleaseRequest;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 601
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "ReleaseModem request failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 604
    :cond_0
    return-void
.end method

.method public replyToNotification(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .locals 5
    .param p1, "args"    # Lcom/intel/internal/telephony/ModemNotificationArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 567
    sget-object v0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient$1;->$SwitchMap$com$intel$internal$telephony$ModemNotification:[I

    invoke-virtual {p1}, Lcom/intel/internal/telephony/ModemNotificationArgs;->getNotification()Lcom/intel/internal/telephony/ModemNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intel/internal/telephony/ModemNotification;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 578
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "No possible reply to notification %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/intel/internal/telephony/ModemNotificationArgs;->getNotification()Lcom/intel/internal/telephony/ModemNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 569
    :pswitch_0
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Replying ACK to cold reset"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemColdResetAckRequest;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemColdResetAckRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    goto :goto_0

    .line 574
    :pswitch_1
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Replying ACK to shutdown"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemShutdownAckRequest;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemShutdownAckRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restartModem()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRestartRequest;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRestartRequest;-><init>()V

    .line 610
    .local v0, "request":Lcom/intel/internal/telephony/mmgr/requests/MmgrModemRestartRequest;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 612
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "RestartModem request failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 295
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "MMGR client thread started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v4, 0x400

    new-array v3, v4, [B

    .line 299
    .local v3, "recvBuffer":[B
    const/4 v1, 0x0

    .line 300
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 303
    .local v2, "readCount":I
    :try_start_0
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Socket output stream open."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    iget-object v5, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 322
    :try_start_1
    iget-boolean v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->bReady:Z

    if-eqz v4, :cond_2

    .line 323
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->syncObject:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 327
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :goto_1
    iget-boolean v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stopRequested:Z

    if-nez v4, :cond_0

    .line 331
    if-eqz v1, :cond_3

    .line 332
    const/4 v4, 0x0

    :try_start_2
    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 333
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Received %d bytes from service."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-lez v2, :cond_0

    .line 337
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handleResponse([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 350
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->cleanUp()V

    .line 351
    iput-object v10, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    .line 355
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 307
    :cond_1
    :try_start_3
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "Socket output stream null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->cleanUp()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 311
    :catch_1
    move-exception v0

    .line 312
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v4, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 316
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->cleanUp()V

    .line 317
    iput-object v10, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    goto :goto_2

    .line 325
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->bReady:Z

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 342
    :cond_3
    :try_start_5
    const-string v4, "ModemStatusManagerJavaLib"

    const-string v5, "inputStream is null."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V
    .locals 8
    .param p1, "args"    # Lcom/intel/internal/telephony/ModemRequestArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/intel/internal/telephony/ModemRequestArgs;->getFrame()[B

    move-result-object v0

    .line 530
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 531
    const/4 v2, 0x0

    .line 533
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_2

    .line 534
    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 535
    if-eqz v2, :cond_1

    .line 536
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "%s sent successfully"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/intel/internal/telephony/ModemRequestArgs;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v0    # "data":[B
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    return-void

    .line 538
    .restart local v0    # "data":[B
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Could not write to MMGR socket: outputStream is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v3, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v4, "Could not write to MMGR socket: outputStream is null."

    invoke-direct {v3, v4}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v4, "Could not write to MMGR socket."

    invoke-direct {v3, v4, v1}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 544
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Could not write to MMGR socket: clientSocket is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v3, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v4, "Could not write to MMGR socket: clientSocket is null."

    invoke-direct {v3, v4}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public setModemStatusHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public shutdownModem()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemShutdownRequest;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemShutdownRequest;-><init>()V

    .line 632
    .local v0, "request":Lcom/intel/internal/telephony/mmgr/requests/MmgrModemShutdownRequest;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 634
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "ShutdownModem request failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Starting client..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Client already started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-boolean v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stopRequested:Z

    .line 133
    :try_start_0
    invoke-direct {p0, p2}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectSocket(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/intel/internal/telephony/MmgrClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    iput-boolean v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->bReady:Z

    .line 145
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    .line 146
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMGR Client for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 150
    :try_start_1
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->syncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :try_start_2
    iget-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->bReady:Z

    if-nez v1, :cond_1

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->bReady:Z

    .line 154
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->syncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 156
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    new-instance v1, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;

    invoke-direct {v1, p1}, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterNameRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 164
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stop()V

    .line 166
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "MMGR name subscribtion failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Lcom/intel/internal/telephony/MmgrClientException;
    const-string v1, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Lcom/intel/internal/telephony/MmgrClientException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->cleanUp()V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    .line 141
    throw v0

    .line 156
    .end local v0    # "ex":Lcom/intel/internal/telephony/MmgrClientException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stop()V

    .line 159
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "MMGR name subscribtion failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v1, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;

    iget v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->subscribedEvents:I

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/mmgr/requests/MmgrRegisterEventsRequest;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 171
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stop()V

    .line 173
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "MMGR events subscribtion failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_3
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Client ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Stopping client..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->stopRequested:Z

    .line 512
    invoke-virtual {p0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->cleanUp()V

    .line 513
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->clientSocket:Landroid/net/LocalSocket;

    .line 522
    const-string v1, "ModemStatusManagerJavaLib"

    const-string v2, "Client stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public subscribeTo(Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)V
    .locals 5
    .param p1, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p2, "notifications"    # Lcom/intel/internal/telephony/ModemNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 496
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Connecting to service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v1, "subscribeTo must be called before start."

    invoke-direct {v0, v1}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    invoke-static {p1, p2}, Lcom/intel/internal/telephony/mmgr/MmgrHelper;->getEventFrom(Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->subscribedEvents:I

    .line 504
    const-string v0, "ModemStatusManagerJavaLib"

    const-string v1, "Subscribed events: %x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->subscribedEvents:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method

.method public useModem()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemLockRequest;

    invoke-direct {v0}, Lcom/intel/internal/telephony/mmgr/requests/MmgrModemLockRequest;-><init>()V

    .line 588
    .local v0, "request":Lcom/intel/internal/telephony/mmgr/requests/MmgrModemLockRequest;
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V

    .line 590
    iget v1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->connectTimeoutMs:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitForAck(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    new-instance v1, Lcom/intel/internal/telephony/MmgrClientException;

    const-string v2, "AcquireModem request failed."

    invoke-direct {v1, v2}, Lcom/intel/internal/telephony/MmgrClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_0
    return-void
.end method

.method public waitForStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z
    .locals 4
    .param p1, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p2, "timeout"    # J

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 234
    iput-object p1, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->waitedStatus:Lcom/intel/internal/telephony/ModemStatus;

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->currentStatus:Lcom/intel/internal/telephony/ModemStatus;

    if-eq p1, v2, :cond_1

    .line 238
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "Waiting for status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusSignal:Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p2, p3, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "Status signaled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    :goto_1
    return v1

    .line 243
    :cond_0
    :try_start_1
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "Status timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    iget-object v2, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 246
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x1

    .line 247
    :try_start_3
    const-string v2, "ModemStatusManagerJavaLib"

    const-string v3, "Status already signaled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/intel/internal/telephony/mmgr/MedfieldMmgrClient;->statusLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
