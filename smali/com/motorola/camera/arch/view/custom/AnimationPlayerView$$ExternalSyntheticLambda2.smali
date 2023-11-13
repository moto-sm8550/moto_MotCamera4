.class public final synthetic Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaPlayer;

.field public final synthetic f$1:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer;Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaPlayer;

    iget-object p0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    sget-object v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "$player"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
