.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$updateFreeBytes$$inlined$runOnWorker$1;
.super Ljava/lang/Object;
.source "MediaVolumesHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaVolumesHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder$runOnWorker$1\n+ 2 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,386:1\n147#2:387\n148#2,2:389\n150#2:392\n1849#3:388\n1850#3:391\n*S KotlinDebug\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n*L\n147#1:388\n147#1:391\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v0, "mediaVolumes"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/storage/MediaVolume;

    .line 4
    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    const-string v1, "mediaVolume"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$updateFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)V

    goto :goto_0

    :cond_0
    return-void
.end method
