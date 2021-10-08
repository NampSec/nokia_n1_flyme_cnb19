.class public interface abstract Lcom/intel/internal/telephony/ModemStatusMonitor;
.super Ljava/lang/Object;
.source "ModemStatusMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final MSG_ERROR:I = 0x1

.field public static final MSG_NOTIFICATION:I = 0x3

.field public static final MSG_NOTIFICATION_FEEDBACK:I = 0x1

.field public static final MSG_REQUEST:I = 0x2

.field public static final MSG_STATUS:I = 0x2


# virtual methods
.method public abstract buildNotificationArgs()Lcom/intel/internal/telephony/ModemNotificationArgs;
.end method

.method public abstract handleMessage(Landroid/os/Message;)Z
.end method

.method public abstract recoverModem([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract releaseModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract replyToNotification(Lcom/intel/internal/telephony/ModemNotificationArgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract restartModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/intel/internal/telephony/ModemRequestArgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract setModemStatusHandler(Landroid/os/Handler;)V
.end method

.method public abstract shutdownModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract start(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract subscribeTo(Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract useModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method

.method public abstract waitForStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/MmgrClientException;
        }
    .end annotation
.end method
