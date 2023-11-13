.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;
.super Ljava/lang/Object;
.source "CinemagraphMaskActivity.java"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProcessingComplete(Lcom/motorola/camera/CameraData;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->getSessionSeqId()J

    move-result-wide v3

    .line 11
    new-instance v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    long-to-int v6, v3

    sget-object v7, Lcom/motorola/camera/ShotType;->CINEMAGRAPH:Lcom/motorola/camera/ShotType;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v1, v8, v7}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/settings/CameraType;Z)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 14
    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v7, "SEQ_ID"

    invoke-virtual {p2, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "CAPTURE_TRIGGER"

    .line 15
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    .line 16
    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v6, -0x1

    const-string v7, "KEY_CODE"

    .line 17
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iput-object p2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string p2, "ORIENTATION"

    .line 19
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    .line 20
    iget-object p2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v0, "ANALYTICS_SEQID"

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    new-instance p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {p2, v5}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 22
    invoke-virtual {v2, p2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 23
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v4

    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    .line 27
    invoke-static {p0, p1, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->start(Lcom/motorola/camera/ActivityStarter;Lcom/motorola/camera/CameraData;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onProcessingFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
