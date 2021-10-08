.class Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;
.super Landroid/os/AsyncTask;
.source "ModemStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/ModemStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncOperationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_ACQUIRE_MODEM:I = 0x1

.field public static final OPERATION_CONNECT:I = 0x5

.field public static final OPERATION_DISCONNECT:I = 0x6

.field public static final OPERATION_RECOVER_MODEM:I = 0x4

.field public static final OPERATION_RELEASE_MODEM:I = 0x2

.field public static final OPERATION_RESTART_MODEM:I = 0x3

.field public static final OPERATION_SHUTDOWN_MODEM:I = 0x7


# instance fields
.field private causes:[Ljava/lang/String;

.field private listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

.field private requiredOperation:I

.field final synthetic this$0:Lcom/intel/internal/telephony/ModemStatusManager;


# direct methods
.method public constructor <init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2
    .param p2, "requiredOperation"    # I
    .param p3, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .prologue
    const/4 v1, 0x0

    .line 480
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 467
    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->requiredOperation:I

    .line 469
    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->causes:[Ljava/lang/String;

    .line 481
    iput-object p3, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .line 482
    iput p2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->requiredOperation:I

    .line 483
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V
    .locals 2
    .param p2, "requiredOperation"    # I
    .param p3, "listener"    # Lcom/intel/internal/telephony/AsyncOperationResultListener;
    .param p4, "causes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 487
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 467
    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->requiredOperation:I

    .line 469
    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->causes:[Ljava/lang/String;

    .line 488
    iput-object p3, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    .line 489
    iput p2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->requiredOperation:I

    .line 490
    iput-object p4, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->causes:[Ljava/lang/String;

    .line 491
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 498
    .local v1, "ret":Ljava/lang/Exception;
    :try_start_0
    iget v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->requiredOperation:I

    packed-switch v2, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-object v1

    .line 500
    :pswitch_0
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->acquireModem()V

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/Exception;
    move-object v1, v0

    goto :goto_0

    .line 503
    .end local v0    # "ex":Ljava/lang/Exception;
    :pswitch_1
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->releaseModem()V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->restartModem()V

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    iget-object v3, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->causes:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/intel/internal/telephony/ModemStatusManager;->recoverModem([Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :pswitch_4
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 513
    iget-object v3, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/intel/internal/telephony/ModemStatusManager;->connect(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_5
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->disconnect()V

    goto :goto_0

    .line 520
    :pswitch_6
    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->this$0:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->shutdowModem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Exception;

    .prologue
    .line 531
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    if-eqz v0, :cond_0

    .line 533
    if-eqz p1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    invoke-interface {v0, p1}, Lcom/intel/internal/telephony/AsyncOperationResultListener;->onOperationError(Ljava/lang/Exception;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->listener:Lcom/intel/internal/telephony/AsyncOperationResultListener;

    invoke-interface {v0}, Lcom/intel/internal/telephony/AsyncOperationResultListener;->onOperationComplete()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 466
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
