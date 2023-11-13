.class public final Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PaginatedNavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

.field public final synthetic val$mViewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;->this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;->val$mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;->this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;->val$mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    sget p2, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->$r8$clinit:I

    .line 2
    invoke-virtual {p1, p0}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->checkButtonVisibility(I)V

    return-void
.end method
