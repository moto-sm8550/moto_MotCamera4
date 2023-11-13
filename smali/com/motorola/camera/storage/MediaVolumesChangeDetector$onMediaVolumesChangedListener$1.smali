.class public final Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;
.super Ljava/lang/Object;
.source "MediaVolumesChangeDetector.kt"

# interfaces
.implements Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/storage/MediaVolumesChangeDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/storage/MediaVolumesChangeDetector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaVolumesChangeDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;->this$0:Lcom/motorola/camera/storage/MediaVolumesChangeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaVolumesChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;->this$0:Lcom/motorola/camera/storage/MediaVolumesChangeDetector;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->processMediaVolumes()V

    return-void
.end method
