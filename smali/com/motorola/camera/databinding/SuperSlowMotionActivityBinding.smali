.class public abstract Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SuperSlowMotionActivityBinding.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

.field public final superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

.field public final superSlowMotionPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

.field public final superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionProcessingCancelButton:Landroid/widget/Button;

.field public final superSlowMotionProcessingLabel:Landroid/widget/TextView;

.field public final superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

.field public final superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

.field public final superSlowMotionSaveButton:Landroid/widget/Button;

.field public final superSlowMotionSkipButton:Landroid/widget/Button;

.field public final superSlowMotionToast:Landroid/widget/TextView;

.field public final superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/ImageButton;Lcom/google/android/exoplayer2/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 4

    move-object v0, p0

    const/16 v1, 0xe

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    move-object v1, p4

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    move-object v1, p5

    .line 4
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    .line 5
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    move-object/from16 v1, p12

    .line 11
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSkipButton:Landroid/widget/Button;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    return-void
.end method


# virtual methods
.method public abstract setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
.end method
