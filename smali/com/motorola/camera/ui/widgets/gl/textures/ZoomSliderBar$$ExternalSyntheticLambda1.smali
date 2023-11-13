.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Landroid/util/Range;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;Z[Landroid/util/Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;->f$2:[Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda1;->f$2:[Landroid/util/Range;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    .line 2
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    .line 3
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    xor-int/lit8 p0, v1, 0x1

    .line 4
    iput-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    .line 5
    monitor-enter v0

    const/4 p0, 0x0

    .line 6
    :try_start_0
    iput-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
