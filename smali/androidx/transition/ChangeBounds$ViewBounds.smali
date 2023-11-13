.class public final Landroidx/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewBounds"
.end annotation


# instance fields
.field public mBottom:I

.field public mBottomRightCalls:I

.field public mLeft:I

.field public mRight:I

.field public mTop:I

.field public mTopLeftCalls:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final setLeftTopRightBottom()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    sget-object v5, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 4
    iput v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    return-void
.end method
