.class public Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;
.super Ljava/lang/Object;
.source "MedfieldStmdClient.java"

# interfaces
.implements Lcom/intel/internal/telephony/ModemStatusMonitor;
.implements Ljava/lang/Runnable;


# static fields
.field private static final MODEM_COLD_RESET:B = 0x4t

.field private static final MODEM_DOWN:B = 0x0t

.field private static final MODEM_UP:B = 0x1t

.field private static final PLATFORM_SHUTDOWN:B = 0x2t


# instance fields
.field protected clientSocket:Landroid/net/LocalSocket;

.field protected connectTimeoutMs:I

.field protected handler:Landroid/os/Handler;

.field protected volatile stopRequested:Z

.field protected thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    const/16 v0, 0xfa0

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;-><init>(Landroid/os/Handler;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "connectTimeoutMs"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    .line 45
    iput-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handler:Landroid/os/Handler;

    .line 46
    iput-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->thread:Ljava/lang/Thread;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->stopRequested:Z

    .line 48
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->connectTimeoutMs:I

    .line 55
    iput p2, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->connectTimeoutMs:I

    .line 56
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->setModemStatusHandler(Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method private handleResponse([BI)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .prologue
    .line 126
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->NONE:Lcom/intel/internal/telephony/ModemNotification;

    .line 127
    .local v1, "notification":Lcom/intel/internal/telephony/ModemNotification;
    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    .line 129
    .local v2, "status":Lcom/intel/internal/telephony/ModemStatus;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 130
    aget-byte v3, p1, v0

    packed-switch v3, :pswitch_data_0

    .line 152
    :pswitch_0
    const-string v3, "ModemStatusManagerJavaLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown data :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    sget-object v3, Lcom/intel/internal/telephony/ModemStatus;->NONE:Lcom/intel/internal/telephony/ModemStatus;

    if-eq v2, v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 158
    :cond_0
    sget-object v3, Lcom/intel/internal/telephony/ModemNotification;->NONE:Lcom/intel/internal/telephony/ModemNotification;

    if-eq v1, v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Modem status = MODEM_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->DOWN:Lcom/intel/internal/telephony/ModemStatus;

    .line 134
    goto :goto_1

    .line 136
    :pswitch_2
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Modem status = MODEM_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->UP:Lcom/intel/internal/telephony/ModemStatus;

    .line 138
    goto :goto_1

    .line 141
    :pswitch_3
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Modem notification = MODEM_COLD_RESET"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->COLD_RESET:Lcom/intel/internal/telephony/ModemNotification;

    .line 144
    goto :goto_1

    .line 147
    :pswitch_4
    const-string v3, "ModemStatusManagerJavaLib"

    const-string v4, "Modem notification = PLATFORM_SHUTDOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v1, Lcom/intel/internal/telephony/ModemNotification;->PLATFORM_REBOOT:Lcom/intel/internal/telephony/ModemNotification;

    .line 150
    goto :goto_1

    .line 163
    :cond_2
    return-void

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public buildNotificationArgs()Lcom/intel/internal/telephony/ModemNotificationArgs;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/intel/internal/telephony/ModemNotificationArgs;

    invoke-direct {v0}, Lcom/intel/internal/telephony/ModemNotificationArgs;-><init>()V

    return-object v0
.end method

.method protected cleanUp()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 169
    iget-object v1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    .line 175
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "modem-status"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public recoverModem([Ljava/lang/String;)V
    .locals 2
    .param p1, "causes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseModem()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by STMD"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replyToNotification(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .locals 2
    .param p1, "args"    # Lcom/intel/internal/telephony/ModemNotificationArgs;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by STMD"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restartModem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 92
    const/16 v4, 0x400

    new-array v3, v4, [B

    .line 94
    .local v3, "recvBuffer":[B
    const/4 v1, 0x0

    .line 95
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 98
    .local v2, "readCount":I
    :try_start_0
    iget-object v4, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {p0}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->getSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 99
    iget-object v4, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 109
    :goto_0
    iget-boolean v4, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->stopRequested:Z

    if-nez v4, :cond_0

    .line 111
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 113
    invoke-direct {p0, v3, v2}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handleResponse([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 119
    invoke-virtual {p0}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->cleanUp()V

    .line 123
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 105
    invoke-virtual {p0}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->cleanUp()V

    goto :goto_1
.end method

.method public sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V
    .locals 2
    .param p1, "args"    # Lcom/intel/internal/telephony/ModemRequestArgs;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModemStatusHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->handler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method public shutdownModem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "clientName"    # Ljava/lang/String;
    .param p2, "socketName"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->stopRequested:Z

    .line 67
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->clientSocket:Landroid/net/LocalSocket;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->thread:Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->thread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STMD Client for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->stopRequested:Z

    .line 76
    invoke-virtual {p0}, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->cleanUp()V

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/stmd/MedfieldStmdClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "ModemStatusManagerJavaLib"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public subscribeTo(Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)V
    .locals 2
    .param p1, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p2, "notifications"    # Lcom/intel/internal/telephony/ModemNotification;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by STMD"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useModem()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by STMD"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z
    .locals 2
    .param p1, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
