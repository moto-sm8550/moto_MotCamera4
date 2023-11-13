.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field public hashCode:I

.field public final trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 3
    array-length p0, p1

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    .line 4
    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    return p0
.end method
