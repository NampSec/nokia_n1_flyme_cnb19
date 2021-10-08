.class Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;
.super Landroid/os/Handler;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmAddCallbacks()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v2, v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v2, :cond_1

    .line 301
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] null mCwsServiceMgr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    const/4 v3, 0x1

    # setter for: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z
    invoke-static {v2, v3}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$702(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    :try_end_2
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "csmEx":Lcom/intel/cws/cwsservicemanager/CsmException;
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] handleMessage CsmException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "csmEx":Lcom/intel/cws/cwsservicemanager/CsmException;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    # getter for: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$600(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v2, v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v3, v3, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-interface {v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmStart(B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 305
    :catch_1
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] csmStart failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_1
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Establishing CSM connexion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    # getter for: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$700(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientModemUnavailable()V

    .line 316
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    const/4 v3, 0x1

    # invokes: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientStop(I)V
    invoke-static {v2, v3}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$800(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)V

    goto/16 :goto_0

    .line 318
    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    # getter for: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$600(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmStartModem()Z

    goto/16 :goto_0

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    # invokes: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$900(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V
    :try_end_4
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
