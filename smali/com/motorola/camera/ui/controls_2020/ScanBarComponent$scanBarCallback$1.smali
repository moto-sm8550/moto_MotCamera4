.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;
.super Ljava/lang/Object;
.source "ScanBarComponent.kt"

# interfaces
.implements Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v3, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 9
    iget-boolean v3, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->isOtherComponentVisible:Z

    if-nez v3, :cond_8

    if-eqz v0, :cond_4

    goto :goto_5

    .line 10
    :cond_4
    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 11
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->AUTO_LAUNCH_DATA:Ljava/util/List;

    .line 12
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 14
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->executePrimaryAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 18
    sget-wide v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    .line 19
    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_4

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 22
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsVisibility(I)V

    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsScale(F)V

    .line 24
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_7

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 27
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->triggerScanBarVisibility(Z)V

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 31
    iget-object p0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->GoogleMatter:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 32
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logAlwaysAwareObject(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    .line 4
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_2
    return-void
.end method
