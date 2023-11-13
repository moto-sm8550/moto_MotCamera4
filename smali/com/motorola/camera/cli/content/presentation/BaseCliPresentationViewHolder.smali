.class public abstract Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.super Ljava/lang/Object;
.source "BaseCliPresentationViewHolder.kt"


# instance fields
.field public final eventListener:Lcom/motorola/camera/cli/CliEventListener;

.field public orientation:I

.field public removeSelf:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    return-void
.end method


# virtual methods
.method public final acquireCliWakeLock()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public final getCliOrientation()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    add-int/lit16 p0, p0, 0xb4

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onViewAdded()V
.end method

.method public abstract onViewInflated()V
.end method

.method public abstract onViewRemoved()V
.end method

.method public abstract presentationLayoutRes()I
.end method
