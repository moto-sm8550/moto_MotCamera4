.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$unregisterClient$$inlined$runOnWorker$1;
.super Ljava/lang/Object;
.source "MediaVolumesHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaVolumesHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder$runOnWorker$1\n+ 2 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n*L\n1#1,386:1\n100#2,2:387\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    return-void
.end method
