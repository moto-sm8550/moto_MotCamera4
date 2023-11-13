.class public final Lcom/motorola/camera/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;
    }
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;

.field public mStillDown:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;

    return-void
.end method


# virtual methods
.method public final setState(ZLandroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-eqz p1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    .line 7
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->getCameraType(Landroid/view/MotionEvent;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 8
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 9
    :cond_1
    iput-wide v0, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    goto/16 :goto_1

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchUiEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 16
    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    goto :goto_1

    .line 17
    :cond_3
    iget-boolean p2, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    if-eqz p2, :cond_4

    .line 18
    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    .line 19
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CAPTURE_TRIGGER"

    .line 20
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "LOCATION"

    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchLongPress(Landroid/os/Bundle;)V

    .line 23
    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    const-string p2, "ENABLE"

    if-eqz p1, :cond_5

    .line 24
    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    .line 25
    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 26
    invoke-static {p2, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 28
    invoke-direct {p2, v0, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 30
    :cond_5
    iget p1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v0, 0x3

    const-string v3, "ORIENTATION"

    if-ne p1, v0, :cond_6

    .line 31
    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    .line 32
    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 33
    invoke-static {p2, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 34
    iget p2, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p1, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 36
    invoke-direct {p2, v0, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 38
    iput-boolean v2, p0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    .line 39
    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 40
    invoke-static {p2, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 41
    iget p2, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {p1, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 43
    invoke-direct {p2, v0, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 45
    :cond_7
    :goto_0
    iput v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    :goto_1
    return-void
.end method
