.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$1:J

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-wide v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$1:J

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao;->deleteById(J)I

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/utility/FileUtility;->delete(Ljava/io/File;)I

    :goto_0
    return-void
.end method
