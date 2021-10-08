.class public Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;
.super Ljava/lang/Object;
.source "CsmATCmdMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;


# direct methods
.method public constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public SendCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v4, "ERROR"

    .line 123
    .local v4, "response":Ljava/lang/String;
    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 125
    .local v2, "TIMEOUT":Ljava/lang/Long;
    iget-object v8, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$000(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v8

    if-nez v8, :cond_1

    .line 126
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    const-string v9, "ATSendCmd OemPhoneService handle is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v4

    .line 165
    .end local v4    # "response":Ljava/lang/String;
    .local v5, "response":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 130
    .end local v5    # "response":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    .line 131
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    const-string v9, "ATSendCmd is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v5, v4

    .line 132
    .end local v4    # "response":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v5    # "response":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    const/4 v6, 0x0

    .line 139
    .local v6, "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v8, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;

    invoke-direct {v8, p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 154
    .end local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .local v7, "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :try_start_1
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 155
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    .line 163
    .end local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :goto_1
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATSendCmd get modem response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v5, v4

    .line 165
    .end local v4    # "response":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v5    # "response":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/InterruptedException;
    :goto_2
    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interruption while ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 159
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :goto_3
    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execution exception while ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v3

    .line 161
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    :goto_4
    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout while ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    goto :goto_4

    .line 158
    .end local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    goto :goto_3

    .line 156
    .end local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v6    # "timeoutTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    goto :goto_2
.end method
