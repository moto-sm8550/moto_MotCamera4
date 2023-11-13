.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;
.source "DocScanUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-ne v0, v1, :cond_10

    :cond_0
    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mStatus:I

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfModelResult;

    iget-object v0, v0, Lcom/motorola/camera/mcf/McfModelResult;->mScore:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isAiSlideScanAutoCaptureSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "ON_DOWN"

    .line 11
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 12
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 13
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "TIMER"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    invoke-direct {v5, v6, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 17
    invoke-interface {v4, v5}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 18
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "ON_UP"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    .line 21
    invoke-direct {v2, v6, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 22
    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 23
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v2, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 25
    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 26
    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_1
    return-void

    .line 27
    :cond_3
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mcf/McfModelResult;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfModelResult;->mLabel:Ljava/lang/String;

    const-string v0, ","

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    array-length v2, p1

    if-lez v2, :cond_5

    move v2, v1

    .line 31
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 32
    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 33
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    goto :goto_3

    .line 34
    :cond_4
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_5
    :goto_3
    new-array p1, v1, [Landroid/graphics/Point;

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Point;

    .line 36
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 37
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_f

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 39
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 43
    iget-wide v7, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_6

    .line 44
    iput-wide v5, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    .line 45
    :cond_6
    iput-wide v5, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    .line 46
    array-length v7, p1

    if-ne v7, v4, :cond_8

    .line 47
    array-length v4, p1

    new-array v4, v4, [Landroid/graphics/Point;

    move v7, v1

    .line 48
    :goto_4
    array-length v8, p1

    if-ge v7, v8, :cond_7

    .line 49
    new-instance v8, Landroid/graphics/Point;

    aget-object v9, p1, v7

    invoke-direct {v8, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 50
    :cond_7
    new-instance v7, Lcom/motorola/camera/slidedoc/TimePoints;

    invoke-direct {v7, v5, v6, v4}, Lcom/motorola/camera/slidedoc/TimePoints;-><init>(J[Landroid/graphics/Point;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->parallelFourEdge([Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 52
    invoke-virtual {v0, p1, v5, v6}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothRectPoints([Landroid/graphics/Point;J)V

    goto :goto_5

    :cond_8
    move-object v7, v2

    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    .line 53
    iget-wide v8, v7, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    sub-long v8, v5, v8

    .line 54
    iget p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    int-to-long v10, p1

    cmp-long p1, v8, v10

    if-lez p1, :cond_a

    goto :goto_6

    :cond_a
    move-object v2, v7

    .line 55
    :goto_6
    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getSmoothPoints(J)[Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    if-nez p1, :cond_b

    if-eqz v2, :cond_b

    .line 56
    iget-object p1, v2, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    .line 57
    iput-object p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p0

    .line 58
    iget-object p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    throw p0

    .line 60
    :catch_0
    :cond_b
    :goto_7
    iget-object p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 62
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    if-eqz p1, :cond_e

    if-eqz p1, :cond_10

    .line 63
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_d

    .line 64
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-virtual {p1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->onZoomEnd()V

    .line 65
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->Companion:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;

    .line 66
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "get(SettingsManager.SCAN\u2026UTO_CAPTURE_ENABLE).value"

    .line 68
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 69
    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;->setAutoCaptureEnable(Z)V

    .line 70
    :cond_c
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    .line 71
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    goto :goto_8

    :cond_d
    if-ne p1, v3, :cond_10

    .line 72
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-virtual {p0}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->onZoomEnd()V

    goto :goto_8

    .line 73
    :cond_e
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    .line 74
    invoke-virtual {p1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->access$800(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Ljava/util/List;)V

    goto :goto_8

    .line 75
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_10

    .line 76
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-static {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->access$000(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;[Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    .line 78
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    .line 79
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->access$200(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;[Landroid/graphics/Point;)V

    :cond_10
    :goto_8
    return-void
.end method
