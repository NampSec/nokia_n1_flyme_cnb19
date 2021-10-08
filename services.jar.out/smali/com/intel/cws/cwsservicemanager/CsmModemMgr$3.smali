.class Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;
.super Landroid/os/Handler;
.source "CsmModemMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 290
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mConnectFailureHandler - sending intent with delay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "Modem Manager Connect Failure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 296
    :cond_1
    return-void
.end method
