.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
