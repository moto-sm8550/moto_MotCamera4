.class public final Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent$inflateViewStub$1;
.super Ljava/lang/Object;
.source "SceneDetectionDebugComponent.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;->inflateViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p2, "null cannot be cast to non-null type android.widget.Spinner"

    .line 1
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/Spinner;

    .line 2
    sget-object p2, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->Companion:Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;

    invoke-virtual {p2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;->getFactory()Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.Scene.Type"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    iget-object p3, p3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p3

    .line 4
    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string p2, "mEventHandler"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-ne p2, p3, :cond_2

    .line 8
    sget-object p2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/motorola/camera/scenedetection/scene/Scene;->getPersistOnLensSwitch()Z

    move-result p2

    if-ne p2, p4, :cond_1

    move p2, p4

    goto :goto_1

    :cond_1
    move p2, p5

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p4, p5

    .line 9
    :goto_2
    sget-object p2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p4, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    sput-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    .line 11
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_3
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
