.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .prologue
    .line 2999
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .prologue
    .line 2999
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3083
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3084
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    invoke-static {v3, p1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v1

    .line 3085
    .local v1, "packageUid":I
    if-gez v1, :cond_0

    .line 3086
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3089
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3090
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3092
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 3093
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3094
    const/4 v3, 0x1

    monitor-exit v4

    .line 3098
    :goto_0
    return v3

    .line 3096
    :cond_1
    monitor-exit v4

    .line 3098
    const/4 v3, 0x0

    goto :goto_0

    .line 3096
    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isParentOrProfile(II)Z
    .locals 2
    .param p1, "parentId"    # I
    .param p2, "profileId"    # I

    .prologue
    const/4 v0, 0x1

    .line 3127
    if-ne p1, p2, :cond_1

    .line 3130
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileEnabled(I)Z
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 3198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3200
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3201
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 3202
    :cond_0
    const/4 v3, 0x0

    .line 3205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3207
    :goto_0
    return v3

    .line 3205
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3207
    const/4 v3, 0x1

    goto :goto_0

    .line 3205
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z
    .locals 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 3102
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3123
    :cond_0
    :goto_0
    return v1

    .line 3106
    :cond_1
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3110
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3114
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3115
    .local v0, "userId":I
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v2

    if-ne v2, v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3123
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enforceCallFromPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3068
    return-void
.end method

.method public enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3061
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    return-void
.end method

.method public enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 3040
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3042
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 3044
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v2, :cond_0

    .line 3045
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not installed for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3053
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    .line 3056
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3058
    :goto_0
    return-void

    .line 3048
    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    :try_start_1
    const-string v3, "android.permission.BIND_REMOTEVIEWS"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3049
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "does not require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.BIND_REMOTEVIEWS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3056
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getEnabledGroupProfileIds(I)[I
    .locals 11
    .param p1, "userId"    # I

    .prologue
    .line 3007
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    .line 3010
    .local v3, "parentId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3012
    .local v4, "identity":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3014
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3017
    const/4 v0, 0x0

    .line 3018
    .local v0, "enabledProfileCount":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 3019
    .local v7, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 3020
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3021
    add-int/lit8 v0, v0, 0x1

    .line 3019
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3014
    .end local v0    # "enabledProfileCount":I
    .end local v2    # "i":I
    .end local v7    # "profileCount":I
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 3025
    .restart local v0    # "enabledProfileCount":I
    .restart local v2    # "i":I
    .restart local v7    # "profileCount":I
    .restart local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v1, 0x0

    .line 3026
    .local v1, "enabledProfileIndex":I
    new-array v8, v0, [I

    .line 3027
    .local v8, "profileIds":[I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    .line 3028
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3029
    .local v6, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3030
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    aput v10, v8, v1

    .line 3031
    add-int/lit8 v1, v1, 0x1

    .line 3027
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3035
    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v8
.end method

.method public getGroupParent(I)I
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 3175
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3176
    .local v0, "parentId":I
    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    .end local v0    # "parentId":I
    :goto_0
    return v0

    .restart local v0    # "parentId":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getProfileParent(I)I
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 3162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3164
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3165
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 3166
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3171
    :goto_0
    return v3

    .line 3169
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3171
    const/16 v3, -0xa

    goto :goto_0

    .line 3169
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BIND_APPWIDGET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3079
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3074
    :catch_0
    move-exception v0

    .line 3075
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3076
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabledGroupProfile(I)Z
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 3002
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3003
    .local v0, "parentId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isParentOrProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProfileEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3193
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p3, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3180
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p2, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileId"    # I

    .prologue
    .line 3135
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3136
    .local v0, "callerId":I
    if-ne p2, v0, :cond_0

    .line 3137
    const/4 v2, 0x1

    .line 3143
    :goto_0
    return v2

    .line 3139
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    .line 3140
    .local v1, "parentId":I
    if-eq v1, v0, :cond_1

    .line 3141
    const/4 v2, 0x0

    goto :goto_0

    .line 3143
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhitelListed(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method public isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3186
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-ne v0, p2, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderWhitelListed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileId"    # I

    .prologue
    .line 3147
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3151
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v1, :cond_0

    .line 3152
    const/4 v2, 0x0

    .line 3158
    :goto_0
    return v2

    .line 3155
    :cond_0
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    move-result-object v0

    .line 3158
    .local v0, "crossProfilePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
