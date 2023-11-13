.class public final Lcom/motorola/patternlibrary/api/GalleryView$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "GalleryView.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/GalleryView;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/GalleryView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 2
    iget p2, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    .line 3
    iget-object p1, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 5
    iget-object p3, p3, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p3

    sub-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    if-le p2, p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 8
    iget-object p2, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 10
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x1

    .line 12
    iput p2, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 2
    iget v1, v0, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    .line 3
    iget-object v0, v0, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 5
    iget-object v2, v2, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 8
    iget-object v1, v0, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 10
    iget-object v2, v2, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 12
    iput v1, v0, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView$3;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 14
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mListener:Lcom/motorola/patternlibrary/api/GalleryView$PageListener;

    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 15
    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    .line 16
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 18
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 19
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->getBadgeIndicator()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 20
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
