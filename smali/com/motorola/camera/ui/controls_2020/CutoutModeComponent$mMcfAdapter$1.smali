.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "CutoutModeComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    const v0, 0x7f11056a

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    packed-switch p1, :pswitch_data_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f110561

    .line 5
    invoke-virtual {p0, p1, v3, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 6
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f110570

    .line 7
    invoke-virtual {p0, p1, v3, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f110560

    .line 9
    invoke-virtual {p0, p1, v3, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 10
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f110567

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 12
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f110569

    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 14
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f11056d

    .line 15
    invoke-virtual {p0, p1, v3, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 16
    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const p1, 0x7f110564

    .line 17
    invoke-virtual {p0, p1, v3, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 18
    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    .line 19
    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_1

    .line 20
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
