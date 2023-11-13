.class public final Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SphericalGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;
.implements Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Renderer"
.end annotation


# instance fields
.field public final deviceOrientationMatrix:[F

.field public deviceRoll:F

.field public final projectionMatrix:[F

.field public final scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

.field public final tempMatrix:[F

.field public final synthetic this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field public touchPitch:F

.field public final touchPitchMatrix:[F

.field public final touchYawMatrix:[F

.field public final viewMatrix:[F

.field public final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    new-array v0, p1, [F

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    new-array v0, p1, [F

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    new-array v1, p1, [F

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    new-array v2, p1, [F

    .line 6
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    new-array v3, p1, [F

    .line 7
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    const/4 p1, 0x0

    .line 10
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 11
    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 12
    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 3
    iget-object v8, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 6
    iget-object v0, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    iget-object v3, v1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4000

    .line 7
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const/4 v9, 0x2

    if-eqz v1, :cond_7

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 13
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 14
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v1, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    .line 17
    iget-object v4, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 18
    monitor-enter v4

    .line 19
    :try_start_1
    invoke-virtual {v4, v1, v2, v7}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 20
    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 21
    iget-object v4, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    iget-object v10, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 22
    iget-object v11, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v11, v5, v6}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    if-nez v5, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    iget-object v11, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 24
    aget v6, v5, v7

    .line 25
    aget v12, v5, v8

    neg-float v12, v12

    .line 26
    aget v5, v5, v9

    neg-float v5, v5

    .line 27
    invoke-static {v6, v12, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_2

    float-to-double v14, v13

    .line 28
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v14, v14

    const/4 v15, 0x0

    div-float/2addr v6, v13

    div-float v16, v12, v13

    div-float/2addr v5, v13

    move v12, v15

    move v13, v14

    move v14, v6

    move/from16 v15, v16

    move/from16 v16, v5

    .line 29
    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-static {v11, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 31
    :goto_0
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    if-nez v5, :cond_3

    .line 32
    iget-object v5, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v6, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 33
    iput-boolean v8, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    :cond_3
    const/4 v11, 0x0

    .line 34
    iget-object v12, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    const/4 v13, 0x0

    iget-object v14, v4, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 35
    :cond_4
    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/spherical/Projection;

    if-eqz v1, :cond_7

    .line 36
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 38
    :cond_5
    iget v4, v1, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v4, v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    .line 39
    new-instance v4, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object v5, v1, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 40
    iget-object v5, v5, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    aget-object v5, v5, v7

    .line 41
    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v4, v2, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 42
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 43
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    aget-object v1, v1, v7

    .line 44
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    array-length v4, v2

    div-int/lit8 v4, v4, 0x3

    .line 45
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    .line 46
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    .line 47
    iget v1, v1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 48
    monitor-exit v4

    throw v1

    .line 49
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 50
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    iget v2, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    .line 51
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    if-nez v3, :cond_8

    goto :goto_4

    .line 52
    :cond_8
    iget v4, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    if-ne v4, v8, :cond_9

    .line 53
    sget-object v4, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    goto :goto_3

    :cond_9
    if-ne v4, v9, :cond_a

    .line 54
    sget-object v4, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    goto :goto_3

    .line 55
    :cond_a
    sget-object v4, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 56
    :goto_3
    iget v5, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    invoke-static {v5, v8, v7, v4, v7}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 57
    iget v4, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    invoke-static {v4, v8, v7, v0, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 58
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 59
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    iget v0, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 61
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 62
    iget v8, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0xc

    .line 63
    iget-object v13, v3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 64
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 65
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 66
    iget v14, v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    const/16 v18, 0x8

    .line 67
    iget-object v0, v3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v19, v0

    .line 68
    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 69
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 70
    iget v0, v3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    .line 71
    iget v1, v3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    .line 72
    invoke-static {v0, v7, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 73
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    .line 74
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final declared-synchronized onOrientationChange([FF)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v3, p2, p3

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v3, p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-wide p1, 0x4046800000000000L    # 45.0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    float-to-double v0, v3

    div-double/2addr p1, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    move v2, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public final declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updatePitchMatrix()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v1

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, p0

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method
