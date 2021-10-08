.class public Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
.super Ljava/lang/Object;
.source "CsmATCmdMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATParser;,
        Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;,
        Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final MAX_GETSERVICE_RETRIES:I = 0x5

.field static final MODEM_CMD_FAILURE:Ljava/lang/String; = "ERROR"

.field static final SLEEP_ONE_SEC:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR-ATMgr"

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;


# instance fields
.field private mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

.field private myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "CWS_SERVICE_MGR-ATMgr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 61
    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->myContext:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->myContext:Landroid/content/Context;

    .line 70
    const-string v2, "oemtelephony"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 71
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v2, :cond_1

    .line 79
    const/4 v1, 0x5

    .local v1, "maxRetries":I
    :goto_0
    if-lez v1, :cond_0

    .line 80
    const-string v2, "oemtelephony"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    .line 81
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-eqz v2, :cond_2

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v2, :cond_1

    .line 92
    const-string v2, "CWS_SERVICE_MGR-ATMgr"

    const-string v3, "Failed to acquire IOemTelephony interface handle\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1    # "maxRetries":I
    :cond_1
    return-void

    .line 83
    .restart local v1    # "maxRetries":I
    :cond_2
    :try_start_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR-ATMgr"

    const-string v3, "Telephony service not ready, sleeping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CWS_SERVICE_MGR-ATMgr"

    const-string v3, "Interrupted exception was thrown, restoring interrupt\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .line 106
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .line 106
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    goto :goto_0
.end method
