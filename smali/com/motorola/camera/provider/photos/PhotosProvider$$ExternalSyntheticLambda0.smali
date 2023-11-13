.class public final synthetic Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->stopEngine()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Collection;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility()V

    :cond_1
    return-void

    .line 10
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    .line 11
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 13
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$Companion;

    .line 14
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070170

    .line 18
    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 19
    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat$Api29Impl;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 21
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    const v1, 0x7f0802d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603d1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 24
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110484

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void

    .line 27
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->show()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->hide()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$Companion;

    .line 28
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    .line 30
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    .line 31
    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    .line 32
    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->close(Z)V

    return-void

    .line 33
    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03000a

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0x7f030006

    .line 37
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x7f030009

    .line 38
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const v5, 0x7f030005

    .line 39
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030008

    .line 40
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030007

    .line 41
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    move v8, v7

    .line 42
    :goto_6
    array-length v9, v5

    const/4 v10, 0x2

    if-ge v8, v9, :cond_f

    .line 43
    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v9

    array-length v11, v9

    move v12, v7

    :goto_7
    if-ge v12, v11, :cond_a

    aget-object v13, v9, v12

    .line 44
    iget v14, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    if-ne v14, v8, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 45
    :cond_a
    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 46
    :goto_8
    sget-object v9, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-ne v13, v9, :cond_b

    iget v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    if-eq v9, v8, :cond_b

    goto :goto_9

    .line 47
    :cond_b
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    .line 48
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    .line 49
    invoke-virtual {v4, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    .line 50
    aget-object v9, v5, v8

    const-string v11, "badge"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "edit"

    if-nez v9, :cond_c

    aget-object v9, v5, v8

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 51
    :cond_c
    iget v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/2addr v9, v1

    iput v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    .line 52
    :cond_d
    aget-object v9, v6, v8

    .line 53
    aget-object v12, v0, v8

    .line 54
    aget-object v14, v5, v8

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 55
    invoke-static {p0, v9, v12}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasHandlerActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 56
    iget v11, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/2addr v11, v10

    iput v11, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    .line 57
    iget-object v11, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iget-object v9, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 59
    :cond_f
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 60
    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->EDITOR_LAYER:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 61
    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_EDITOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 62
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 63
    invoke-virtual {v1}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 64
    invoke-virtual {v1}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    .line 65
    :cond_10
    sget-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 66
    invoke-virtual {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v7

    if-eqz v7, :cond_12

    if-nez v5, :cond_11

    .line 67
    sget v5, Lcom/motorola/camera/provider/photos/LayerActivity;->$r8$clinit:I

    const-string v5, "com.motorola.photoeditor"

    const-string v7, "com.android.gallery3d.filtershow.FilterShowLayerActivity"

    .line 68
    invoke-static {p0, v5, v7}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasHandlerActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 69
    :cond_11
    invoke-virtual {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    .line 70
    :cond_12
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 71
    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz v0, :cond_13

    .line 72
    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    .line 73
    :cond_13
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 74
    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    iget v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/2addr v0, v10

    iput v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    .line 76
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v1, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->getActivityPackageForConfig(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v0, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v1, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->getActivityClassForConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    :cond_14
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 85
    :goto_a
    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->$r8$clinit:I

    .line 86
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v0, :cond_15

    goto :goto_b

    .line 87
    :cond_15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 88
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
