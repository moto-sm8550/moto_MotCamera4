.class public final synthetic Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 5

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/android/exoplayer2/Timeline$Window;->CREATOR:Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/core/util/DebugUtils;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 3
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/Timeline;->fromBundleListRetriever(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 4
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Period;->CREATOR:Lcom/google/android/exoplayer2/Timeline$Period$$ExternalSyntheticLambda0;

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/DebugUtils;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/Timeline;->fromBundleListRetriever(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 8
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$RemotableTimeline;

    if-nez p1, :cond_1

    .line 9
    move-object p1, p0

    check-cast p1, Lcom/google/common/collect/RegularImmutableList;

    .line 10
    iget p1, p1, Lcom/google/common/collect/RegularImmutableList;->size:I

    .line 11
    new-array v3, p1, [I

    :goto_0
    if-ge v1, p1, :cond_0

    .line 12
    aput v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 13
    :cond_1
    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/exoplayer2/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    return-object v2

    .line 14
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 18
    sget-object v4, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    .line 19
    sget-object v4, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 20
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    if-nez p0, :cond_2

    .line 24
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;)V

    goto :goto_2

    .line 25
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    move-object p0, p1

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
