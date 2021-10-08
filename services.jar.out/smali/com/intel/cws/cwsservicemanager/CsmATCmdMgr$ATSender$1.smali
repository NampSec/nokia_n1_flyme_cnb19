.class Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;
.super Ljava/lang/Object;
.source "CsmATCmdMgr.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    iput-object p2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR-ATMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Threaded ATSendCmd send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;->val$cmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const-string v1, "ERROR"

    .line 145
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;->this$1:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    iget-object v2, v2, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$000(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;->val$cmd:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->sendAtCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR-ATMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Threaded ATSendCmd response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CWS_SERVICE_MGR-ATMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATSendCmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
