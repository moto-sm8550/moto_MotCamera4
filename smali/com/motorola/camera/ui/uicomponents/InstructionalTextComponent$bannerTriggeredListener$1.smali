.class public final Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$bannerTriggeredListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InstructionalTextComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
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
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$bannerTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$bannerTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFixedMacroMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$bannerTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    new-instance v1, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda4;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$bannerTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
