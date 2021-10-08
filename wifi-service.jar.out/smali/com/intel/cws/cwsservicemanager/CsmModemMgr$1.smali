.class Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 189
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "receivedIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Modem Manager Connect Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "modemManagerConnectSuccessReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    # setter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$102(I)I

    .line 197
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->acquireAsync()V
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    const-string v1, "Modem Manager Connect Failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    # operator++ for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$108()I

    .line 200
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modemManagerConnectFailureReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_3
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$100()I

    move-result v1

    if-le v5, v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->connectAsync()V
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$300(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    goto :goto_0

    .line 206
    :cond_4
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "connectAsync - retries exceed the failure limit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z
    invoke-static {v1, v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$402(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;Z)Z

    goto :goto_0

    .line 209
    :cond_5
    const-string v1, "Modem Manager Acquire Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 210
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "modemManagerAcquireSuccessReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_6
    # setter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$502(I)I

    goto :goto_0

    .line 212
    :cond_7
    const-string v1, "Modem Manager Acquire Failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    # operator++ for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$508()I

    .line 214
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modemManagerAcquireFailureReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_8
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$500()I

    move-result v1

    if-le v5, v1, :cond_9

    .line 217
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->acquireAsync()V
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    goto/16 :goto_0

    .line 220
    :cond_9
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "acquireAsync - retries exceed the failure limit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # setter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z
    invoke-static {v1, v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$402(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;Z)Z

    goto/16 :goto_0
.end method
