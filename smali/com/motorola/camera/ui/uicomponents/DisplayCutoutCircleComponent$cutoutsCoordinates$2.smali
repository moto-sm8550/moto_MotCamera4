.class public final Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$cutoutsCoordinates$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DisplayCutoutCircleComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Landroid/graphics/PointF;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$cutoutsCoordinates$2;->this$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$cutoutsCoordinates$2;->this$0:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getCutoutsCoordinates()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
