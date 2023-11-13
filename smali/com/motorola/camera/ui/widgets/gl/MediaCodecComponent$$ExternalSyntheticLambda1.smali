.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->setupAudioLensSwitch()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->stopAudioLensSwitch()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    :goto_0
    return-void
.end method
