.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/SaveImageService;

.field public final synthetic f$1:Lcom/motorola/camera/background/provider/BgCaptureRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/background/provider/BgCaptureRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;->f$1:Lcom/motorola/camera/background/provider/BgCaptureRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;->f$0:Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda18;->f$1:Lcom/motorola/camera/background/provider/BgCaptureRecord;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "record"

    .line 2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/motorola/camera/background/provider/BgCaptureRecordDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao;->insert(Lcom/motorola/camera/background/provider/BgCaptureRecord;)J

    :cond_0
    return-void
.end method
