.class public Lcom/motorola/tools/myui/privacypermissiondialog/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "MaxHeightScrollView.java"


# instance fields
.field public maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    iput v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/MaxHeightScrollView;->maxHeight:I

    .line 3
    sget-object v1, Lcom/motorola/tools/myui/R$styleable;->MaxHeightScrollView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    iget p2, p0, Lcom/motorola/tools/myui/privacypermissiondialog/MaxHeightScrollView;->maxHeight:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/motorola/tools/myui/privacypermissiondialog/MaxHeightScrollView;->maxHeight:I

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/MaxHeightScrollView;->maxHeight:I

    if-lez v0, :cond_0

    const/high16 v1, -0x80000000

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
