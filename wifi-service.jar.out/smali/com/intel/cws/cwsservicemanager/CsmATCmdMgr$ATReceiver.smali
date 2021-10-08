.class public Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;
.super Landroid/os/Handler;
.source "CsmATCmdMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ATReceiver"
.end annotation


# instance fields
.field private modemFilter:Landroid/content/IntentFilter;

.field private final modemURCReceiver:Landroid/content/BroadcastReceiver;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 176
    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->modemFilter:Landroid/content/IntentFilter;

    .line 192
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver$1;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->modemURCReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-ATMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATReceiver constructor, context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intel.intent.action.ACTION_COEX_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->modemFilter:Landroid/content/IntentFilter;

    .line 182
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->modemURCReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->modemFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getResponse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-ATMgr"

    const-string v1, "ATReceiver getResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 188
    const-string v0, "ERROR"

    .line 189
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;

    goto :goto_0
.end method
