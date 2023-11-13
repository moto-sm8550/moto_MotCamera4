.class public final synthetic Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

.field public final synthetic f$1:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    iput-object p2, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    sget v0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->$r8$clinit:I

    const-string v0, "$viewPager"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->isCurrentItemLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    if-eqz p0, :cond_2

    .line 5
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    :goto_0
    return-void
.end method
