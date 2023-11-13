.class public final Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/GestureRecognizer;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 3
    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    .line 6
    iget v1, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/UIManager;->getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 8
    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/UIManager;->getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p3

    const-string p0, "ON_DOWN"

    invoke-virtual {p2, p0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string p3, "DIRECTION"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "TYPE"

    .line 11
    invoke-virtual {p2, p0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p1, "ORIGIN"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 14
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid fling event. Throwing it away!"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid long press event. Throwing it away!"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    .line 5
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "LOCATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchLongPress(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 18

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_0

    goto/16 :goto_14

    :cond_0
    move-object/from16 v1, p0

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    new-instance v4, Landroid/graphics/PointF;

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 6
    check-cast v1, Lcom/motorola/camera/ui/UIManager;

    const/4 v5, 0x3

    .line 7
    iget-boolean v6, v1, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    if-eqz v6, :cond_1

    goto/16 :goto_7

    .line 8
    :cond_1
    iget v6, v1, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/16 v8, 0xb4

    const/4 v9, 0x2

    if-ne v6, v0, :cond_14

    .line 9
    iget v6, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v6, :cond_3

    if-ne v6, v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v0

    :goto_1
    if-nez v6, :cond_4

    .line 10
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_5

    :cond_4
    if-eqz v6, :cond_6

    .line 11
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 12
    :cond_5
    iput v5, v1, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 13
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v1, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    goto/16 :goto_8

    .line 14
    :cond_6
    sget-object v10, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    .line 15
    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v10, Landroid/graphics/Point;

    .line 17
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-static {v11}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    const/high16 v12, 0x43f00000    # 480.0f

    div-float/2addr v11, v12

    .line 19
    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    const/high16 v13, 0x42480000    # 50.0f

    mul-float/2addr v13, v11

    const/high16 v14, 0x41f00000    # 30.0f

    mul-float/2addr v11, v14

    int-to-float v12, v12

    .line 21
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    if-nez v6, :cond_7

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v12, v12, v14

    if-gtz v12, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    .line 23
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v12, v12, v14

    if-lez v12, :cond_9

    :cond_8
    move v12, v0

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_2
    if-eqz v6, :cond_a

    .line 24
    iget v14, v4, Landroid/graphics/PointF;->x:F

    cmpg-float v14, v14, v13

    if-ltz v14, :cond_d

    :cond_a
    iget v14, v4, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    sub-float/2addr v15, v13

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_d

    if-nez v6, :cond_b

    iget v14, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v14, v14, v13

    if-ltz v14, :cond_d

    :cond_b
    iget v14, v4, Landroid/graphics/PointF;->y:F

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float/2addr v10, v13

    cmpl-float v10, v14, v10

    if-lez v10, :cond_c

    goto :goto_3

    :cond_c
    const/4 v10, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    move v10, v0

    :goto_4
    if-nez v6, :cond_e

    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v11

    if-gtz v13, :cond_f

    :cond_e
    if-eqz v6, :cond_10

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_10

    :cond_f
    move v6, v0

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    :goto_5
    if-eqz v12, :cond_12

    if-nez v10, :cond_11

    if-eqz v6, :cond_12

    :cond_11
    move v6, v0

    goto :goto_6

    :cond_12
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_13

    .line 27
    iput v9, v1, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    .line 28
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v1, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    goto :goto_8

    .line 29
    :cond_13
    iput-boolean v0, v1, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 30
    :cond_14
    :goto_8
    iget v6, v1, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const-string v10, "IS_TOUCHED"

    const-string v11, "ORIGIN"

    const-string v12, "ENABLE"

    const-string v13, "ORIENTATION"

    const-string v14, "TYPE"

    const-string v15, "DIRECTION"

    const-string v8, "DELTA_VALUE"

    const-string v0, "VALUE"

    if-ne v6, v5, :cond_19

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/UIManager;->getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v5

    .line 32
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    iget-object v7, v1, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    neg-float v9, v9

    iget v7, v7, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v7, 0x2

    new-array v9, v7, [F

    const/4 v7, 0x0

    aput v2, v9, v7

    const/16 v16, 0x1

    aput v3, v9, v16

    .line 34
    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 35
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 36
    iget v7, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    move/from16 v17, v2

    const/16 v2, 0xb4

    if-eqz v7, :cond_16

    if-ne v7, v2, :cond_15

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    aget v9, v9, v7

    goto :goto_a

    :cond_16
    :goto_9
    aget v9, v9, v16

    :goto_a
    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 37
    iget v7, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v7, :cond_18

    if-ne v7, v2, :cond_17

    goto :goto_b

    :cond_17
    move/from16 v2, p3

    goto :goto_c

    :cond_18
    :goto_b
    move/from16 v2, p4

    :goto_c
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 38
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v6, v15, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v6, v14, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget v5, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v6, v13, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v6, v12, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v6, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {v6, v10, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v7, 0x0

    .line 45
    invoke-direct {v2, v5, v6, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 46
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_d

    :cond_19
    move/from16 v17, v2

    .line 47
    :goto_d
    iget v2, v1, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1f

    .line 48
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 49
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 50
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    .line 51
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 52
    iget-object v5, v1, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 53
    iget-object v5, v5, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 54
    iget-object v5, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, v5

    .line 55
    iget v5, v4, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    if-lt v5, v2, :cond_1a

    goto :goto_12

    :cond_1a
    move/from16 v2, v17

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/UIManager;->getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v5

    .line 57
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    iget-object v7, v1, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    neg-float v9, v9

    iget v7, v7, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v2, v7, v9

    const/4 v2, 0x1

    aput v3, v7, v2

    .line 59
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 60
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 61
    iget v6, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    const/16 v9, 0xb4

    if-eqz v6, :cond_1c

    if-ne v6, v9, :cond_1b

    goto :goto_e

    :cond_1b
    aget v6, v7, v2

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v2, 0x0

    aget v6, v7, v2

    :goto_f
    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 62
    iget v0, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v0, :cond_1e

    if-ne v0, v9, :cond_1d

    goto :goto_10

    :cond_1d
    move/from16 v0, p4

    goto :goto_11

    :cond_1e
    :goto_10
    move/from16 v0, p3

    :goto_11
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 63
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v3, v15, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {v3, v14, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget v2, v1, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v3, v13, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v3, v12, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {v3, v10, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 70
    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1f
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_20
    :goto_14
    const-string v0, "GestureRecognizer"

    const-string v1, "Rx invalid scroll event. Throwing it away!"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid single tap  event. Throwing it away!"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/motorola/camera/ui/GestureRecognizer;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    .line 5
    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "ENABLE"

    .line 6
    invoke-static {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v1, "LOCATION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "ON_UP"

    .line 9
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 10
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    const-string v1, "ON_UP preview"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    .line 13
    :cond_2
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TAP_TO_TAKE_PICTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 16
    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "TIMER"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    :cond_4
    iget-wide v0, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    const-string v2, "ON_DOWN"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 22
    iget-boolean v0, v0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    const-string v1, "IS_SPLIT_SCREEN"

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 25
    invoke-direct {v0, v1, p1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return v5
.end method
