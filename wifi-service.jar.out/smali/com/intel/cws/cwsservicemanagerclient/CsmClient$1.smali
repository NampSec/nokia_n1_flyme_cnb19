.class Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;
.super Landroid/content/BroadcastReceiver;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
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
    .line 234
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    const/4 v2, 0x1

    # setter for: Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z
    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$402(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z

    .line 240
    :cond_0
    return-void
.end method
