.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;
.super Ljava/lang/Object;
.source "VideoRecordingIndicationComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateCounterRunnable"
.end annotation


# instance fields
.field public final elapsedTimeTextView:Landroid/widget/TextView;

.field public final lengthTextView:Landroid/widget/TextView;

.field public final recordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public final timelapseGroup:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/RecordingTime;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->recordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->elapsedTimeTextView:Landroid/widget/TextView;

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->timelapseGroup:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->recordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    .line 2
    iget-wide v4, v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    sub-long/2addr v1, v4

    .line 3
    iget-wide v3, v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 4
    div-long v5, v1, v3

    const/4 v7, 0x0

    .line 5
    invoke-static {v7, v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v9

    const-string v10, "lengthTextView.context"

    if-eqz v9, :cond_1

    .line 7
    sget-object v9, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;

    .line 8
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 9
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v9, Ljava/lang/Float;

    const/16 v11, 0x1e

    int-to-float v11, v11

    const-string/jumbo v12, "timelapse"

    .line 11
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float/2addr v11, v9

    float-to-int v9, v11

    int-to-long v11, v9

    .line 12
    div-long v11, v1, v11

    .line 13
    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    .line 14
    div-long v13, v11, v3

    invoke-static {v7, v13, v14}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v13, v11, v12}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->elapsedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v8, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->timelapseGroup:Landroid/view/View;

    .line 21
    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->elapsedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "elapsedTimeTextView.context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;->access$getTimelapseSpeed()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3c

    int-to-long v11, v11

    .line 22
    rem-long v13, v5, v11

    long-to-int v13, v13

    .line 23
    div-long v14, v5, v11

    rem-long/2addr v14, v11

    long-to-int v14, v14

    const/16 v15, 0xe10

    int-to-long v3, v15

    .line 24
    div-long/2addr v5, v3

    rem-long/2addr v5, v11

    long-to-int v3, v5

    .line 25
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0004

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    .line 26
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x0

    aput-object v12, v11, v15

    .line 27
    invoke-virtual {v4, v5, v14, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.resources.getQua\u2026merMinutes, timerMinutes)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0f0005

    new-array v12, v6, [Ljava/lang/Object;

    .line 29
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v15

    .line 30
    invoke-virtual {v5, v11, v13, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "context.resources.getQua\u2026merSeconds, timerSeconds)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-lez v3, :cond_0

    .line 31
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0003

    new-array v7, v6, [Ljava/lang/Object;

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v7, v15

    .line 33
    invoke-virtual {v13, v14, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "context.resources.getQua\u2026, timerHours, timerHours)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f110499

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v15

    aput-object v4, v13, v6

    aput-object v5, v13, v11

    aput-object v10, v13, v12

    invoke-virtual {v7, v9, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{\n                val ho\u2026ond, speed)\n            }"

    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f110498

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v15

    aput-object v5, v9, v6

    aput-object v10, v9, v11

    invoke-virtual {v3, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{\n                contex\u2026ond, speed)\n            }"

    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :goto_0
    invoke-virtual {v8, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 39
    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;

    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v4, v1, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    const-wide/16 v4, 0x3e8

    .line 44
    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    const-wide/16 v4, 0xa

    add-long/2addr v1, v4

    .line 45
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->lengthTextView:Landroid/widget/TextView;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 47
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$UpdateCounterRunnable;->elapsedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method
