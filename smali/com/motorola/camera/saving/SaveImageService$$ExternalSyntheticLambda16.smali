.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-wide p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$1:J

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$2:Ljava/io/File;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-wide v2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$1:J

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$2:Ljava/io/File;

    iget-object v4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$3:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;->f$4:Ljava/lang/Integer;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    if-eqz v1, :cond_0

    move-object v4, v5

    move v5, v6

    move v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao;->update(JLjava/lang/String;II)I

    :cond_0
    return-void
.end method
