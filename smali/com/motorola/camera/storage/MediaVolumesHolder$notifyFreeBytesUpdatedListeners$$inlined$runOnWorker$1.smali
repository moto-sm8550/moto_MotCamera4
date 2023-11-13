.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$notifyFreeBytesUpdatedListeners$$inlined$runOnWorker$1;
.super Ljava/lang/Object;
.source "MediaVolumesHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaVolumesHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder$runOnWorker$1\n+ 2 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,386:1\n358#2:387\n359#2,10:389\n369#2:400\n1849#3:388\n1850#3:399\n*S KotlinDebug\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n*L\n358#1:388\n358#1:399\n*E\n"
.end annotation


# instance fields
.field public final synthetic $mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$notifyFreeBytesUpdatedListeners$$inlined$runOnWorker$1;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->freeBytesUpdatedListeners:Landroid/util/ArraySet;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/storage/OnFreeBytesUpdatedListener;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".onFreeBytesUpdated("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$notifyFreeBytesUpdatedListeners$$inlined$runOnWorker$1;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$notifyFreeBytesUpdatedListeners$$inlined$runOnWorker$1;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    invoke-interface {v1, v2}, Lcom/motorola/camera/storage/OnFreeBytesUpdatedListener;->onFreeBytesUpdated(Lcom/motorola/camera/storage/MediaVolume;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    throw p0

    :cond_0
    return-void
.end method
