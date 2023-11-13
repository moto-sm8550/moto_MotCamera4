.class public final Lcom/motorola/camera/cli/content/CliContentManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "CliContentManager.kt"

# interfaces
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
.implements Lcom/motorola/camera/cli/CliEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/content/CliContentManager$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCliContentManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CliContentManager.kt\ncom/motorola/camera/cli/content/CliContentManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n13808#2,14:275\n1#3:289\n*S KotlinDebug\n*F\n+ 1 CliContentManager.kt\ncom/motorola/camera/cli/content/CliContentManager\n*L\n100#1:275,14\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animationSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

.field public cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

.field public final cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/motorola/camera/Controller;

.field public final dualPreviewListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

.field public final fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final isCliDisplay:Z

.field public final mEnvListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

.field public previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

.field public showContentAllowed:Z

.field public timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/Controller;ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fsmContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    .line 3
    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    iput-object p4, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed:Z

    .line 5
    new-instance p3, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/cli/content/CliContentManager$Status;-><init>(FZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 6
    new-instance p3, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    .line 7
    new-instance p3, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    .line 8
    new-instance p3, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    .line 9
    new-instance p3, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {p3, p1, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;-><init>(Landroid/content/Context;Lcom/motorola/camera/cli/CliEventListener;)V

    iput-object p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 10
    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    .line 11
    new-instance p1, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    .line 12
    sget-object p1, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final changeAnimationContentStatus()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 3
    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    .line 4
    iget v3, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    iget v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 7
    :cond_1
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final closeCameraCartoonContent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 3
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final closeContent(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->isFaceDetectionAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    .line 7
    iget-object v2, v2, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    const-string v3, "controller.layoutManager"

    .line 8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 9
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait$enumunboxing$(I)Z

    move-result v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final finishContentActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;->close()V

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z

    .line 10
    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final finishPresentationHolder()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    .line 3
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishContentActivity()V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    const-string v1, "context"

    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/cli/content/CliContentViewModel$actionReceiver$1;

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v1, v0, v3

    const-string v1, "StateKeyCollectionBuilde\u2026                 .build()"

    .line 11
    invoke-static {v0, p0, p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final onRotationChanged(II)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.motorola.camera3.EXTRA_ORIENTATION"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public final showContent(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera3.EXTRA_CONTENT"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishContentActivity()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 11
    iget-boolean v2, v2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 14
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    throw p0

    .line 17
    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "changeEvent.context"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 20
    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cartoonFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    .line 10
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isContentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 13
    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->previewFaceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/CliContentManager;->closeContent(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit p1

    throw p0
.end method
