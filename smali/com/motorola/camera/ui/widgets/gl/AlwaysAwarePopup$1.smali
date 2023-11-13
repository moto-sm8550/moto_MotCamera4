.class public final Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;
.super Ljava/lang/Object;
.source "AlwaysAwarePopup.java"

# interfaces
.implements Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v0, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 6
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mNoActionTaken:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v1}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getFieldsCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_1
    return-void
.end method
