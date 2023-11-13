.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "ZoomSliderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragApplyValue(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$ZoomSliderCallback;

    .line 3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$2;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->access$200(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V

    :goto_0
    return-void
.end method

.method public final onDragEnd(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$ZoomSliderCallback;

    .line 3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$2;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->access$300(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    return-void
.end method

.method public final onDragStart()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$ZoomSliderCallback;

    .line 3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$2;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
