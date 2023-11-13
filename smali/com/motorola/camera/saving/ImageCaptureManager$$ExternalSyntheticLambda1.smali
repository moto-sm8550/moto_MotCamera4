.class public final synthetic Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MotionPhotoVideoListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/CameraKpi;

.field public final synthetic f$1:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/CameraKpi;

    iput-object p2, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iput-object p3, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-void
.end method


# virtual methods
.method public final onVideoReady()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/CameraKpi;

    iget-object v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 1
    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 2
    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "ImageCaptureManager"

    const-string v2, "Missing motion photos video file"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {p0, v1}, Lcom/motorola/camera/jms/BgJobManager;->processBackgroundJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    return-void
.end method
