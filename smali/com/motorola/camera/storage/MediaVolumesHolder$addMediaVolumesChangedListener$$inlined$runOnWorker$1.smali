.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;
.super Ljava/lang/Object;
.source "MediaVolumesHolder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/storage/MediaVolumesHolder;->addMediaVolumesChangedListener(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaVolumesHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder$runOnWorker$1\n+ 2 MediaVolumesHolder.kt\ncom/motorola/camera/storage/MediaVolumesHolder\n*L\n1#1,386:1\n127#2,5:387\n*E\n"
.end annotation


# instance fields
.field public final synthetic $listener$inlined:Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;->$listener$inlined:Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumesChangedListeners:Landroid/util/ArraySet;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;->$listener$inlined:Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
