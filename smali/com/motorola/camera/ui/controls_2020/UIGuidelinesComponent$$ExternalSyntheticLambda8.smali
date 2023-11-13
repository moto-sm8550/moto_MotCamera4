.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/constraintlayout/widget/Guideline;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;->f$1:Landroidx/constraintlayout/widget/Guideline;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;->f$0:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;->f$1:Landroidx/constraintlayout/widget/Guideline;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda8;->f$2:I

    const-string v2, "$guideline"

    .line 1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v1, p0, v0}, Landroidx/room/RoomMasterTable;->animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_0
    return-void
.end method
