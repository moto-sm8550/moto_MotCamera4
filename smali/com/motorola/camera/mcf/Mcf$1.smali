.class public final Lcom/motorola/camera/mcf/Mcf$1;
.super Ljava/lang/Object;
.source "Mcf.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/mcf/Mcf;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Lcom/motorola/camera/mcf/Mcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$300()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 2
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$300()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 3
    :cond_0
    iget-object p0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, v0, v1, p1}, Lcom/motorola/camera/mcf/Mcf;->access$400(IJ[F)V

    return-void
.end method
