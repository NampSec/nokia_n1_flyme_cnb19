.class Lcom/android/server/pm/UpdateAppsReceiver$1;
.super Ljava/lang/Thread;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 96
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/app/.need_init"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "verifyFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "/data/app/.need_init do not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z

    .line 111
    :goto_0
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_2

    .line 112
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "mPm is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v3    # "verifyFile":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 102
    .restart local v3    # "verifyFile":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/app/.need_init create ex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 144
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "verifyFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 145
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception !!!: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "verifyFile":Ljava/io/File;
    :cond_2
    const/4 v4, -0x2

    :try_start_3
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 118
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$202(Ljava/util/List;)Ljava/util/List;

    .line 120
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$200()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$302(I)I

    .line 122
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    new-instance v5, Ljava/io/File;

    const-string v6, "/custom/gms/apk/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 123
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$000(Lcom/android/server/pm/UpdateAppsReceiver;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 124
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfUpdate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    const-string v4, "UpdateAppsReceiver"

    const-string v5, "is firstboot"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-virtual {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForUpdate()V

    goto/16 :goto_1

    .line 131
    :cond_3
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result.size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # invokes: Lcom/android/server/pm/UpdateAppsReceiver;->checkPackageState(Ljava/util/List;)Ljava/util/List;
    invoke-static {v4, v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$500(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/File;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/File;

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$602([Ljava/io/File;)[Ljava/io/File;

    .line 138
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$600()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    # setter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$702(I)I

    .line 139
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLenght : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()I

    move-result v4

    if-lez v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver$1;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    # getter for: Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
