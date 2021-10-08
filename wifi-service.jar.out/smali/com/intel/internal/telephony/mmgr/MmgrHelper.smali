.class public Lcom/intel/internal/telephony/mmgr/MmgrHelper;
.super Ljava/lang/Object;
.source "MmgrHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEventFrom(Lcom/intel/internal/telephony/ModemNotification;)I
    .locals 3
    .param p0, "notification"    # Lcom/intel/internal/telephony/ModemNotification;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->COLD_RESET:Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 49
    or-int/lit8 v0, v0, 0x10

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->CORE_DUMP:Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 52
    or-int/lit16 v0, v0, 0x100

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->SHUTDOWN:Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 55
    or-int/lit8 v0, v0, 0x20

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->PLATFORM_REBOOT:Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 59
    or-int/lit8 v0, v0, 0x40

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemNotification;->STARTING:Lcom/intel/internal/telephony/ModemNotification;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemNotification;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 63
    or-int/lit16 v0, v0, 0x80

    .line 66
    :cond_4
    or-int/lit16 v0, v0, 0x200

    .line 67
    or-int/lit16 v0, v0, 0x400

    .line 68
    return v0
.end method

.method private static getEventFrom(Lcom/intel/internal/telephony/ModemStatus;)I
    .locals 3
    .param p0, "status"    # Lcom/intel/internal/telephony/ModemStatus;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemStatus;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->UP:Lcom/intel/internal/telephony/ModemStatus;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatus;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 34
    or-int/lit8 v0, v0, 0x2

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemStatus;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->DOWN:Lcom/intel/internal/telephony/ModemStatus;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatus;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 37
    or-int/lit8 v0, v0, 0x1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/intel/internal/telephony/ModemStatus;->getValue()I

    move-result v1

    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->DEAD:Lcom/intel/internal/telephony/ModemStatus;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatus;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 40
    or-int/lit8 v0, v0, 0x8

    .line 42
    :cond_2
    return v0
.end method

.method public static getEventFrom(Lcom/intel/internal/telephony/ModemStatus;Lcom/intel/internal/telephony/ModemNotification;)I
    .locals 2
    .param p0, "status"    # Lcom/intel/internal/telephony/ModemStatus;
    .param p1, "notifications"    # Lcom/intel/internal/telephony/ModemNotification;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/intel/internal/telephony/mmgr/MmgrHelper;->getEventFrom(Lcom/intel/internal/telephony/ModemNotification;)I

    move-result v0

    invoke-static {p0}, Lcom/intel/internal/telephony/mmgr/MmgrHelper;->getEventFrom(Lcom/intel/internal/telephony/ModemStatus;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
