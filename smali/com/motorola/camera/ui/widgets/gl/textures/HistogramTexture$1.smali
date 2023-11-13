.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;
.super Ljava/lang/Object;
.source "HistogramTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    .line 4
    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v2

    sub-float/2addr v0, v7

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v3

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v3

    .line 6
    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;I)V

    const-wide/16 v5, 0x12c

    add-float v8, v7, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
