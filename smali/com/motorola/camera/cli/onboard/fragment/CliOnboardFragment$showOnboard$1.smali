.class public final Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;
.super Ljava/lang/Object;
.source "CliOnboardFragment.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->showOnboard(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $buttonNavigation:Landroid/widget/Button;

.field public final synthetic $viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

.field public final synthetic this$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;Landroid/widget/Button;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->$viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    iput-object p2, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->$buttonNavigation:Landroid/widget/Button;

    iput-object p3, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->this$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IF)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->$viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    invoke-virtual {p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->isCurrentItemLast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->$buttonNavigation:Landroid/widget/Button;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->this$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    const v0, 0x7f1101c1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->$buttonNavigation:Landroid/widget/Button;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;->this$0:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    const v0, 0x7f1101d0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
