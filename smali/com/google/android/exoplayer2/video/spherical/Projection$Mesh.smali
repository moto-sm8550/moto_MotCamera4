.class public final Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh"
.end annotation


# instance fields
.field public final subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    return-void
.end method
