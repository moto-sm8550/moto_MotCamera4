.class public final synthetic Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/VideoFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/VideoFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/VideoFormat;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/VideoFormat;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    .line 1
    invoke-static {p1, p0}, Lcom/motorola/camera/VideoHelper;->isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 2
    invoke-static {p1, p0}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
