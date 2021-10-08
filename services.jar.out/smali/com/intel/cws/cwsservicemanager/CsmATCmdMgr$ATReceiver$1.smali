.class Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CsmATCmdMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR-ATMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATReceiver BroadcastReceiver got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    const-string v0, "intel.intent.action.ACTION_COEX_INFO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;

    const-string v1, "CoexInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->access$202(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR-ATMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATReceiver got : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->response:Ljava/lang/String;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;->access$200(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATReceiver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    return-void
.end method
