.class final Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TerminalEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 871
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 876
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mAccelRegistered:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200(Lcom/android/internal/policy/impl/WindowOrientationListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    invoke-static {v2}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$1000(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/hardware/Sensor;

    move-result-object v3

    const/16 v4, 0x2710

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$1100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mAccelRegistered:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$202(Lcom/android/internal/policy/impl/WindowOrientationListener;Z)Z

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$TerminalEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mAccelEventCount:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(Lcom/android/internal/policy/impl/WindowOrientationListener;I)I

    .line 889
    :cond_2
    monitor-exit v1

    .line 890
    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
