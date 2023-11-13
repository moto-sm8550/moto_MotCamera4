.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/motorola/patternlibrary/api/DropDownGalleryView;


# direct methods
.method public synthetic constructor <init>(ZLcom/motorola/patternlibrary/api/DropDownGalleryView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->collapseDropDownGalleryView()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 3
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_1
    :goto_0
    return-void
.end method
