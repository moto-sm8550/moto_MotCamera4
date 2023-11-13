.class public interface abstract Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;
.super Ljava/lang/Object;
.source "IPortraitBokehModel.kt"


# virtual methods
.method public abstract getBokehLevel()I
.end method

.method public abstract isPortraitBokehSupported()Z
.end method

.method public abstract needFaceDetect()Z
.end method

.method public abstract onBokehLevelChanged(I)V
.end method

.method public abstract onBokehLevelStopChanged()V
.end method

.method public abstract onFaceDetected([Landroid/hardware/camera2/params/Face;)V
.end method

.method public abstract onSingleShot(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setupPortraitBokeh()V
.end method
