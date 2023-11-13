.class public final Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    return-void

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    check-cast p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;

    .line 13
    iget p1, p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackInfo;->groupIndex:I

    .line 14
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 p0, 0x0

    .line 15
    throw p0
.end method
