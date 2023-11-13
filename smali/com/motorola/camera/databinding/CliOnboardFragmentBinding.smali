.class public abstract Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CliOnboardFragmentBinding.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final buttonNavigation:Landroid/widget/Button;

.field public final viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/Button;Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->buttonNavigation:Landroid/widget/Button;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    return-void
.end method
