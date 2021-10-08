.class Lcom/android/server/am/ActivityManagerService$13;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->launchAsf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$completionCondition:Lcom/android/server/am/ActivityManagerService$1CompletionCondition;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1CompletionCondition;)V
    .locals 0

    .prologue
    .line 11266
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$completionCondition:Lcom/android/server/am/ActivityManagerService$1CompletionCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 11271
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$completionCondition:Lcom/android/server/am/ActivityManagerService$1CompletionCondition;

    monitor-enter v1

    .line 11272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$completionCondition:Lcom/android/server/am/ActivityManagerService$1CompletionCondition;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$1CompletionCondition;->finished:Z

    .line 11273
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->val$completionCondition:Lcom/android/server/am/ActivityManagerService$1CompletionCondition;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 11274
    monitor-exit v1

    .line 11275
    return-void

    .line 11274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
