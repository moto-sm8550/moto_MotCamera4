.class public final Lcom/motorola/camera/ui/uicomponents/LevelerComponent$3;
.super Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;
.source "LevelerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/LevelerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$3;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$3;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->updateCaptureCount()V

    return-void
.end method
