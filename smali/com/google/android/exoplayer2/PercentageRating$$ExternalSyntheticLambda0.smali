.class public final synthetic Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;->INSTANCE$2:Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 5

    iget p0, p0, Lcom/google/android/exoplayer2/PercentageRating$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    move v2, v0

    .line 2
    :cond_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float p1, p0, v0

    if-nez p1, :cond_1

    .line 4
    new-instance p0, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>(F)V

    move-object p0, p1

    :goto_0
    return-object p0

    .line 5
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x2

    .line 7
    invoke-static {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    .line 8
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v0, p0, v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
