.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 362
    :goto_0
    :pswitch_0
    return-void

    .line 241
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAdapterAttached()V
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V

    goto :goto_0

    .line 245
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v2, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_0

    .line 248
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 250
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 252
    .local v3, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 253
    .local v4, "id":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 254
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v6, 0x1

    .line 255
    .local v6, "isIncoming":Z
    :goto_1
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v7, 0x1

    .line 256
    .local v7, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    const-string v1, "Enqueueing pre-init request %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v2, v15

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v15

    new-instance v1, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_3
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 254
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 255
    .restart local v6    # "isIncoming":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 270
    .restart local v7    # "isUnknown":Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    invoke-static/range {v2 .. v7}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 278
    .end local v3    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "isIncoming":Z
    .end local v7    # "isUnknown":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 283
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 291
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 292
    .local v10, "callId":Ljava/lang/String;
    iget v14, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 293
    .local v14, "videoState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V
    invoke-static {v1, v10, v14}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v10    # "callId":Ljava/lang/String;
    .end local v14    # "videoState":I
    :catchall_1
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 300
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 314
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 315
    .restart local v10    # "callId":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/AudioState;

    .line 316
    .local v9, "audioState":Landroid/telecom/AudioState;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    invoke-static {v1, v10, v9}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 318
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v9    # "audioState":Landroid/telecom/AudioState;
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_2
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 323
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    int-to-char v15, v15

    # invokes: Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    invoke-static {v2, v1, v15}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 326
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 331
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 332
    .local v11, "callId1":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 333
    .local v12, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v11, v12}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 335
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v11    # "callId1":Ljava/lang/String;
    .end local v12    # "callId2":Ljava/lang/String;
    :catchall_3
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 340
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V
    invoke-static {v2, v1}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 351
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 352
    .restart local v10    # "callId":Ljava/lang/String;
    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v13, 0x1

    .line 353
    .local v13, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    invoke-static {v1, v10, v13}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 355
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 352
    .end local v13    # "proceed":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_4

    .line 355
    .end local v10    # "callId":Ljava/lang/String;
    :catchall_4
    move-exception v1

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
