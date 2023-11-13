.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;
.super Ljava/lang/Object;
.source "ControlBarAdapter.kt"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;-><init>(Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener<",
        "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 4
    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    if-eqz v0, :cond_7

    .line 5
    iget-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->locked:Z

    if-nez v0, :cond_7

    .line 6
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 7
    iget-boolean v1, v0, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz v1, :cond_7

    .line 8
    iget-boolean v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->multiValuesEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "ControlBarAdapter"

    const-string p1, "Item has no allowed values"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 13
    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    add-int/lit8 v2, v2, 0x1

    .line 14
    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    .line 15
    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 16
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 18
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 19
    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 20
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 23
    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 24
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, v3, v1

    .line 28
    :goto_1
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 29
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 30
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationSupported()Z

    move-result v1

    .line 33
    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 34
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "PREVIOUS_VALUE"

    const-string v5, "SETTING"

    if-nez v2, :cond_4

    .line 35
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 36
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 38
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 40
    iget-object v6, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 41
    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VALUE"

    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v6, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 45
    sget-object v7, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 46
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v7, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 48
    :cond_5
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 49
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 50
    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 51
    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v6

    invoke-static {v2, v0, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 52
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 53
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 54
    sget-object v6, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq v2, v6, :cond_6

    .line 55
    sget-object v6, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne v2, v6, :cond_7

    .line 56
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 59
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VIDEO_STABILIZATION"

    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const-string v3, "MODE"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 64
    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateHDR10SwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 65
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 66
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 67
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    .line 68
    invoke-direct {p1, v0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 69
    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    :goto_2
    return-void
.end method
