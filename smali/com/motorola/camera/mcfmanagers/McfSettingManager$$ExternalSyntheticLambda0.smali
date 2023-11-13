.class public final synthetic Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTorchControl(Z)V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 5
    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes$EnumUnboxingLocalUtility;->_getJsonValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdrMode"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_1
    return-void
.end method
