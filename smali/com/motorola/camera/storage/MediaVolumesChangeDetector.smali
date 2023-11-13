.class public abstract Lcom/motorola/camera/storage/MediaVolumesChangeDetector;
.super Ljava/lang/Object;
.source "MediaVolumesChangeDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaVolumesChangeDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaVolumesChangeDetector.kt\ncom/motorola/camera/storage/MediaVolumesChangeDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1849#2,2:44\n1849#2,2:46\n*S KotlinDebug\n*F\n+ 1 MediaVolumesChangeDetector.kt\ncom/motorola/camera/storage/MediaVolumesChangeDetector\n*L\n34#1:44,2\n35#1:46,2\n*E\n"
.end annotation


# instance fields
.field public final onMediaVolumesChangedListener:Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

.field public pastMediaVolumes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/storage/MediaVolume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->pastMediaVolumes:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;-><init>(Lcom/motorola/camera/storage/MediaVolumesChangeDetector;)V

    iput-object v0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->onMediaVolumesChangedListener:Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    return-void
.end method


# virtual methods
.method public final processMediaVolumes()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->pastMediaVolumes:Ljava/util/Set;

    invoke-static {v1, v0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    .line 4
    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/StorageChangedEventDetector;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/StorageChangedEventDetector;->sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->pastMediaVolumes:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    .line 8
    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/StorageChangedEventDetector;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/StorageChangedEventDetector;->sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V

    goto :goto_1

    .line 10
    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->pastMediaVolumes:Ljava/util/Set;

    return-void
.end method
