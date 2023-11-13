.class public final Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;
.super Ljava/lang/Object;
.source "CinemagraphEngine.java"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createVideo(Landroid/os/ParcelFileDescriptor;IIZLcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mBufferSize:I

.field public final mDebugPrefix:Ljava/lang/String;

.field public mFrameIndex:I

.field public mLooping:Z

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

.field public final synthetic val$frameCount:I

.field public final synthetic val$isBounce:Z

.field public final synthetic val$videoCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;IIIZLcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iput p4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$frameCount:I

    iput-boolean p5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$isBounce:Z

    iput-object p6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$videoCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 2
    iput p4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    .line 3
    iput-boolean p4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mLooping:Z

    .line 4
    invoke-static {p2, p3}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->access$000(II)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mBufferSize:I

    .line 5
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 6
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 7
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->access$100(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mDebugPrefix:Ljava/lang/String;

    return-void
.end method
