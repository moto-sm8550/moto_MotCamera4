.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "ZoomToggleTexture.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;
    }
.end annotation


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mClickable:Z

.field public mCurrentValueX:F

.field public final mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mLoaded:Z

.field public mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

.field public mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

.field public mPortraitCloseUpZoomValue:F

.field public mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

.field public mPortraitOriginalZoomValue:F

.field public mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

.field public mPortraitStandardZoomValue:F

.field public mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

.field public mPortraitWideZoomValue:F

.field public final mRtl:Z

.field public mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

.field public mTeleZoomValue:F

.field public final mToggleTextureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

.field public mUwZoomValue:F

.field public mValueX:Ljava/lang/String;

.field public mVideoRecording:Z

.field public mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

.field public mWideZoomValue:F

.field public final mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    .line 7
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListeners:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    .line 11
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    .line 13
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 14
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    return-void
.end method

.method public static access$1000(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v2, 0x7f110584

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f110585

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f110582

    goto :goto_1

    :cond_1
    const v3, 0x7f110583

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-ne p1, v1, :cond_2

    const p1, 0x7f0801b4

    goto :goto_2

    :cond_2
    const p1, 0x7f0801b5

    .line 8
    :goto_2
    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 9
    invoke-static {v4, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    .line 11
    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    .line 12
    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    .line 13
    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f110581

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;)V

    const-string/jumbo p0, "text"

    .line 15
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

    .line 17
    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    const p1, 0x7f11053e

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->INSTANCE:Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;

    .line 19
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object v0, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

    .line 21
    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    .line 22
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 23
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_4

    .line 24
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoTypeMode()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f11050a

    goto :goto_3

    :cond_4
    const p0, 0x7f1104f2

    .line 25
    :goto_3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 26
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 p0, 0x0

    .line 27
    iput-boolean p0, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mLandscapeAlignCenter:Z

    .line 28
    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final cancelTogglesTouchEvent()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cancelTouch()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr p0, v1

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v5, v0, v4

    div-float/2addr v2, v4

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V

    neg-float p0, p0

    .line 4
    invoke-virtual {v1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->inset(FF)V

    return-object v1
.end method

.method public final getValueX(FZ)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1
    div-int/lit8 v0, p1, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    :cond_0
    rem-int/lit8 p1, v0, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    .line 7
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_PATTERN_NO_X:Ljava/lang/String;

    new-array p1, v3, [Ljava/lang/Object;

    .line 8
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object p2

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 9
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initZoomValue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v1, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getZoomMinX(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    .line 8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v0, :cond_0

    .line 12
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v0, :cond_1

    .line 15
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_2

    .line 18
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_3

    .line 21
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_4

    .line 24
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_5

    .line 27
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p0

    .line 28
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mInitialValueStr:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final loadTexture()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    .line 5
    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v2, 0x3ecccccd

    .line 7
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 8
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideZoomValue:F

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleZoomValue:F

    const/4 v3, 0x0

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_0

    .line 12
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p0, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    .line 13
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUwZoomValue:F

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_1

    .line 16
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p0, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    .line 17
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p0, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    .line 21
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_6

    .line 23
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalZoomValue:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3

    .line 24
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideZoomValue:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_4

    .line 29
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardZoomValue:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_5

    .line 32
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    .line 35
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_5
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpZoomValue:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_6

    .line 37
    sget-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v1, :cond_7

    .line 42
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    goto :goto_0

    .line 43
    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v0, :cond_9

    .line 45
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v0, :cond_a

    .line 47
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 48
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v0, :cond_b

    .line 49
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_c

    .line 51
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 52
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_d

    .line 53
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 54
    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_e

    .line 55
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 56
    :cond_e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_f

    .line 57
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    .line 58
    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 59
    monitor-enter v0

    .line 60
    monitor-exit v0

    .line 61
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    if-eqz p3, :cond_0

    .line 2
    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz p4, :cond_1

    const/high16 p4, -0x40800000    # -1.0f

    mul-float/2addr p3, p4

    .line 4
    :cond_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p4, p2, p3, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_6
    return-void
.end method

.method public final onLongPress$1(ZLandroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz p2, :cond_0

    .line 2
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p2, :cond_2

    .line 6
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p2, :cond_3

    .line 8
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-nez p2, :cond_4

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p2, :cond_5

    .line 10
    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz p2, :cond_5

    :cond_4
    return-void

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTogglesTouchEvent()V

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    iput-boolean p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    .line 15
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 16
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 17
    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_9

    .line 19
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const/4 p2, 0x1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    .line 20
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 21
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_DOWN:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_8
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mDragging:Z

    if-nez v1, :cond_9

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTouch()V

    .line 24
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(ZJ)V

    .line 26
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 27
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_TOGGLE_TOUCH_UP:Lcom/motorola/camera/Notifier$TYPE;

    const-wide/16 v0, 0x6a4

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotifyDelayed(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;J)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getIconSelectedRes()I

    move-result p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onPreDraw([F[F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    :cond_2
    return-void
.end method

.method public final onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setZoomValueX(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 4
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v3, :cond_6

    .line 10
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v3, :cond_8

    .line 11
    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v3, v4

    goto :goto_0

    :cond_8
    move v3, v1

    .line 12
    :goto_0
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    if-nez v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_a

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz p1, :cond_9

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->handleTouchUp()V

    goto :goto_1

    .line 15
    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    move v1, v4

    :cond_c
    return v1
.end method

.method public final onVideoStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mVideoRecording:Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V

    return-void
.end method

.method public final onZoomChanged(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;FZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getValueX(FZ)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    sget-object p2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onToggleSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v1, 0x3ecccccd

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    const v1, 0x3e99999a

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, p1

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 13
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_8
    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setPreRotation(FF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 p0, 0x2

    .line 3
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 4
    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_0
    return-void
.end method

.method public final setupPortraitToggleTexture(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;Ljava/lang/Float;)Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/Float;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getIconRes()I

    move-result p0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mUnselectedIconRes:Ljava/lang/Integer;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onSelected(Z)V

    return-object v0
.end method

.method public final unloadTexture()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_7
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mLoaded:Z

    return-void
.end method

.method public final updateToggleState(Lcom/motorola/camera/ui/widgets/gl/ZoomModel;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v3, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v4, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v5, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v6, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v7, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v8, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    sget-object v9, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 2
    iput-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->initZoomValue()V

    .line 4
    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v10

    .line 5
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v11, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 6
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    const v11, 0x3e99999a

    if-eqz v10, :cond_0

    .line 7
    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v10

    .line 8
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    invoke-virtual {v12, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 9
    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 10
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 11
    :cond_0
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v10, :cond_1

    .line 12
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomEnabled(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v10

    .line 13
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    invoke-virtual {v12, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->isZoomLimited(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 15
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    .line 16
    :cond_1
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    const v11, 0x7f0801cb

    invoke-virtual {v0, v10, v1, v7, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 17
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    const v11, 0x7f0801eb

    invoke-virtual {v0, v10, v1, v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 18
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    const v11, 0x7f0801ed

    invoke-virtual {v0, v10, v1, v5, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 19
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    const v11, 0x7f0801ef

    invoke-virtual {v0, v10, v1, v4, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 20
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    const v11, 0x7f0801f1

    invoke-virtual {v0, v10, v1, v3, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setupImageZoomToggle(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/ui/widgets/gl/ZoomModel;Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;I)V

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontKnifeSwitchAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v1, :cond_7

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackDepthKnifeSwitchCase()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 24
    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->isTraditionProModeZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 26
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 27
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    goto :goto_2

    .line 28
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 29
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v12, 0x7f080282

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 30
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 32
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    const v12, 0x7f080280

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 33
    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v1, :cond_8

    .line 34
    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 35
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    const v12, 0x7f08027e

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    goto :goto_2

    .line 36
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    const v12, 0x7f08027d

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    .line 38
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v1, :cond_8

    .line 39
    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    .line 40
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    const v12, 0x7f08027c

    invoke-virtual {v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    :cond_8
    :goto_2
    const/4 v1, 0x3

    .line 41
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_9
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_a
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_b
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_c
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 47
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_d
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 49
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_e
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 51
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_f
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 53
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 55
    iput v11, v14, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_3

    .line 56
    :cond_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/high16 v14, 0x42200000    # 40.0f

    const/4 v15, 0x0

    if-nez v13, :cond_12

    .line 57
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    :cond_12
    if-ne v13, v11, :cond_13

    .line 58
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 59
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v10, 0x4

    .line 60
    iput v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_4

    .line 61
    :cond_13
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 62
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    mul-float/2addr v10, v14

    .line 63
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v11, v13

    mul-float/2addr v11, v10

    invoke-virtual {v14, v11, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 64
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v10, v14

    .line 65
    iput v10, v11, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/high16 v10, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {v11, v10, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 67
    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz v10, :cond_14

    .line 68
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 69
    iput v1, v10, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    const/4 v10, 0x1

    sub-int/2addr v13, v10

    .line 70
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    const/4 v11, 0x2

    .line 71
    iput v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    goto :goto_4

    :cond_14
    const/4 v10, 0x1

    const/4 v11, 0x2

    .line 72
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 73
    iput v11, v14, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    sub-int/2addr v13, v10

    .line 74
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    .line 75
    iput v1, v10, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSlopPosition:I

    .line 76
    :goto_4
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mDensity:F

    const/high16 v10, 0x42200000    # 40.0f

    mul-float/2addr v1, v10

    .line 77
    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mRtl:Z

    if-eqz v10, :cond_15

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v1, v10

    .line 78
    :cond_15
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mZoomModel:Lcom/motorola/camera/ui/widgets/gl/ZoomModel;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveZoomEntityMap()Ljava/util/Map;

    move-result-object v10

    .line 79
    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    .line 80
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v13, 0x0

    if-eqz v7, :cond_16

    .line 81
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$4;

    neg-float v14, v11

    invoke-virtual {v7, v14, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    move v15, v12

    .line 82
    :cond_16
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 83
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$3;

    int-to-float v8, v15

    mul-float/2addr v8, v1

    sub-float/2addr v8, v11

    invoke-virtual {v7, v8, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v15, v15, 0x1

    .line 84
    :cond_17
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 85
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    int-to-float v8, v15

    mul-float/2addr v8, v1

    sub-float/2addr v8, v11

    invoke-virtual {v7, v8, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v15, v15, 0x1

    .line 86
    :cond_18
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 87
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$2;

    int-to-float v7, v15

    mul-float/2addr v7, v1

    sub-float/2addr v7, v11

    invoke-virtual {v2, v7, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v15, v15, 0x1

    .line 88
    :cond_19
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 89
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    int-to-float v6, v15

    mul-float/2addr v6, v1

    sub-float/2addr v6, v11

    invoke-virtual {v2, v6, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v15, v15, 0x1

    .line 90
    :cond_1a
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 91
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    int-to-float v5, v15

    mul-float/2addr v5, v1

    sub-float/2addr v5, v11

    invoke-virtual {v2, v5, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v15, v15, 0x1

    .line 92
    :cond_1b
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 93
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    int-to-float v4, v15

    mul-float/2addr v4, v1

    sub-float/2addr v4, v11

    invoke-virtual {v2, v4, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v15, v15, 0x1

    .line 94
    :cond_1c
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 95
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    int-to-float v2, v15

    mul-float/2addr v2, v1

    sub-float/2addr v2, v11

    invoke-virtual {v0, v2, v13, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1d
    return-void
.end method

.method public final updateToggleTexVisibleType$enumunboxing$(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mToggleTextureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    move v1, p1

    goto :goto_1

    .line 3
    :cond_1
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mToggleType:I

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateVisibility$enumunboxing$(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
