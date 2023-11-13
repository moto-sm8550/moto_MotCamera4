.class public final Lcom/motorola/camera/cli/content/presentation/CliEmptyPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "CliEmptyPresentation.kt"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged()V
    .locals 0

    return-void
.end method

.method public final onViewAdded()V
    .locals 0

    return-void
.end method

.method public final onViewInflated()V
    .locals 0

    return-void
.end method

.method public final onViewRemoved()V
    .locals 0

    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d003d

    return p0
.end method
