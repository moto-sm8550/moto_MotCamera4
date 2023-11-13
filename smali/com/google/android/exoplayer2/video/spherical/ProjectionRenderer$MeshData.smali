.class public final Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeshData"
.end annotation


# instance fields
.field public final drawMode:I

.field public final textureBuffer:Ljava/nio/FloatBuffer;

.field public final vertexBuffer:Ljava/nio/FloatBuffer;

.field public final vertexCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 6
    iget p1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    :goto_0
    return-void
.end method
