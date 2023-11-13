.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x0

    const-string/jumbo v1, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const-string v2, "$hideSnackbarRunnable"

    .line 1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1, p1}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v1, 0x7f110159

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const v1, 0x7f11053d

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/zzw;

    return-void

    .line 12
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v2, "$this_apply"

    .line 13
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 15
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    .line 18
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v3, 0x40

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    .line 22
    invoke-virtual {v1, v3, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 23
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    if-eqz p1, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    .line 25
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->storeCurrentZoomValue(Z)V

    .line 26
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    .line 27
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    :cond_6
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
