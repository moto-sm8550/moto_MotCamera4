.class public final Lcom/motorola/camera/FeaturesUtil;
.super Ljava/lang/Object;
.source "FeaturesUtil.java"


# static fields
.field public static final DISABLE_CACHE_PREVIEW:Z

.field public static final ENABLE_FRAME_LOG:Z

.field public static final SUPPORT_ACCELERATE:Z

.field public static final SUPPORT_AI:Z

.field public static final SUPPORT_BG_SERVICE:Z

.field public static final SUPPORT_CLI:Z

.field public static final SUPPORT_DUAL_CAPTURE:Z

.field public static final SUPPORT_FACE_BEAUTY:Z

.field public static final SUPPORT_MCF:Z

.field public static final SUPPORT_NIGHT:Z

.field public static final SUPPORT_REPROC:Z

.field public static final SUPPORT_SCENE_OPT_IN:Z

.field public static final SUPPORT_SEGMENTATION_MODE:Z

.field public static final SUPPORT_SELECTIVE_COLOR:Z

.field public static final SUPPORT_SUPER_ZOOM:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 2
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->APP_ACCELERATE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    .line 3
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_REPROC:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    .line 4
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_MCF:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MCF:Z

    .line 5
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_AI_MODELS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    .line 6
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    .line 7
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    .line 8
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_PHOTO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 9
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_DUAL_CAPTURE:Z

    .line 10
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_NIGHT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_PORTRAIT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_NIGHT:Z

    .line 12
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FACE_BEAUTY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY:Z

    .line 13
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_SCENE_OPT_IN:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SCENE_OPT_IN:Z

    .line 14
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SELECTIVE_COLOR:Z

    .line 15
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SEGMENTATION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SEGMENTATION_MODE:Z

    .line 16
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 17
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_MCX:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    sput-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SUPER_ZOOM:Z

    const-string v0, "CACHE_PREVIEW"

    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->DISABLE_CACHE_PREVIEW:Z

    const-string v0, "ENABLE_FRAME_LOG"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    return-void
.end method
