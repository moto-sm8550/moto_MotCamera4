.class public final Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UIGuidelinesComponent.kt"

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
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$showFilterModeComponent$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Collection;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 3
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getFilterToggleBarOffset()F

    move-result v1

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 5
    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v0

    .line 6
    invoke-static {p0, v1}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->access$setAboveToggleBarComponentsGuideLinePosition(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;F)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
