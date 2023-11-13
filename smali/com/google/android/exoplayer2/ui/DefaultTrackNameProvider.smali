.class public final Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source "DefaultTrackNameProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackNameProvider;


# instance fields
.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method
