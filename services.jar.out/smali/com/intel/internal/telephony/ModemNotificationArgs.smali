.class public Lcom/intel/internal/telephony/ModemNotificationArgs;
.super Ljava/lang/Object;
.source "ModemNotificationArgs.java"


# instance fields
.field private acknowledge:Z

.field private notification:Lcom/intel/internal/telephony/ModemNotification;

.field private sender:Lcom/intel/internal/telephony/ModemStatusManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->sender:Lcom/intel/internal/telephony/ModemStatusManager;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->acknowledge:Z

    return-void
.end method


# virtual methods
.method public getNotification()Lcom/intel/internal/telephony/ModemNotification;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->notification:Lcom/intel/internal/telephony/ModemNotification;

    return-object v0
.end method

.method public getSender()Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->sender:Lcom/intel/internal/telephony/ModemStatusManager;

    return-object v0
.end method

.method public isAcknowledge()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->acknowledge:Z

    return v0
.end method

.method public setAcknowledge(Z)V
    .locals 0
    .param p1, "acknowledge"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->acknowledge:Z

    .line 48
    return-void
.end method

.method public setNotification(Lcom/intel/internal/telephony/ModemNotification;)V
    .locals 0
    .param p1, "notification"    # Lcom/intel/internal/telephony/ModemNotification;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->notification:Lcom/intel/internal/telephony/ModemNotification;

    .line 40
    return-void
.end method

.method public setSender(Lcom/intel/internal/telephony/ModemStatusManager;)V
    .locals 0
    .param p1, "sender"    # Lcom/intel/internal/telephony/ModemStatusManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemNotificationArgs;->sender:Lcom/intel/internal/telephony/ModemStatusManager;

    .line 32
    return-void
.end method
