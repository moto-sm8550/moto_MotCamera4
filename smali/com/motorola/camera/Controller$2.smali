.class public final Lcom/motorola/camera/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Controller;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller$2;->this$0:Lcom/motorola/camera/Controller;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz p0, :cond_1

    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const/16 v1, 0x50

    if-le p1, v1, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    :cond_1
    return-void
.end method
