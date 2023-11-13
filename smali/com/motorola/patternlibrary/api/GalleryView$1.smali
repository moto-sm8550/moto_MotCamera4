.class public final Lcom/motorola/patternlibrary/api/GalleryView$1;
.super Ljava/lang/Object;
.source "GalleryView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/GalleryView;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/GalleryView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView$1;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView$1;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 2
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    return-void
.end method
