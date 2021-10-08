.class Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;
.super Ljava/lang/Thread;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationDone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;Lcom/android/internal/policy/impl/WindowOrientationListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/WindowOrientationListener$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mAccelRegistered:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200(Lcom/android/internal/policy/impl/WindowOrientationListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    invoke-static {v2}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mAccelRegistered:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$202(Lcom/android/internal/policy/impl/WindowOrientationListener;Z)Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$RotationDone;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mAccelEventCount:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(Lcom/android/internal/policy/impl/WindowOrientationListener;I)I

    .line 255
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
