.class public final Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;
.super Ljava/lang/Object;
.source "AutoNightVisionPillComponent.kt"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivePhysicalCameraIdChanged(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    if-nez v1, :cond_3

    .line 3
    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    if-nez v0, :cond_3

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x1

    int-to-float v2, v1

    const-string v3, "currentZoom"

    .line 7
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v2, v0

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPreActivePhysicalCameraId:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 12
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    .line 13
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 15
    :goto_1
    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showAMSToast(Z)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 17
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showAMSToast(Z)V

    .line 18
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$activePhysicalCameraIdListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mPreActivePhysicalCameraId:Ljava/lang/String;

    :cond_3
    return-void
.end method
