.class public abstract Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;
.super Ljava/lang/Object;
.source "LevelerOrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# instance fields
.field public mEnabled:Z

.field public mOrientation:I

.field public final mRate:I

.field public mSensor:Landroid/hardware/Sensor;

.field public mSensorEventListener:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mOrientation:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mEnabled:Z

    const-string/jumbo v0, "sensor"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mRate:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;-><init>(Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;

    :cond_0
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string p0, "OrientationEventListener"

    const-string v0, "Cannot detect sensors. Invalid disable"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mEnabled:Z

    :cond_1
    return-void
.end method

.method public final enable()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string p0, "OrientationEventListener"

    const-string v0, "Cannot detect sensors. Not enabled"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mEnabled:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener$SensorEventListenerImpl;

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerOrientationEventListener;->mEnabled:Z

    :cond_1
    return-void
.end method
