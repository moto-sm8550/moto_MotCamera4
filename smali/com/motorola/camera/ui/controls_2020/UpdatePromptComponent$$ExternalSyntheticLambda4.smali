.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

.field public final synthetic f$1:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;->f$1:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda4;->f$1:Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    const-string/jumbo v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$state"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v5, 0x0

    .line 4
    iput-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    const v6, 0x7f0a0438

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_3

    const v6, 0x7f0a0435

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_1

    :cond_3
    move-object v1, v5

    :goto_1
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_4

    const v6, 0x7f0a043a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_2

    :cond_4
    move-object v1, v5

    :goto_2
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_5

    const v6, 0x7f0a001b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_3

    :cond_5
    move-object v1, v5

    :goto_3
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    .line 11
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_6

    const v6, 0x7f0a0325

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_4

    :cond_6
    move-object v1, v5

    :goto_4
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_7

    const v6, 0x7f0a0439

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_5

    :cond_7
    move-object v1, v5

    :goto_5
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_8

    const v6, 0x7f0a043d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_6

    :cond_8
    move-object v1, v5

    :goto_6
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_9

    const v5, 0x7f0a043b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    :cond_9
    iput-object v5, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v1, :cond_a

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    if-eqz v1, :cond_b

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_b
    :goto_7
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    .line 18
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_39

    if-eq v1, v5, :cond_38

    const/4 v6, 0x2

    if-eq v1, v6, :cond_37

    if-eq v1, v3, :cond_c

    goto/16 :goto_1c

    .line 19
    :cond_c
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    const/16 v7, 0x8

    if-eq v1, v5, :cond_31

    if-eq v1, v6, :cond_2a

    if-eq v1, v3, :cond_29

    const-wide/16 v8, 0x1388

    const v6, 0x7f0800a2

    if-eq v1, v2, :cond_21

    const/4 v3, 0x5

    const-string v10, "UpdatePromptComponent"

    if-eq v1, v3, :cond_16

    const/16 v3, 0xb

    if-eq v1, v3, :cond_d

    .line 20
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    .line 21
    iput-boolean v5, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    .line 22
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appUpdate - unknown state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 24
    :cond_d
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 25
    :cond_e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 26
    :goto_8
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 27
    :goto_9
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_11

    const v1, 0x7f110158

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    :cond_11
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_12

    const v1, 0x7f110540

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    :cond_12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_a
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    :cond_14
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :goto_b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 33
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 34
    iput-boolean v5, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    .line 35
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3a

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1c

    .line 36
    :cond_16
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 37
    :goto_c
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_18

    goto :goto_d

    :cond_18
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :goto_d
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_19

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 39
    :cond_19
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 40
    iget-boolean p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    if-eqz p0, :cond_1b

    .line 41
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_1a

    const v1, 0x7f110197

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1a
    const-string p0, "appUpdate - install failed - "

    .line 42
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 43
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 44
    iget v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 46
    :cond_1b
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    const v1, 0x7f110196

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1c
    const-string p0, "appUpdate - download failed - "

    .line 47
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 48
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 49
    iget v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_1d

    const v1, 0x7f110541

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :cond_1d
    new-instance p0, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v3}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_1e
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 55
    invoke-virtual {v1, p0, v8, v9}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    .line 56
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1f

    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :cond_1f
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_20

    goto :goto_f

    :cond_20
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :goto_f
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    goto/16 :goto_1c

    .line 59
    :cond_21
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_22

    goto :goto_10

    :cond_22
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 60
    :goto_10
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_23

    goto :goto_11

    :cond_23
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 61
    :goto_11
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_12

    :cond_24
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_12
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_25

    const v1, 0x7f110542

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_25
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_26

    const v1, 0x7f11053e

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :cond_26
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_27

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    :cond_27
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 66
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 67
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 68
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_28

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_28
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 70
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v8, v9}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    .line 71
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 72
    :cond_29
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    .line 73
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 74
    :cond_2a
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_2b

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 75
    :cond_2b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    .line 76
    iput-boolean v4, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    .line 77
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_2c

    goto :goto_13

    :cond_2c
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 78
    :goto_13
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_2d

    goto :goto_14

    :cond_2d
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 79
    :goto_14
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_2e

    goto :goto_15

    :cond_2e
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_15
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 81
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_16

    :cond_2f
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 82
    :goto_16
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_30

    goto :goto_17

    :cond_30
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 83
    iget-wide v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    long-to-int v1, v1

    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 85
    :goto_17
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    .line 86
    iget-wide v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    new-array v3, v5, [I

    long-to-int v1, v1

    aput v1, v3, v4

    const-string v1, "progress"

    .line 87
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 88
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    invoke-virtual {p0, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 90
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 91
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3a

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c

    .line 92
    :cond_31
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_32

    goto :goto_18

    :cond_32
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 93
    :goto_18
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_33

    goto :goto_19

    :cond_33
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 94
    :goto_19
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_34

    goto :goto_1a

    :cond_34
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :goto_1a
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_35

    goto :goto_1b

    :cond_35
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    :goto_1b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    .line 97
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_36

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 98
    :cond_36
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3a

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c

    .line 99
    :cond_37
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 100
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    .line 101
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f110136

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 102
    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 103
    invoke-static {v1, p0, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_1c

    .line 104
    :cond_38
    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    .line 105
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    goto :goto_1c

    .line 106
    :cond_39
    iput-boolean v5, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    .line 107
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_3a
    :goto_1c
    return-void
.end method
