.class public final Lcom/google/android/exoplayer2/video/spherical/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;,
        Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
    }
.end annotation


# instance fields
.field public final leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

.field public final rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    return-void
.end method
