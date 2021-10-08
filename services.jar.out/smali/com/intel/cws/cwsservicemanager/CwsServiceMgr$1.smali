.class Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "CwsServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "receivedIntent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexEnabled:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$000()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 149
    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CsmCoex is enabled ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexState:Ljava/lang/String;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$400(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    move-result-object v2

    # setter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$302(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    .line 152
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmCoexMgr:Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$300(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmCoexMgr;

    move-result-object v1

    if-nez v1, :cond_1

    .line 153
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmCoexcMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    const/4 v2, -0x5

    # setter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I
    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$502(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;I)I

    .line 161
    :cond_1
    :goto_0
    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Boot Completed - Broadcasting pending intents"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastPendingIntents()V

    .line 164
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$400(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v2

    # setter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$602(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    .line 165
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V

    # setter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;
    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$702(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    .line 169
    :cond_3
    return-void

    .line 157
    :cond_4
    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CsmCoex is disabled ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCoexState:Ljava/lang/String;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or already instanciated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
