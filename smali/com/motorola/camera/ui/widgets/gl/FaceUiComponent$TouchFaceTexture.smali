.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;
.source "FaceUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchFaceTexture"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    return-void
.end method


# virtual methods
.method public final cancelTouch()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->access$800(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 4
    iget-object p4, p4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 5
    iget p4, p4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p4, p3

    const-string/jumbo p3, "x"

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 7
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    iget p3, p3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, p5

    sub-float/2addr p2, p3

    neg-float p2, p2

    const-string/jumbo p3, "y"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 9
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    .line 10
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->FACE_MOVE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const/16 v1, 0xc11

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    .line 6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 8
    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 10
    invoke-static {v2, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->scissor(IIII)V

    .line 11
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->disable(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onTouch(Landroid/view/MotionEvent;)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
