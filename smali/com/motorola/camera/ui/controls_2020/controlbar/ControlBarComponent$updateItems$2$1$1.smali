.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;
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
.field public final synthetic $disableAnimationsAfterUpdate:Z

.field public final synthetic $newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic $recycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/List;ZLandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
            "Ljava/lang/Object;",
            ">;>;Z",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->$newList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->$disableAnimationsAfterUpdate:Z

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->$newList:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda8;

    const/4 v4, 0x3

    invoke-direct {v2, v1, v4}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->$disableAnimationsAfterUpdate:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 8
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
