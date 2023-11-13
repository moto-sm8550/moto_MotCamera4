.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlBarComponent.kt"

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
.field public final synthetic $justify:I

.field public final synthetic $layout:Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

.field public final synthetic $paddingEnd:I

.field public final synthetic $paddingStart:I

.field public final synthetic $recycler:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;IILcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingStart:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingEnd:I

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$layout:Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$justify:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingStart:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$paddingEnd:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$layout:Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;->$justify:I

    invoke-virtual {v0, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
