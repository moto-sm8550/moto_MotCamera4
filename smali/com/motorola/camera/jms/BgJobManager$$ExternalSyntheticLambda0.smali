.class public final synthetic Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_0

    :cond_1
    const-string v2, "BgJobManager"

    const-string v3, "Found a pending job, but it has no mMediaData"

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lcom/motorola/camera/jms/BgJobManager;->notifyQueueEmpty()V

    :cond_3
    return-void

    .line 10
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    const-string v2, "$intent"

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    const-string v3, "com.motorola.camera3.EXTRA_CONTENT"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 13
    iget-object v4, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZ)V

    .line 14
    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_c

    if-eq v3, v2, :cond_c

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 16
    iget-object v2, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    if-eq v3, v2, :cond_8

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_6

    const/4 v1, 0x4

    if-eq v3, v1, :cond_5

    .line 17
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;

    iget-object v2, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v2}, Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    goto :goto_2

    .line 18
    :cond_5
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object v2, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v2}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    :goto_2
    move-object v2, v0

    move/from16 p0, v3

    goto/16 :goto_3

    :cond_6
    const-string v2, "GLOBAL_UUID"

    const-wide/16 v4, 0x0

    .line 19
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v9, "THUMB_PATH"

    .line 20
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "URI"

    .line 21
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    const-string v13, "FILE_NAME"

    .line 22
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "FILE_PATH"

    .line 23
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "THUMB_WIDTH"

    move/from16 p0, v3

    .line 24
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v18, v0

    const-string v0, "THUMB_HEIGHT"

    move/from16 v19, v3

    .line 25
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v20, v0

    const-string v0, "ORIENTATION"

    move/from16 v21, v3

    .line 26
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "DATE_TAKEN"

    move/from16 v23, v3

    move-object/from16 v22, v4

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    const-wide/16 v3, 0x0

    .line 27
    invoke-virtual {v1, v6, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v24, v6

    const-string v6, "DATE_MODIFIED"

    .line 28
    invoke-virtual {v1, v6, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    invoke-virtual {v1, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v2, v16

    move-object/from16 v7, v17

    .line 33
    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v22

    .line 34
    invoke-virtual {v1, v15, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v19

    .line 35
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v2, v20

    move/from16 v5, v21

    .line 36
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move/from16 v2, v23

    .line 37
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    .line 38
    invoke-virtual {v1, v0, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 39
    invoke-virtual {v1, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;

    move-object/from16 v2, v18

    iget-object v3, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;-><init>(Landroid/os/Bundle;Lcom/motorola/camera/cli/CliEventListener;)V

    move-object v1, v0

    goto :goto_3

    :cond_7
    move-object v2, v0

    move/from16 p0, v3

    const-string v0, "com.motorola.camera3.EXTRA_COUNTDOWN_TIMER"

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 42
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object v3, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;-><init>(ILcom/motorola/camera/cli/CliEventListener;)V

    goto :goto_3

    :cond_8
    move-object v2, v0

    move/from16 p0, v3

    .line 43
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;

    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    invoke-direct {v1, v0}, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    .line 44
    :goto_3
    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v3, "from(context)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->getPresentationContainer()Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "presentationContainer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v4, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-nez v4, :cond_9

    .line 47
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->presentationLayoutRes()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    .line 48
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewInflated()V

    .line 49
    :cond_9
    iget v0, v2, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    .line 50
    iput v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    .line 51
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onOrientationChanged()V

    .line 52
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;

    move/from16 v3, p0

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$showContent$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPresentation;I)V

    .line 53
    iput-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    .line 54
    iget-object v0, v2, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v0, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_b

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 57
    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->getPresentationContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 59
    :cond_b
    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewAdded()V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
