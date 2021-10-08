.class public Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.super Ljava/lang/Object;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;
    }
.end annotation


# static fields
.field private static final ASYNC_PARAM:Ljava/lang/String; = "async"

.field private static final CLIENT_TAG:Ljava/lang/String; = "Client"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/system/vendor/etc/CsmConfig.xml"

.field private static final CONFIG_TAG:Ljava/lang/String; = "CsmConfig"

.field public static final CSM_CLIENT_BIND:I = 0x1

.field public static final CSM_CLIENT_BIND_AND_START:I = 0x2

.field private static final CSM_CLIENT_MODEM_DEAD:B = 0x4t

.field private static final CSM_CLIENT_MODEM_DOWN:B = 0x2t

.field private static final CSM_CLIENT_MODEM_UP:B = 0x1t

.field private static final CSM_CLIENT_MSG_ON_BIND:I = 0x1

.field private static final CSM_CLIENT_MSG_RESTART:I = 0x2

.field public static final CSM_CLIENT_NO_ACTION:I = 0x0

.field private static final CSM_CLIENT_NO_MODEM:B = 0x8t

.field protected static final CSM_CLIENT_NO_TIMEOUT:I = 0x0

.field public static final CSM_CLIENT_REBIND:Z = true

.field public static final CSM_CLIENT_STOP_NO_UNBIND:I = 0x0

.field public static final CSM_CLIENT_STOP_REBIND:I = 0x1

.field public static final CSM_CLIENT_STOP_UNBIND:I = 0x2

.field public static final CSM_CLIENT_UNBIND:Z = false

.field protected static final CSM_ID_BT:B = 0x4t

.field protected static final CSM_ID_GPS:B = 0x2t

.field protected static final CSM_ID_NFC:B = 0x8t

.field protected static final CSM_ID_WIFI:B = 0x1t

.field protected static final CSM_ID_WIFI_OFFLOAD:B = 0x20t

.field private static final DEBUG:Z

.field private static final MODULE_TAG:Ljava/lang/String; = "Module"

.field private static final NO_UNBIND_PARAM:Ljava/lang/String; = "no_unbind"

.field private static final REBIND_PARAM:Ljava/lang/String; = "rebind"

.field private static final START_TAG:Ljava/lang/String; = "Start"

.field private static final STOP_TAG:Ljava/lang/String; = "Stop"

.field private static final SYNC_PARAM:Ljava/lang/String; = "sync"

.field private static final TAG:Ljava/lang/String; = "CsmClient"

.field private static final TIMEOUT_TAG:Ljava/lang/String; = "Timeout_ms"

.field private static final UNBIND_PARAM:Ljava/lang/String; = "unbind"


# instance fields
.field mClientId:Ljava/lang/Byte;

.field mContext:Landroid/content/Context;

.field protected mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

.field protected mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mIsLockRequested:Z

.field private mIsPlatformShuttingDown:Z

.field private mIsStartSync:Z

.field private final mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

.field private mModemStatus:B

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mStopMode:I

.field private mTimeout:I

.field private waitOnModemUp:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "CsmClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ClientId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BI)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;BI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ClientId"    # B
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BII)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;BII)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ClientId"    # B
    .param p3, "start"    # I
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    .line 90
    iput-boolean v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    .line 91
    iput-boolean v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    .line 92
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v9, v7}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->waitOnModemUp:Ljava/util/concurrent/Semaphore;

    .line 99
    const/4 v6, 0x2

    iput-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    .line 126
    iput-boolean v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    .line 127
    const v6, 0xea60

    iput v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    .line 128
    iput v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    .line 132
    iput-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;

    invoke-direct {v6, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 573
    new-instance v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;

    invoke-direct {v6, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

    .line 274
    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, p2}, Ljava/lang/Byte;-><init>(B)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    .line 276
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    .line 279
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/system/vendor/etc/CsmConfig.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 282
    .local v4, "stream":Ljava/io/FileInputStream;
    new-instance v5, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;)V

    .line 283
    .local v5, "xmlParser":Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;
    invoke-virtual {v5, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->parse(Ljava/io/InputStream;)V

    .line 284
    sget-boolean v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] mIsStartSync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    sget-boolean v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] mTimeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    sget-boolean v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] mStopMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .end local v5    # "xmlParser":Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;
    :cond_2
    :goto_0
    new-instance v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;

    invoke-direct {v6, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mHandler:Landroid/os/Handler;

    .line 333
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, "shutdownIntentFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 340
    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] There is no CSM. Re-initialising mModemStatus."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v6, 0x8

    iput-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    .line 351
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 361
    new-instance v6, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v7, "Unsupported value for start in CsmClient."

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 287
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "shutdownIntentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Configuration Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 353
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "shutdownIntentFilter":Landroid/content/IntentFilter;
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->start(I)Z

    .line 365
    :goto_1
    :pswitch_1
    return-void

    .line 356
    :pswitch_2
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    goto :goto_1

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)B
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    .prologue
    .line 68
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    return v0
.end method

.method static synthetic access$1002(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;B)B
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # B

    .prologue
    .line 68
    iput-byte p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    return p1
.end method

.method static synthetic access$102(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->waitOnModemUp:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    return p1
.end method

.method static synthetic access$302(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    return p1
.end method

.method static synthetic access$402(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    return v0
.end method

.method static synthetic access$700(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    return v0
.end method

.method static synthetic access$702(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    return p1
.end method

.method static synthetic access$800(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientStop(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    return-void
.end method

.method private csmClientBind()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 457
    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    .line 458
    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmClientBind called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "cws_service_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    .line 462
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v0, :cond_0

    .line 463
    const-string v0, "CsmClient"

    const-string v1, "mCwsServiceMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 465
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CsmClient"

    const-string v1, "mCwsServiceMgr is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_1
    iput-boolean v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    .line 469
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 472
    :cond_2
    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmClientBind called while there is no modem."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private csmClientStop(I)V
    .locals 5
    .param p1, "unbind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 501
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] csmStop called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-boolean v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    if-eqz v1, :cond_2

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v1, :cond_1

    .line 506
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCwsServiceMgr is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "null mCwsServiceMgr"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] csmStop failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-ge p1, v4, :cond_0

    .line 514
    const/4 p1, 0x1

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 527
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "Unsupported value for csmClientStop."

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 509
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-interface {v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmStop(B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 519
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    .line 531
    :cond_2
    :goto_1
    :pswitch_1
    return-void

    .line 522
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    goto :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private csmClientUnbind(Z)V
    .locals 5
    .param p1, "auto_bind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v1, :cond_1

    .line 482
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCwsServiceMgr is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "null mCwsServiceMgr"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] csmUnregisterCallback failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    .line 493
    iput-boolean v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    .line 494
    iget-boolean v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    .line 497
    :cond_0
    return-void

    .line 485
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

    invoke-interface {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmUnregisterCallback(ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private start(I)Z
    .locals 9
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 394
    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 395
    const-string v2, "CsmClient"

    const-string v3, "Calling start while there is no modem."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "No modem."

    invoke-direct {v2, v3, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 400
    :cond_0
    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 401
    const-string v2, "CsmClient"

    const-string v3, "Calling start while modem is DEAD."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Modem is dead."

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 405
    :cond_1
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Start called."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-boolean v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    if-nez v2, :cond_6

    .line 409
    iput-boolean v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    .line 410
    iget-boolean v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    if-nez v2, :cond_4

    .line 411
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    .line 428
    :cond_2
    :goto_0
    if-lez p1, :cond_8

    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8

    .line 430
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 432
    .local v1, "iTimeout":Ljava/lang/Integer;
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->waitOnModemUp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 433
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    .line 434
    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Modem lock failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    .line 436
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Modem lock failed."

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Unable to wait on semaphore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, v8}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    .line 442
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    .line 443
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Unable to wait on semaphore."

    invoke-direct {v2, v3, v6}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 415
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "iTimeout":Ljava/lang/Integer;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v2, :cond_5

    .line 416
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCwsServiceMgr is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "null mCwsServiceMgr"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] csmStart failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call csmStart."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-interface {v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmStart(B)V

    .line 420
    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] csmStart called."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 448
    :cond_6
    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start called during platform shutdown."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_7
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Shutdown ongoing"

    invoke-direct {v2, v3, v6}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 452
    :cond_8
    return v7
.end method


# virtual methods
.method public atSendCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "Cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v2, :cond_0

    .line 556
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCwsServiceMgr is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "null mCwsServiceMgr"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] atSendCmd failed. Restarting CsmClient."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 559
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    invoke-interface {v2, p1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->atSendCmd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0
.end method

.method public csmActivateSimStatusReceiver()V
    .locals 4

    .prologue
    .line 651
    sget-boolean v1, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Activating SIM status receiver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    new-instance v1, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 684
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "simIntentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 688
    return-void
.end method

.method protected csmAddCallbacks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v1, :cond_0

    .line 632
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCwsServiceMgr is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "null mCwsServiceMgr"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Registering callback failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 635
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

    invoke-interface {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmRegisterCallback(ILandroid/os/IBinder;)V

    .line 636
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Callbacks registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public csmClientModemAvailable()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public csmClientModemUnavailable()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public csmStartModem()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    if-eqz v0, :cond_1

    .line 377
    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmStartModem - Sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->start(I)Z

    move-result v0

    .line 381
    :goto_0
    return v0

    .line 380
    :cond_1
    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmStartModem - Async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->start(I)Z

    move-result v0

    goto :goto_0
.end method

.method public csmStop()V
    .locals 4

    .prologue
    .line 540
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    .line 542
    :try_start_0
    iget v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    invoke-direct {p0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientStop(I)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Unexpected exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    return-object v0
.end method

.method public getService()Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    return-object v0
.end method

.method public onSimAbsent()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public onSimLoaded()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method
