.class public final Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;
.super Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.source "SuperSlowMotionActivityBindingImpl.java"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# static fields
.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final mCallback1:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public final mCallback2:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView10:Landroidx/constraintlayout/widget/Group;

.field public final mboundView11:Landroid/widget/TextView;

.field public final mboundView9:Landroidx/constraintlayout/widget/Group;

.field public superSlowMotionTrimBarvaluesAttrChanged:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03b7

    const/16 v2, 0xc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03b6

    const/16 v2, 0xd

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03ac

    const/16 v2, 0xe

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03b9

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03a9

    const/16 v2, 0x10

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03ae

    const/16 v2, 0x11

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03ad

    const/16 v2, 0x12

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03b0

    const/16 v2, 0x13

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    sget-object v4, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v5, 0x14

    move-object/from16 v6, p1

    invoke-static {v6, v0, v5, v4}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v18

    const/16 v4, 0x10

    .line 2
    aget-object v4, v18, v4

    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    const/4 v14, 0x2

    aget-object v4, v18, v14

    check-cast v4, Landroid/widget/ImageButton;

    const/16 v5, 0xe

    aget-object v5, v18, v5

    check-cast v5, Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v6, 0x12

    aget-object v6, v18, v6

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v7, 0x11

    aget-object v7, v18, v7

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/4 v8, 0x5

    aget-object v8, v18, v8

    check-cast v8, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v9, 0x13

    aget-object v9, v18, v9

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/16 v10, 0x8

    aget-object v10, v18, v10

    check-cast v10, Landroid/widget/Button;

    const/4 v11, 0x6

    aget-object v11, v18, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x7

    aget-object v12, v18, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x4

    aget-object v13, v18, v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v16, v18, v0

    check-cast v16, Landroid/widget/Button;

    move v0, v14

    move-object/from16 v14, v16

    const/16 v16, 0xd

    aget-object v16, v18, v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v15, v16

    const/16 v16, 0xc

    aget-object v16, v18, v16

    check-cast v16, Landroid/widget/ToggleButton;

    const/16 v16, 0xf

    aget-object v16, v18, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x3

    aget-object v17, v18, v17

    check-cast v17, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-direct/range {v1 .. v17}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/ImageButton;Lcom/google/android/exoplayer2/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    .line 3
    new-instance v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;-><init>(Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;

    const-wide/16 v3, -0x1

    .line 4
    iput-wide v3, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    .line 5
    aget-object v1, v18, v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 7
    aget-object v1, v18, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroidx/constraintlayout/widget/Group;

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xb

    .line 9
    aget-object v1, v18, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView11:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 11
    aget-object v1, v18, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0139

    move-object/from16 v3, p2

    const/4 v4, 0x1

    .line 21
    invoke-virtual {v3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    new-instance v1, Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback2:Lcom/motorola/camera/generated/callback/OnClickListener;

    .line 23
    new-instance v0, Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-direct {v0, v2, v4}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback1:Lcom/motorola/camera/generated/callback/OnClickListener;

    .line 24
    monitor-enter p0

    const-wide/32 v0, 0x8000

    .line 25
    :try_start_0
    iput-wide v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final _internalCallbackOnClick(I)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalFrames:I

    .line 7
    iget-object v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v3

    iget-object v4, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->first([I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 8
    iget-object v4, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 9
    iget v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 10
    iget-object v4, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v4

    iget-object v5, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->first([I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v2, v3

    .line 12
    iget p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v2

    .line 13
    iput v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 16
    :cond_4
    new-instance v2, Ljava/util/Timer;

    const-string p1, "Super slow motion thumbnail timer"

    invoke-direct {v2, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    .line 17
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;

    invoke-direct {v3, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const-wide/16 v4, 0x0

    .line 18
    iget-wide v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    .line 19
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 21
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 22
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_5
    :goto_1
    return-void
.end method

.method public final executeBindings()V
    .locals 67

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/32 v11, 0xc000

    const-wide/32 v13, 0xc002

    const-wide/32 v15, 0xc001

    const-wide/32 v17, 0xc200

    const-wide/32 v19, 0xc00c

    const-wide/32 v21, 0xc008

    const-wide/32 v23, 0xe008

    const-wide/32 v25, 0xc088

    const-wide/32 v27, 0xc208

    const-wide/32 v29, 0xc800

    const-wide/32 v31, 0xc400

    const-wide/32 v33, 0xc100

    const-wide/32 v35, 0xd000

    const-wide/32 v37, 0xc040

    const/4 v9, 0x3

    const-wide/32 v41, 0xc010

    const-wide/32 v43, 0xc020

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3b

    and-long v48, v2, v15

    cmp-long v6, v48, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    and-long v48, v2, v13

    cmp-long v48, v48, v4

    if-eqz v48, :cond_5

    if-eqz v0, :cond_3

    .line 10
    iget-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 11
    :goto_3
    invoke-virtual {v1, v7, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_4

    .line 12
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 13
    :goto_4
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v13

    goto :goto_5

    :cond_5
    move v13, v8

    :goto_5
    and-long v50, v2, v11

    cmp-long v14, v50, v4

    if-eqz v14, :cond_6

    if-eqz v0, :cond_6

    .line 14
    iget v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    goto :goto_6

    :cond_6
    move v14, v8

    :goto_6
    and-long v50, v2, v19

    cmp-long v50, v50, v4

    if-eqz v50, :cond_a

    if-eqz v0, :cond_7

    .line 15
    iget-object v11, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    .line 16
    :goto_7
    invoke-virtual {v1, v10, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_8

    .line 17
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    .line 18
    :goto_8
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v50, :cond_b

    if-eqz v11, :cond_9

    const-wide v52, 0x8000000000L

    goto :goto_9

    :cond_9
    const-wide v52, 0x4000000000L

    :goto_9
    or-long v2, v2, v52

    goto :goto_a

    :cond_a
    move v11, v8

    :cond_b
    :goto_a
    and-long v52, v2, v21

    cmp-long v12, v52, v4

    if-eqz v12, :cond_11

    if-eqz v0, :cond_c

    .line 19
    iget-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    .line 20
    :goto_b
    invoke-virtual {v1, v9, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_d

    .line 21
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Boolean;

    goto :goto_c

    :cond_d
    const/16 v52, 0x0

    .line 22
    :goto_c
    invoke-static/range {v52 .. v52}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v53

    if-eqz v12, :cond_f

    if-eqz v53, :cond_e

    const-wide v45, 0x80000000L

    or-long v2, v2, v45

    goto :goto_d

    :cond_e
    const-wide/32 v39, 0x40000000

    or-long v2, v2, v39

    :cond_f
    :goto_d
    if-eqz v53, :cond_10

    const/4 v12, 0x0

    goto :goto_e

    :cond_10
    const/16 v12, 0x8

    goto :goto_e

    :cond_11
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v52, 0x0

    :goto_e
    and-long v53, v2, v41

    cmp-long v53, v53, v4

    if-eqz v53, :cond_13

    if-eqz v0, :cond_12

    .line 23
    iget-object v10, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_f

    :cond_12
    const/4 v10, 0x0

    :goto_f
    const/4 v15, 0x4

    .line 24
    invoke-virtual {v1, v15, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_13

    .line 25
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_10

    :cond_13
    const/4 v10, 0x0

    :goto_10
    and-long v15, v2, v43

    cmp-long v15, v15, v4

    if-eqz v15, :cond_15

    if-eqz v0, :cond_14

    .line 26
    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_11

    :cond_14
    const/4 v15, 0x0

    :goto_11
    const/4 v7, 0x5

    .line 27
    invoke-virtual {v1, v7, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_15

    .line 28
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    goto :goto_12

    :cond_15
    const/4 v7, 0x0

    :goto_12
    and-long v55, v2, v37

    cmp-long v15, v55, v4

    if-eqz v15, :cond_18

    if-eqz v0, :cond_16

    .line 29
    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_13

    :cond_16
    const/4 v15, 0x0

    :goto_13
    const/4 v9, 0x6

    .line 30
    invoke-virtual {v1, v9, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_17

    .line 31
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    goto :goto_14

    :cond_17
    const/4 v9, 0x0

    .line 32
    :goto_14
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v9

    goto :goto_15

    :cond_18
    const/4 v9, 0x0

    :goto_15
    and-long v56, v2, v25

    cmp-long v15, v56, v4

    if-eqz v15, :cond_1c

    if-eqz v0, :cond_19

    .line 33
    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_16

    :cond_19
    const/4 v4, 0x0

    :goto_16
    const/4 v5, 0x7

    .line 34
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_1a

    .line 35
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_17

    :cond_1a
    const/4 v4, 0x0

    .line 36
    :goto_17
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v15, :cond_1d

    if-eqz v4, :cond_1b

    const-wide/32 v58, 0x2000000

    goto :goto_18

    :cond_1b
    const-wide/32 v58, 0x1000000

    :goto_18
    or-long v2, v2, v58

    goto :goto_19

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_19
    and-long v58, v2, v33

    const-wide/16 v56, 0x0

    cmp-long v5, v58, v56

    if-eqz v5, :cond_20

    if-eqz v0, :cond_1e

    .line 37
    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    goto :goto_1a

    :cond_1e
    const/4 v5, 0x0

    :goto_1a
    const/16 v15, 0x8

    .line 38
    invoke-virtual {v1, v15, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_1f

    .line 39
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_1b

    :cond_1f
    const/4 v5, 0x0

    .line 40
    :goto_1b
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v5

    goto :goto_1c

    :cond_20
    const/16 v15, 0x8

    const/4 v5, 0x0

    :goto_1c
    and-long v58, v2, v27

    const-wide/16 v56, 0x0

    cmp-long v47, v58, v56

    if-eqz v47, :cond_29

    if-eqz v0, :cond_21

    .line 41
    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

    move/from16 v59, v4

    goto :goto_1d

    :cond_21
    move/from16 v59, v4

    const/4 v15, 0x0

    :goto_1d
    const/16 v4, 0x9

    .line 42
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_22

    .line 43
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_1e

    :cond_22
    const/4 v4, 0x0

    .line 44
    :goto_1e
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v47, :cond_24

    if-eqz v4, :cond_23

    const-wide/32 v60, 0x20000

    goto :goto_1f

    :cond_23
    const-wide/32 v60, 0x10000

    :goto_1f
    or-long v2, v2, v60

    :cond_24
    and-long v60, v2, v17

    const-wide/16 v56, 0x0

    cmp-long v15, v60, v56

    if-eqz v15, :cond_26

    if-eqz v4, :cond_25

    const-wide/32 v60, 0x200000

    or-long v2, v2, v60

    const-wide v60, 0x800000000L

    goto :goto_20

    :cond_25
    const-wide/32 v60, 0x100000

    or-long v2, v2, v60

    const-wide v60, 0x400000000L

    :goto_20
    or-long v2, v2, v60

    :cond_26
    and-long v60, v2, v17

    const-wide/16 v56, 0x0

    cmp-long v15, v60, v56

    if-eqz v15, :cond_28

    xor-int/lit8 v15, v4, 0x1

    if-eqz v4, :cond_27

    move-wide/from16 v60, v2

    .line 45
    iget-object v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110436

    goto :goto_21

    :cond_27
    move-wide/from16 v60, v2

    iget-object v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110438

    :goto_21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v47, v4

    move-object v4, v2

    move-wide/from16 v2, v60

    goto :goto_22

    :cond_28
    move-wide/from16 v60, v2

    move/from16 v47, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto :goto_22

    :cond_29
    move/from16 v59, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v47, 0x0

    :goto_22
    and-long v60, v2, v31

    const-wide/16 v56, 0x0

    cmp-long v60, v60, v56

    if-eqz v60, :cond_2f

    if-eqz v0, :cond_2a

    move-object/from16 v61, v4

    .line 46
    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

    move/from16 v62, v5

    goto :goto_23

    :cond_2a
    move-object/from16 v61, v4

    move/from16 v62, v5

    const/4 v4, 0x0

    :goto_23
    const/16 v5, 0xa

    .line 47
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_2b

    .line 48
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_24

    :cond_2b
    const/4 v4, 0x0

    .line 49
    :goto_24
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v60, :cond_2d

    if-eqz v4, :cond_2c

    const-wide/32 v63, 0x80000

    goto :goto_25

    :cond_2c
    const-wide/32 v63, 0x40000

    :goto_25
    or-long v2, v2, v63

    :cond_2d
    if-eqz v4, :cond_2e

    goto :goto_26

    :cond_2e
    const/16 v4, 0x8

    goto :goto_27

    :cond_2f
    move-object/from16 v61, v4

    move/from16 v62, v5

    :goto_26
    const/4 v4, 0x0

    :goto_27
    and-long v63, v2, v29

    const-wide/16 v56, 0x0

    cmp-long v5, v63, v56

    if-eqz v5, :cond_31

    if-eqz v0, :cond_30

    .line 50
    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    move/from16 v60, v4

    goto :goto_28

    :cond_30
    move/from16 v60, v4

    const/4 v5, 0x0

    :goto_28
    const/16 v4, 0xb

    .line 51
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_32

    .line 52
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_29

    :cond_31
    move/from16 v60, v4

    :cond_32
    const/4 v4, 0x0

    :goto_29
    and-long v63, v2, v35

    const-wide/16 v56, 0x0

    cmp-long v5, v63, v56

    if-eqz v5, :cond_35

    if-eqz v0, :cond_33

    .line 53
    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/MediatorLiveData;

    move-object/from16 v63, v4

    goto :goto_2a

    :cond_33
    move-object/from16 v63, v4

    const/4 v5, 0x0

    :goto_2a
    const/16 v4, 0xc

    .line 54
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_34

    .line 55
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_2b

    :cond_34
    const/4 v4, 0x0

    .line 56
    :goto_2b
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v4

    goto :goto_2c

    :cond_35
    move-object/from16 v63, v4

    const/4 v4, 0x0

    :goto_2c
    and-long v64, v2, v23

    const-wide/16 v56, 0x0

    cmp-long v5, v64, v56

    if-eqz v5, :cond_39

    if-eqz v0, :cond_36

    move/from16 v64, v4

    .line 57
    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    move/from16 v65, v6

    goto :goto_2d

    :cond_36
    move/from16 v64, v4

    move/from16 v65, v6

    const/4 v4, 0x0

    :goto_2d
    const/16 v6, 0xd

    .line 58
    invoke-virtual {v1, v6, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_37

    .line 59
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_2e

    :cond_37
    const/4 v4, 0x0

    .line 60
    :goto_2e
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v5, :cond_3a

    if-eqz v4, :cond_38

    const-wide v5, 0x200000000L

    goto :goto_2f

    :cond_38
    const-wide v5, 0x100000000L

    :goto_2f
    or-long/2addr v2, v5

    goto :goto_30

    :cond_39
    move/from16 v64, v4

    move/from16 v65, v6

    const/4 v4, 0x0

    :cond_3a
    :goto_30
    move v6, v15

    move-object/from16 v5, v63

    move v15, v4

    move-object/from16 v63, v52

    move-object/from16 v4, v61

    move-object/from16 v52, v8

    move/from16 v61, v9

    move v9, v12

    move-object v8, v7

    move v12, v11

    move/from16 v7, v65

    move-object v11, v10

    move/from16 v10, v64

    move/from16 v66, v62

    move/from16 v62, v14

    move/from16 v14, v60

    move/from16 v60, v66

    goto :goto_31

    :cond_3b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v47, 0x0

    const/16 v52, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    :goto_31
    const-wide v64, 0x8202020000L

    and-long v64, v2, v64

    const-wide/16 v56, 0x0

    cmp-long v64, v64, v56

    if-eqz v64, :cond_40

    if-eqz v0, :cond_3c

    .line 61
    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_32

    :cond_3c
    move-object/from16 v0, v52

    :goto_32
    move-object/from16 v52, v8

    const/4 v8, 0x3

    .line 62
    invoke-virtual {v1, v8, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_3d

    .line 63
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/Boolean;

    .line 64
    :cond_3d
    invoke-static/range {v63 .. v63}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    and-long v63, v2, v21

    const-wide/16 v55, 0x0

    cmp-long v8, v63, v55

    if-eqz v8, :cond_3f

    if-eqz v0, :cond_3e

    const-wide v45, 0x80000000L

    or-long v2, v2, v45

    goto :goto_33

    :cond_3e
    const-wide/32 v39, 0x40000000

    or-long v2, v2, v39

    :cond_3f
    :goto_33
    const/4 v8, 0x1

    xor-int/2addr v0, v8

    goto :goto_34

    :cond_40
    move-object/from16 v52, v8

    const/4 v0, 0x0

    :goto_34
    and-long v39, v2, v27

    const-wide/16 v45, 0x0

    cmp-long v8, v39, v45

    if-eqz v8, :cond_45

    if-eqz v47, :cond_41

    move/from16 v39, v0

    goto :goto_35

    :cond_41
    const/16 v39, 0x0

    :goto_35
    if-eqz v8, :cond_43

    if-eqz v39, :cond_42

    const-wide/32 v45, 0x20000000

    goto :goto_36

    :cond_42
    const-wide/32 v45, 0x10000000

    :goto_36
    or-long v2, v2, v45

    :cond_43
    if-eqz v39, :cond_44

    goto :goto_37

    :cond_44
    const/16 v8, 0x8

    goto :goto_38

    :cond_45
    :goto_37
    const/4 v8, 0x0

    :goto_38
    and-long v39, v2, v25

    const-wide/16 v45, 0x0

    cmp-long v39, v39, v45

    if-eqz v39, :cond_4a

    if-eqz v59, :cond_46

    move/from16 v40, v0

    goto :goto_39

    :cond_46
    const/16 v40, 0x0

    :goto_39
    if-eqz v39, :cond_48

    if-eqz v40, :cond_47

    const-wide v45, 0x2000000000L

    goto :goto_3a

    :cond_47
    const-wide v45, 0x1000000000L

    :goto_3a
    or-long v2, v2, v45

    :cond_48
    if-eqz v40, :cond_49

    goto :goto_3b

    :cond_49
    move/from16 v39, v0

    const/16 v0, 0x8

    goto :goto_3c

    :cond_4a
    :goto_3b
    move/from16 v39, v0

    const/4 v0, 0x0

    :goto_3c
    and-long v45, v2, v23

    const-wide/16 v55, 0x0

    cmp-long v40, v45, v55

    if-eqz v40, :cond_4f

    if-eqz v15, :cond_4b

    move/from16 v15, v39

    goto :goto_3d

    :cond_4b
    const/4 v15, 0x0

    :goto_3d
    if-eqz v40, :cond_4d

    if-eqz v15, :cond_4c

    const-wide/32 v45, 0x800000

    goto :goto_3e

    :cond_4c
    const-wide/32 v45, 0x400000

    :goto_3e
    or-long v2, v2, v45

    :cond_4d
    if-eqz v15, :cond_4e

    goto :goto_3f

    :cond_4e
    const/16 v15, 0x8

    goto :goto_40

    :cond_4f
    :goto_3f
    const/4 v15, 0x0

    :goto_40
    and-long v45, v2, v19

    const-wide/16 v55, 0x0

    cmp-long v40, v45, v55

    if-eqz v40, :cond_54

    if-eqz v12, :cond_50

    goto :goto_41

    :cond_50
    const/16 v39, 0x0

    :goto_41
    if-eqz v40, :cond_52

    if-eqz v39, :cond_51

    const-wide/32 v45, 0x8000000

    goto :goto_42

    :cond_51
    const-wide/32 v45, 0x4000000

    :goto_42
    or-long v2, v2, v45

    :cond_52
    if-eqz v39, :cond_53

    const/16 v58, 0x0

    goto :goto_43

    :cond_53
    const/16 v58, 0x8

    :goto_43
    move/from16 v12, v58

    goto :goto_44

    :cond_54
    const/4 v12, 0x0

    :goto_44
    and-long v19, v2, v19

    const-wide/16 v39, 0x0

    cmp-long v19, v19, v39

    if-eqz v19, :cond_55

    move/from16 v19, v13

    .line 65
    iget-object v13, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_45

    :cond_55
    move/from16 v19, v13

    :goto_45
    and-long v12, v2, v21

    cmp-long v12, v12, v39

    if-eqz v12, :cond_56

    .line 66
    iget-object v12, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_56
    and-long v12, v2, v23

    cmp-long v9, v12, v39

    if-eqz v9, :cond_57

    .line 67
    iget-object v9, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_57
    const-wide/32 v12, 0x8000

    and-long/2addr v12, v2

    cmp-long v9, v12, v39

    if-eqz v9, :cond_58

    .line 68
    iget-object v9, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    iget-object v12, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback2:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v9, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    iget-object v12, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback1:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v9, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget-object v12, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl$1;

    const-string/jumbo v13, "view"

    .line 71
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "attrChange"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v9}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object v9

    new-instance v13, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;

    invoke-direct {v13, v12}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;-><init>(Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_58
    const-wide/32 v12, 0xc001

    and-long/2addr v12, v2

    const-wide/16 v20, 0x0

    cmp-long v9, v12, v20

    if-eqz v9, :cond_59

    .line 73
    iget-object v9, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_59
    and-long v12, v2, v17

    cmp-long v7, v12, v20

    if-eqz v7, :cond_5a

    .line 74
    iget-object v7, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v7, v6}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 75
    iget-object v6, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5a
    and-long v6, v2, v35

    cmp-long v4, v6, v20

    if-eqz v4, :cond_5b

    .line 76
    iget-object v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v4, v10}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    :cond_5b
    and-long v6, v2, v25

    cmp-long v4, v6, v20

    if-eqz v4, :cond_5c

    .line 77
    iget-object v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5c
    and-long v6, v2, v41

    cmp-long v0, v6, v20

    if-eqz v0, :cond_5d

    .line 78
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5d
    and-long v6, v2, v27

    cmp-long v0, v6, v20

    if-eqz v0, :cond_5e

    .line 79
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5e
    and-long v6, v2, v31

    cmp-long v0, v6, v20

    if-eqz v0, :cond_5f

    .line 80
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5f
    and-long v6, v2, v29

    cmp-long v0, v6, v20

    if-eqz v0, :cond_64

    .line 81
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    const-string v4, "imageView"

    .line 82
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v5, :cond_60

    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_60
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v7, v6, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_61

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_46

    :cond_61
    move-object v6, v4

    :goto_46
    if-eqz v6, :cond_63

    .line 85
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v4, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    if-lez v7, :cond_62

    .line 87
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_47

    :cond_62
    const/4 v8, 0x1

    move-object v6, v4

    .line 88
    :goto_47
    new-instance v7, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v9, 0x2

    new-array v10, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v6, v10, v9

    aput-object v4, v10, v8

    invoke-direct {v7, v10}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 91
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 92
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_48

    :cond_63
    move-object v8, v4

    :goto_48
    if-nez v8, :cond_64

    .line 93
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 95
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    aput-object v7, v6, v5

    .line 96
    invoke-direct {v4, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_64
    const-wide/32 v4, 0xc002

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_65

    .line 97
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 98
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v13, v19

    .line 99
    invoke-virtual {v0, v13}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    :cond_65
    and-long v4, v2, v43

    cmp-long v0, v4, v6

    if-eqz v0, :cond_66

    .line 100
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 101
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "newValue"

    move-object/from16 v7, v52

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_66

    .line 103
    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    :cond_66
    const-wide/32 v4, 0xc000

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_67

    .line 104
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 105
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMaximumRange()I

    move-result v4

    move/from16 v14, v62

    if-eq v4, v14, :cond_67

    .line 107
    invoke-virtual {v0, v14}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMaximumRange(I)V

    :cond_67
    and-long v4, v2, v37

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_68

    .line 108
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v4, "view"

    .line 109
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMinimumRange()I

    move-result v4

    move/from16 v9, v61

    if-eq v4, v9, :cond_68

    .line 111
    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMinimumRange(I)V

    :cond_68
    and-long v2, v2, v33

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_69

    .line 112
    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "view"

    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, v60

    .line 114
    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadFrame(I)V

    :cond_69
    return-void

    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 5
    :pswitch_1
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_1
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 8
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 9
    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 13
    :pswitch_3
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_3

    .line 14
    monitor-enter p0

    .line 15
    :try_start_3
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 16
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 17
    :pswitch_4
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_4

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 20
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 21
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_5

    .line 22
    monitor-enter p0

    .line 23
    :try_start_5
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 24
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    move v0, v1

    :goto_5
    return v0

    .line 25
    :pswitch_6
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_6

    .line 26
    monitor-enter p0

    .line 27
    :try_start_6
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 28
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    move v0, v1

    :goto_6
    return v0

    .line 29
    :pswitch_7
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_7

    .line 30
    monitor-enter p0

    .line 31
    :try_start_7
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 32
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    move v0, v1

    :goto_7
    return v0

    .line 33
    :pswitch_8
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_8

    .line 34
    monitor-enter p0

    .line 35
    :try_start_8
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 36
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    move v0, v1

    :goto_8
    return v0

    .line 37
    :pswitch_9
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_9

    .line 38
    monitor-enter p0

    .line 39
    :try_start_9
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 40
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    move v0, v1

    :goto_9
    return v0

    .line 41
    :pswitch_a
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_a

    .line 42
    monitor-enter p0

    .line 43
    :try_start_a
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 44
    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    move v0, v1

    :goto_a
    return v0

    .line 45
    :pswitch_b
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_b

    .line 46
    monitor-enter p0

    .line 47
    :try_start_b
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 48
    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    move v0, v1

    :goto_b
    return v0

    .line 49
    :pswitch_c
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_c

    .line 50
    monitor-enter p0

    .line 51
    :try_start_c
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0

    goto :goto_c

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_c
    move v0, v1

    :goto_c
    return v0

    .line 53
    :pswitch_d
    check-cast p2, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_d

    .line 54
    monitor-enter p0

    .line 55
    :try_start_d
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0

    goto :goto_d

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    :cond_d
    move v0, v1

    :goto_d
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
