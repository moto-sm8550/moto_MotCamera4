.class public final Lcom/motorola/camera/ui/uicomponents/LevelerComponent$1;
.super Ljava/lang/Object;
.source "LevelerComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


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

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$1;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$1;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 2
    iget-boolean p2, p1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$1;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    neg-float p1, p1

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    :cond_0
    return-void
.end method
