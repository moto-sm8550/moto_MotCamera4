.class public abstract Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "iGlComponent.java"


# static fields
.field public static final NO_COLLISION_POLICY:Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;


# instance fields
.field public mCollisionPolicy:Landroidx/transition/PathMotion;

.field public mHandler:Landroid/os/Handler;

.field public mOrientation:I

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public volatile mTexInitState:I

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->NO_COLLISION_POLICY:Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 6
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->NO_COLLISION_POLICY:Lcom/motorola/camera/ui/widgets/gl/collision/NoCollisionPolicy;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mCollisionPolicy:Landroidx/transition/PathMotion;

    return-void
.end method


# virtual methods
.method public final declared-synchronized doLoadTextures()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->loadTextures()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    :cond_0
    return-void
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    .line 1
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final isTexInitialized()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTexInitState:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadTextures()Z
    .locals 0

    instance-of p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    return p0
.end method

.method public abstract onDraw([F[F[F)V
.end method

.method public onDrawFbo([F[F[F)V
    .locals 0

    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onPreDraw([F[F[F)Z
.end method

.method public onRotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    return-void
.end method

.method public abstract onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public unloadTextures()V
    .locals 0

    return-void
.end method
