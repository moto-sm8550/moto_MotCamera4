.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;
.super Ljava/lang/Object;
.source "MediaVolumesHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaVolumesHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder$runOnWorker$1\n+ 2 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n*L\n1#1,386:1\n281#2,2:387\n*E\n"
.end annotation


# instance fields
.field public final synthetic $mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$refreshMediaVolumes$$inlined$runOnWorker$2;->$mediaVolume$inlined:Lcom/motorola/camera/storage/MediaVolume;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$updateFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)V

    return-void
.end method
