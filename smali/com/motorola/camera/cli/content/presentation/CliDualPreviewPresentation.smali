.class public final Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "CliDualPreviewPresentation.kt"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public blackFrame:Landroid/view/View;

.field public secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public final onViewInflated()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0363

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    .line 3
    const-class v0, Lcom/motorola/camera/cli/DualPreviewManager;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v2, Lcom/motorola/camera/cli/DualPreviewManager;->sharedContextProviderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/SharedContextProvider;->getSharedContext()Lcom/motorola/camera/ui/widgets/gl/SharedContext;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    monitor-exit v0

    if-nez v2, :cond_2

    .line 5
    sget-object v0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get SharedContext instance"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz v0, :cond_3

    .line 8
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryContextFactory;-><init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lcom/motorola/camera/ui/widgets/gl/SharedContext;)V

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 9
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;-><init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lcom/motorola/camera/ui/widgets/gl/SharedContext;)V

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->secondaryRenderer:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;

    .line 10
    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 13
    new-instance v2, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_5

    const v1, 0x7f0a0098

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->blackFrame:Landroid/view/View;

    return-void

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    throw p0
.end method

.method public final onViewRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->secondarySurfaceView:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0039

    return p0
.end method
