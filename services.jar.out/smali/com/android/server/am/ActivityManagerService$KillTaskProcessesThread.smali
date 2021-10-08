.class Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KillTaskProcessesThread"
.end annotation


# instance fields
.field notifyTaskPersister:Z

.field taskIds:[I

.field taskRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p3, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 8563
    .local p2, "trs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8564
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->taskRecords:Ljava/util/ArrayList;

    .line 8565
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->notifyTaskPersister:Z

    .line 8566
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8570
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->taskRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 8572
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Z)V
    invoke-static {v2, v1, v4}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0

    .line 8574
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->taskRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8575
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->notifyTaskPersister:Z

    if-eqz v2, :cond_1

    .line 8576
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$KillTaskProcessesThread;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 8578
    :cond_1
    return-void
.end method
