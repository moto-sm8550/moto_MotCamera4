.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$controlPanelVisibilityListener$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VstabIhcLuxToastComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$controlPanelVisibilityListener$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent$controlPanelVisibilityListener$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->controlPanelShowing:Z

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
