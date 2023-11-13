.class public final Lcom/google/android/flexbox/FlexLine;
.super Ljava/lang/Object;
.source "FlexLine.java"


# instance fields
.field public mAnyItemsHaveFlexGrow:Z

.field public mAnyItemsHaveFlexShrink:Z

.field public mCrossSize:I

.field public mDividerLengthInMainSize:I

.field public mFirstIndex:I

.field public mGoneItemCount:I

.field public mIndicesAlignSelfStretch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mItemCount:I

.field public mLastIndex:I

.field public mMainSize:I

.field public mMaxBaseline:I

.field public mSumCrossSizeBefore:I

.field public mTotalFlexGrow:F

.field public mTotalFlexShrink:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    return-void
.end method
