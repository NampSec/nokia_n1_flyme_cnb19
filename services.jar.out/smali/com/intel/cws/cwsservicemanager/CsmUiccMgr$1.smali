.class Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "CsmUiccMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "receivedIntent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimStatusReceiver - action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mSimStatusReceiver - wrong action received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "currentSimState":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 132
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mSimStatusReceiver - not possible to get the string"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_3
    # getter for: Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSimStatusReceiver-currentSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    const-string v3, "LOADED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    # invokes: Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkIfUsim()V
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->access$100(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ex":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mSimStatusReceiver - error checking SIM type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
