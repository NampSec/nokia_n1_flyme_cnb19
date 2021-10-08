.class Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;
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
.field i:I

.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x10

    .line 234
    if-eqz p1, :cond_2

    .line 236
    iget v2, p1, Landroid/os/Message;->what:I

    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 238
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 239
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 257
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 258
    .local v0, "N":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    :goto_1
    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    if-ge v2, v0, :cond_1

    .line 260
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1

    .line 274
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_2
    iget v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    goto :goto_1

    .line 247
    .end local v0    # "N":I
    :pswitch_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2, v4}, Lcom/intel/cws/cwsservicemanager/CsmContext;->removeConnection(B)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2, v4}, Lcom/intel/cws/cwsservicemanager/CsmContext;->addConnection(B)V

    goto :goto_0

    .line 268
    .restart local v0    # "N":I
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;->mmgrClbkModemUnavailable(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    iget v4, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 278
    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during handleMessage with msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_3
    :try_start_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    iget v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->i:I

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    invoke-interface {v2}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;->mmgrClbkModemAvailable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    # getter for: Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 284
    .end local v0    # "N":I
    :cond_2
    return-void

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
