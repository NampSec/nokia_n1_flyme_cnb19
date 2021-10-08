.class Lcom/android/server/pm/PackageManagerService$InstallHistory$1;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$InstallHistory;->writePackageHistory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallHistory;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;

    # invokes: Lcom/android/server/pm/PackageManagerService$InstallHistory;->writeInstallHistory()V
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->access$200(Lcom/android/server/pm/PackageManagerService$InstallHistory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;

    # getter for: Lcom/android/server/pm/PackageManagerService$InstallHistory;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->access$400(Lcom/android/server/pm/PackageManagerService$InstallHistory;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 605
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;

    # getter for: Lcom/android/server/pm/PackageManagerService$InstallHistory;->INSTALL_HISTORY_CLASS_NAME:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->access$300(Lcom/android/server/pm/PackageManagerService$InstallHistory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": write to file failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;

    # getter for: Lcom/android/server/pm/PackageManagerService$InstallHistory;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->access$400(Lcom/android/server/pm/PackageManagerService$InstallHistory;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallHistory$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallHistory;

    # getter for: Lcom/android/server/pm/PackageManagerService$InstallHistory;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService$InstallHistory;->access$400(Lcom/android/server/pm/PackageManagerService$InstallHistory;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
