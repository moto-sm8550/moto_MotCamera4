.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$panelTriggeredListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VstabIhcComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$panelTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->controlPanelShowing:Z

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->couldShow()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 7
    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
