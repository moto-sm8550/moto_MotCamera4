.class public final Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic $activity:Landroid/app/Activity;

.field public final synthetic this$0:Landroidx/window/layout/SidecarCompat;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    iput-object p2, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 2
    iget-object v0, p1, Landroidx/window/layout/SidecarCompat;->extensionCallback:Landroidx/window/layout/SidecarCompat$DistinctElementCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->$activity:Landroid/app/Activity;

    .line 4
    invoke-virtual {p1, p0}, Landroidx/window/layout/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/window/layout/SidecarCompat$DistinctElementCallback;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
